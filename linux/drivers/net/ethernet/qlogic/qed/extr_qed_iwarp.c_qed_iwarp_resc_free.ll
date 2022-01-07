; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_resc_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_resc_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.qed_iwarp_info }
%struct.qed_iwarp_info = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qed_iwarp_resc_free(%struct.qed_hwfn* %0) #0 {
  %2 = alloca %struct.qed_hwfn*, align 8
  %3 = alloca %struct.qed_iwarp_info*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %2, align 8
  %4 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %5 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store %struct.qed_iwarp_info* %7, %struct.qed_iwarp_info** %3, align 8
  %8 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %9 = call i32 @qed_ooo_free(%struct.qed_hwfn* %8)
  %10 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %2, align 8
  %12 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = call i32 @qed_rdma_bmap_free(%struct.qed_hwfn* %10, i32* %14, i32 1)
  %16 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %3, align 8
  %17 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %3, align 8
  %21 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @kfree(i32 %22)
  %24 = load %struct.qed_iwarp_info*, %struct.qed_iwarp_info** %3, align 8
  %25 = getelementptr inbounds %struct.qed_iwarp_info, %struct.qed_iwarp_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @kfree(i32 %26)
  ret void
}

declare dso_local i32 @qed_ooo_free(%struct.qed_hwfn*) #1

declare dso_local i32 @qed_rdma_bmap_free(%struct.qed_hwfn*, i32*, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
