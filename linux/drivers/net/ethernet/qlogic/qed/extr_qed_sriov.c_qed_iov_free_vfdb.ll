; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_free_vfdb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_sriov.c_qed_iov_free_vfdb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_4__*, %struct.qed_pf_iov* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.qed_pf_iov = type { i32, i64, i32, i32, i64, i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*)* @qed_iov_free_vfdb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iov_free_vfdb(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_pf_iov*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %4 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %4, i32 0, i32 1
  %6 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %5, align 8
  store %struct.qed_pf_iov* %6, %struct.qed_pf_iov** %3, align 8
  %7 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %8 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %7, i32 0, i32 1
  %9 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %8, align 8
  %10 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %30

13:                                               ; preds = %1
  %14 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %15 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %21 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %24 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %23, i32 0, i32 7
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %27 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %26, i32 0, i32 6
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dma_free_coherent(i32* %19, i32 %22, i64 %25, i32 %28)
  br label %30

30:                                               ; preds = %13, %1
  %31 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %32 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %31, i32 0, i32 1
  %33 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %32, align 8
  %34 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %33, i32 0, i32 4
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %30
  %38 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %39 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %45 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %44, i32 0, i32 5
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %48 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %47, i32 0, i32 4
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %51 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @dma_free_coherent(i32* %43, i32 %46, i64 %49, i32 %52)
  br label %54

54:                                               ; preds = %37, %30
  %55 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %56 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %76

59:                                               ; preds = %54
  %60 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %61 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %60, i32 0, i32 0
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %67 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %70 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.qed_pf_iov*, %struct.qed_pf_iov** %3, align 8
  %73 = getelementptr inbounds %struct.qed_pf_iov, %struct.qed_pf_iov* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @dma_free_coherent(i32* %65, i32 %68, i64 %71, i32 %74)
  br label %76

76:                                               ; preds = %59, %54
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
