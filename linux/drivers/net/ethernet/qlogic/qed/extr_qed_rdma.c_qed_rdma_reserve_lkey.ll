; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_reserve_lkey.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_reserve_lkey.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qed_rdma_device* }
%struct.qed_rdma_device = type { i64 }

@RDMA_RESERVED_LKEY = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [53 x i8] c"Reserved lkey should be equal to RDMA_RESERVED_LKEY\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qed_hwfn*)* @qed_rdma_reserve_lkey to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qed_rdma_reserve_lkey(%struct.qed_hwfn* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_rdma_device*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %6 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %8, align 8
  store %struct.qed_rdma_device* %9, %struct.qed_rdma_device** %4, align 8
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %11 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %4, align 8
  %12 = getelementptr inbounds %struct.qed_rdma_device, %struct.qed_rdma_device* %11, i32 0, i32 0
  %13 = call i32 @qed_rdma_alloc_tid(%struct.qed_hwfn* %10, i64* %12)
  %14 = load %struct.qed_rdma_device*, %struct.qed_rdma_device** %4, align 8
  %15 = getelementptr inbounds %struct.qed_rdma_device, %struct.qed_rdma_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RDMA_RESERVED_LKEY, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %21 = call i32 @DP_NOTICE(%struct.qed_hwfn* %20, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %25

24:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %19
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @qed_rdma_alloc_tid(%struct.qed_hwfn*, i64*) #1

declare dso_local i32 @DP_NOTICE(%struct.qed_hwfn*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
