; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_resc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_rdma.c_qed_rdma_resc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.qed_rdma_info* }
%struct.qed_rdma_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_rdma_resc_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_rdma_resc_free(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_rdma_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %4 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %4, i32 0, i32 0
  %6 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %5, align 8
  store %struct.qed_rdma_info* %6, %struct.qed_rdma_info** %3, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %8 = call i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %12 = call i32 @qed_iwarp_resc_free(%struct.qed_hwfn* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %15 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %16 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %15, i32 0, i32 0
  %17 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %16, align 8
  %18 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %17, i32 0, i32 9
  %19 = call i32 @qed_rdma_bmap_free(%struct.qed_hwfn* %14, i32* %18, i32 1)
  %20 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %21 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %22 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %21, i32 0, i32 0
  %23 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %22, align 8
  %24 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %23, i32 0, i32 8
  %25 = call i32 @qed_rdma_bmap_free(%struct.qed_hwfn* %20, i32* %24, i32 1)
  %26 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %27 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %28 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %27, i32 0, i32 0
  %29 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %28, align 8
  %30 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %29, i32 0, i32 7
  %31 = call i32 @qed_rdma_bmap_free(%struct.qed_hwfn* %26, i32* %30, i32 1)
  %32 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %33 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %34 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %33, i32 0, i32 0
  %35 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %34, align 8
  %36 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %35, i32 0, i32 6
  %37 = call i32 @qed_rdma_bmap_free(%struct.qed_hwfn* %32, i32* %36, i32 1)
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %40 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %39, i32 0, i32 0
  %41 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %40, align 8
  %42 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %41, i32 0, i32 5
  %43 = call i32 @qed_rdma_bmap_free(%struct.qed_hwfn* %38, i32* %42, i32 0)
  %44 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %45 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %46 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %45, i32 0, i32 0
  %47 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %46, align 8
  %48 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %47, i32 0, i32 4
  %49 = call i32 @qed_rdma_bmap_free(%struct.qed_hwfn* %44, i32* %48, i32 1)
  %50 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %51 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %52 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %51, i32 0, i32 0
  %53 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %52, align 8
  %54 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %53, i32 0, i32 3
  %55 = call i32 @qed_rdma_bmap_free(%struct.qed_hwfn* %50, i32* %54, i32 1)
  %56 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %57 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %58 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %57, i32 0, i32 0
  %59 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %58, align 8
  %60 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %59, i32 0, i32 2
  %61 = call i32 @qed_rdma_bmap_free(%struct.qed_hwfn* %56, i32* %60, i32 1)
  %62 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %3, align 8
  %63 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @kfree(i32 %64)
  %66 = load %struct.qed_rdma_info*, %struct.qed_rdma_info** %3, align 8
  %67 = getelementptr inbounds %struct.qed_rdma_info, %struct.qed_rdma_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @kfree(i32 %68)
  ret void
}

declare dso_local i64 @QED_IS_IWARP_PERSONALITY(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_iwarp_resc_free(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_rdma_bmap_free(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
