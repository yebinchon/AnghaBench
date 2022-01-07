; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_fill_rdma_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_fill_rdma_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_dev = type { i32 }
%struct.qed_dev_rdma_info = type { i32, i32, i32 }
%struct.qed_hwfn = type { i64 }

@QED_RDMA_TYPE_ROCE = common dso_local global i32 0, align 4
@QED_RDMA_TYPE_IWARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_dev*, %struct.qed_dev_rdma_info*)* @qed_fill_rdma_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_fill_rdma_dev_info(%struct.qed_dev* %0, %struct.qed_dev_rdma_info* %1) #0 {
  %3 = alloca %struct.qed_dev*, align 8
  %4 = alloca %struct.qed_dev_rdma_info*, align 8
  %5 = alloca %struct.qed_hwfn*, align 8
  store %struct.qed_dev* %0, %struct.qed_dev** %3, align 8
  store %struct.qed_dev_rdma_info* %1, %struct.qed_dev_rdma_info** %4, align 8
  %6 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %7 = call %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev* %6)
  store %struct.qed_hwfn* %7, %struct.qed_hwfn** %5, align 8
  %8 = load %struct.qed_dev_rdma_info*, %struct.qed_dev_rdma_info** %4, align 8
  %9 = call i32 @memset(%struct.qed_dev_rdma_info* %8, i32 0, i32 12)
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %11 = call i64 @QED_IS_ROCE_PERSONALITY(%struct.qed_hwfn* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @QED_RDMA_TYPE_ROCE, align 4
  br label %17

15:                                               ; preds = %2
  %16 = load i32, i32* @QED_RDMA_TYPE_IWARP, align 4
  br label %17

17:                                               ; preds = %15, %13
  %18 = phi i32 [ %14, %13 ], [ %16, %15 ]
  %19 = load %struct.qed_dev_rdma_info*, %struct.qed_dev_rdma_info** %4, align 8
  %20 = getelementptr inbounds %struct.qed_dev_rdma_info, %struct.qed_dev_rdma_info* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 4
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %5, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp eq i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load %struct.qed_dev_rdma_info*, %struct.qed_dev_rdma_info** %4, align 8
  %27 = getelementptr inbounds %struct.qed_dev_rdma_info, %struct.qed_dev_rdma_info* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.qed_dev*, %struct.qed_dev** %3, align 8
  %29 = load %struct.qed_dev_rdma_info*, %struct.qed_dev_rdma_info** %4, align 8
  %30 = getelementptr inbounds %struct.qed_dev_rdma_info, %struct.qed_dev_rdma_info* %29, i32 0, i32 1
  %31 = call i32 @qed_fill_dev_info(%struct.qed_dev* %28, i32* %30)
  ret i32 0
}

declare dso_local %struct.qed_hwfn* @QED_AFFIN_HWFN(%struct.qed_dev*) #1

declare dso_local i32 @memset(%struct.qed_dev_rdma_info*, i32, i32) #1

declare dso_local i64 @QED_IS_ROCE_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_fill_dev_info(%struct.qed_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
