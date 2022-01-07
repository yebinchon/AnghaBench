; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_post_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_post_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_lif = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ionic_admin_ctx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Posting of %s (%d) failed: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@DEVCMD_TIMEOUT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ionic_adminq_post_wait(%struct.ionic_lif* %0, %struct.ionic_admin_ctx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ionic_lif*, align 8
  %5 = alloca %struct.ionic_admin_ctx*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  store %struct.ionic_lif* %0, %struct.ionic_lif** %4, align 8
  store %struct.ionic_admin_ctx* %1, %struct.ionic_admin_ctx** %5, align 8
  %10 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %11 = getelementptr inbounds %struct.ionic_lif, %struct.ionic_lif* %10, i32 0, i32 0
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %14 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %15 = call i32 @ionic_adminq_post(%struct.ionic_lif* %13, %struct.ionic_admin_ctx* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %2
  %19 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %20 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i8* @ionic_opcode_to_str(i32 %23)
  store i8* %24, i8** %8, align 8
  %25 = load %struct.net_device*, %struct.net_device** %6, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %28 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @netdev_err(%struct.net_device* %25, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %26, i32 %31, i32 %32)
  %34 = load i32, i32* %9, align 4
  store i32 %34, i32* %3, align 4
  br label %49

35:                                               ; preds = %2
  %36 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %37 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %36, i32 0, i32 0
  %38 = load i32, i32* @HZ, align 4
  %39 = load i64, i64* @DEVCMD_TIMEOUT, align 8
  %40 = trunc i64 %39 to i32
  %41 = mul nsw i32 %38, %40
  %42 = call i64 @wait_for_completion_timeout(i32* %37, i32 %41)
  store i64 %42, i64* %7, align 8
  %43 = load %struct.ionic_lif*, %struct.ionic_lif** %4, align 8
  %44 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %5, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @ionic_adminq_check_err(%struct.ionic_lif* %43, %struct.ionic_admin_ctx* %44, i32 %47)
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %35, %18
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @ionic_adminq_post(%struct.ionic_lif*, %struct.ionic_admin_ctx*) #1

declare dso_local i8* @ionic_opcode_to_str(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, i8*, i32, i32) #1

declare dso_local i64 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @ionic_adminq_check_err(%struct.ionic_lif*, %struct.ionic_admin_ctx*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
