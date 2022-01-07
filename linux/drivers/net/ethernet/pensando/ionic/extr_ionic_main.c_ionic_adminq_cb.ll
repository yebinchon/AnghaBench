; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pensando/ionic/extr_ionic_main.c_ionic_adminq_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ionic_queue = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.ionic_desc_info = type { i32 }
%struct.ionic_cq_info = type { %struct.ionic_admin_comp* }
%struct.ionic_admin_comp = type { i32 }
%struct.ionic_admin_ctx = type { i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"comp admin queue command:\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"comp \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ionic_queue*, %struct.ionic_desc_info*, %struct.ionic_cq_info*, i8*)* @ionic_adminq_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ionic_adminq_cb(%struct.ionic_queue* %0, %struct.ionic_desc_info* %1, %struct.ionic_cq_info* %2, i8* %3) #0 {
  %5 = alloca %struct.ionic_queue*, align 8
  %6 = alloca %struct.ionic_desc_info*, align 8
  %7 = alloca %struct.ionic_cq_info*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.ionic_admin_ctx*, align 8
  %10 = alloca %struct.ionic_admin_comp*, align 8
  %11 = alloca %struct.device*, align 8
  store %struct.ionic_queue* %0, %struct.ionic_queue** %5, align 8
  store %struct.ionic_desc_info* %1, %struct.ionic_desc_info** %6, align 8
  store %struct.ionic_cq_info* %2, %struct.ionic_cq_info** %7, align 8
  store i8* %3, i8** %8, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = bitcast i8* %12 to %struct.ionic_admin_ctx*
  store %struct.ionic_admin_ctx* %13, %struct.ionic_admin_ctx** %9, align 8
  %14 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %9, align 8
  %15 = icmp ne %struct.ionic_admin_ctx* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %4
  br label %40

17:                                               ; preds = %4
  %18 = load %struct.ionic_cq_info*, %struct.ionic_cq_info** %7, align 8
  %19 = getelementptr inbounds %struct.ionic_cq_info, %struct.ionic_cq_info* %18, i32 0, i32 0
  %20 = load %struct.ionic_admin_comp*, %struct.ionic_admin_comp** %19, align 8
  store %struct.ionic_admin_comp* %20, %struct.ionic_admin_comp** %10, align 8
  %21 = load %struct.ionic_queue*, %struct.ionic_queue** %5, align 8
  %22 = getelementptr inbounds %struct.ionic_queue, %struct.ionic_queue* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.device* %26, %struct.device** %11, align 8
  %27 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %9, align 8
  %28 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %27, i32 0, i32 1
  %29 = load %struct.ionic_admin_comp*, %struct.ionic_admin_comp** %10, align 8
  %30 = call i32 @memcpy(i32* %28, %struct.ionic_admin_comp* %29, i32 4)
  %31 = load %struct.device*, %struct.device** %11, align 8
  %32 = call i32 @dev_dbg(%struct.device* %31, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %34 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %9, align 8
  %35 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %34, i32 0, i32 1
  %36 = call i32 @dynamic_hex_dump(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %33, i32 16, i32 1, i32* %35, i32 4, i32 1)
  %37 = load %struct.ionic_admin_ctx*, %struct.ionic_admin_ctx** %9, align 8
  %38 = getelementptr inbounds %struct.ionic_admin_ctx, %struct.ionic_admin_ctx* %37, i32 0, i32 0
  %39 = call i32 @complete_all(i32* %38)
  br label %40

40:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.ionic_admin_comp*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @dynamic_hex_dump(i8*, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @complete_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
