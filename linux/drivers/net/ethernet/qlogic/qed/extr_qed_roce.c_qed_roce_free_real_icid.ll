; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_free_real_icid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_roce.c_qed_roce_free_real_icid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_rdma_info* }
%struct.qed_rdma_info = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, i32)* @qed_roce_free_real_icid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_roce_free_real_icid(%struct.qed_hwfn* %0, i32 %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qed_rdma_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %10 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %9, i32 0, i32 0
  %11 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %10, align 8
  store %struct.qed_rdma_info* %11, %struct.qed_rdma_info** %5, align 8
  %12 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %13 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %5, align 8
  %14 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn* %12, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* %6, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = xor i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %5, align 8
  %23 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %22, i32 0, i32 0
  %24 = call i32 @spin_lock_bh(i32* %23)
  %25 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %26 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %5, align 8
  %27 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %26, i32 0, i32 2
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @qed_bmap_release_id(%struct.qed_hwfn* %25, i32* %27, i32 %28)
  %30 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %31 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %5, align 8
  %32 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %31, i32 0, i32 2
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @qed_bmap_test_id(%struct.qed_hwfn* %30, i32* %32, i32 %33)
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %47

36:                                               ; preds = %2
  %37 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %38 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %5, align 8
  %39 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %38, i32 0, i32 1
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @qed_bmap_release_id(%struct.qed_hwfn* %37, i32* %39, i32 %40)
  %42 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %43 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %5, align 8
  %44 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %43, i32 0, i32 1
  %45 = load i32, i32* %8, align 4
  %46 = call i32 @qed_bmap_release_id(%struct.qed_hwfn* %42, i32* %44, i32 %45)
  br label %47

47:                                               ; preds = %36, %2
  %48 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %49 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %48, i32 0, i32 0
  %50 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %49, align 8
  %51 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %50, i32 0, i32 0
  %52 = call i32 @spin_unlock_bh(i32* %51)
  ret void
}

declare dso_local i32 @qed_cxt_get_proto_cid_start(%struct.qed_hwfn*, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @qed_bmap_release_id(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i64 @qed_bmap_test_id(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
