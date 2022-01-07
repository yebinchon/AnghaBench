; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_fill_load_req_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_fill_load_req_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_load_req_params = type { i32, i32, i32, i32 }
%struct.qed_drv_load_params = type { i32, i32, i32, i64 }

@QED_DRV_ROLE_KDUMP = common dso_local global i32 0, align 4
@QED_DRV_ROLE_OS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_load_req_params*, %struct.qed_drv_load_params*)* @qed_fill_load_req_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_fill_load_req_params(%struct.qed_load_req_params* %0, %struct.qed_drv_load_params* %1) #0 {
  %3 = alloca %struct.qed_load_req_params*, align 8
  %4 = alloca %struct.qed_drv_load_params*, align 8
  store %struct.qed_load_req_params* %0, %struct.qed_load_req_params** %3, align 8
  store %struct.qed_drv_load_params* %1, %struct.qed_drv_load_params** %4, align 8
  %5 = load %struct.qed_load_req_params*, %struct.qed_load_req_params** %3, align 8
  %6 = call i32 @memset(%struct.qed_load_req_params* %5, i32 0, i32 16)
  %7 = load %struct.qed_drv_load_params*, %struct.qed_drv_load_params** %4, align 8
  %8 = getelementptr inbounds %struct.qed_drv_load_params, %struct.qed_drv_load_params* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @QED_DRV_ROLE_KDUMP, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @QED_DRV_ROLE_OS, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  %17 = load %struct.qed_load_req_params*, %struct.qed_load_req_params** %3, align 8
  %18 = getelementptr inbounds %struct.qed_load_req_params, %struct.qed_load_req_params* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.qed_drv_load_params*, %struct.qed_drv_load_params** %4, align 8
  %20 = getelementptr inbounds %struct.qed_drv_load_params, %struct.qed_drv_load_params* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.qed_load_req_params*, %struct.qed_load_req_params** %3, align 8
  %23 = getelementptr inbounds %struct.qed_load_req_params, %struct.qed_load_req_params* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 4
  %24 = load %struct.qed_drv_load_params*, %struct.qed_drv_load_params** %4, align 8
  %25 = getelementptr inbounds %struct.qed_drv_load_params, %struct.qed_drv_load_params* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.qed_load_req_params*, %struct.qed_load_req_params** %3, align 8
  %28 = getelementptr inbounds %struct.qed_load_req_params, %struct.qed_load_req_params* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.qed_drv_load_params*, %struct.qed_drv_load_params** %4, align 8
  %30 = getelementptr inbounds %struct.qed_drv_load_params, %struct.qed_drv_load_params* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.qed_load_req_params*, %struct.qed_load_req_params** %3, align 8
  %33 = getelementptr inbounds %struct.qed_load_req_params, %struct.qed_load_req_params* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  ret void
}

declare dso_local i32 @memset(%struct.qed_load_req_params*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
