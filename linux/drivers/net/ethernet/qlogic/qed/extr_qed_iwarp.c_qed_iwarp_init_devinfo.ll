; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_init_devinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_init_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.qed_rdma_device* }
%struct.qed_rdma_device = type { i32, i32, i64, i64, i32 }

@IWARP_REQ_MAX_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@u32 = common dso_local global i32 0, align 4
@IWARP_MAX_QPS = common dso_local global i32 0, align 4
@QED_IWARP_PREALLOC_CNT = common dso_local global i64 0, align 8
@QED_IWARP_IRD_DEFAULT = common dso_local global i32 0, align 4
@QED_IWARP_ORD_DEFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_iwarp_init_devinfo(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_rdma_device*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %4 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %7, align 8
  store %struct.qed_rdma_device* %8, %struct.qed_rdma_device** %3, align 8
  %9 = load i32, i32* @IWARP_REQ_MAX_INLINE_DATA_SIZE, align 4
  %10 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %3, align 8
  %11 = getelementptr inbounds %struct.qed_rdma_device, %struct.qed_rdma_device* %10, i32 0, i32 4
  store i32 %9, i32* %11, align 8
  %12 = load i32, i32* @u32, align 4
  %13 = load i32, i32* @IWARP_MAX_QPS, align 4
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i64 @min_t(i32 %12, i32 %13, i32 %18)
  %20 = load i64, i64* @QED_IWARP_PREALLOC_CNT, align 8
  %21 = sub nsw i64 %19, %20
  %22 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %3, align 8
  %23 = getelementptr inbounds %struct.qed_rdma_device, %struct.qed_rdma_device* %22, i32 0, i32 2
  store i64 %21, i64* %23, align 8
  %24 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %3, align 8
  %25 = getelementptr inbounds %struct.qed_rdma_device, %struct.qed_rdma_device* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %3, align 8
  %28 = getelementptr inbounds %struct.qed_rdma_device, %struct.qed_rdma_device* %27, i32 0, i32 3
  store i64 %26, i64* %28, align 8
  %29 = load i32, i32* @QED_IWARP_IRD_DEFAULT, align 4
  %30 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %3, align 8
  %31 = getelementptr inbounds %struct.qed_rdma_device, %struct.qed_rdma_device* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @QED_IWARP_ORD_DEFAULT, align 4
  %33 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %3, align 8
  %34 = getelementptr inbounds %struct.qed_rdma_device, %struct.qed_rdma_device* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  ret void
}

declare dso_local i64 @min_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
