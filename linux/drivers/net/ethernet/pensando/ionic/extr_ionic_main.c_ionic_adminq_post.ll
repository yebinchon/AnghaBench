; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_post.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { i32, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { %struct.ionic_queue }
%struct.ionic_queue = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ionic_admin_ctx = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"post admin queue command:\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"cmd \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@ionic_adminq_cb = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ionic_lif*, %struct.ionic_admin_ctx*)* @ionic_adminq_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ionic_adminq_post(%struct.ionic_lif* %0, %struct.ionic_admin_ctx* %1) #0 {
  %3 = alloca %struct.ionic_lif*, align 8
  %4 = alloca %struct.ionic_admin_ctx*, align 8
  %5 = alloca %struct.ionic_queue*, align 8
  %6 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %3, align 8
  store %struct.ionic_admin_ctx* %1, %struct.ionic_admin_ctx** %4, align 8
  %7 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %8 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %7, i32 0, i32 2
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  store %struct.ionic_queue* %10, %struct.ionic_queue** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = call i32 (...) @in_interrupt()
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %14 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %13, i32 0, i32 0
  %15 = call i32 @spin_lock(i32* %14)
  %16 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %17 = call i32 @ionic_q_has_space(%struct.ionic_queue* %16, i32 1)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOSPC, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %6, align 4
  br label %44

22:                                               ; preds = %2
  %23 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %24 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %28, i32 0, i32 0
  %30 = call i32 @memcpy(i32 %27, i32* %29, i32 4)
  %31 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %32 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %37 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %4, align 8
  %38 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %37, i32 0, i32 0
  %39 = call i32 @dynamic_hex_dump(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 16, i32 1, i32* %38, i32 4, i32 1)
  %40 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %41 = load i32, i32* @ionic_adminq_cb, align 4
  %42 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %4, align 8
  %43 = call i32 @ionic_q_post(%struct.ionic_queue* %40, i32 1, i32 %41, %struct.ionic_admin_ctx* %42)
  br label %44

44:                                               ; preds = %22, %19
  %45 = load %struct.ionic_lif*, %struct.ionic_lif** %3, align 8
  %46 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @in_interrupt(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ionic_q_has_space(%struct.ionic_queue*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dynamic_hex_dump(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @ionic_q_post(%struct.ionic_queue*, i32, i32, %struct.ionic_admin_ctx*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
