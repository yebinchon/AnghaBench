; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_rel_tx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_rel_tx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_ll2_buff = type { i32, i32, i32, %struct.qed_iwarp_ll2_buff* }
%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32, i32)* @qed_iwarp_ll2_rel_tx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_ll2_rel_tx_pkt(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %14 = alloca %struct.qed_hwfn*, align 8
  store i8* %0, i8** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %15 = load i8*, i8** %9, align 8
  %16 = bitcast i8* %15 to %struct.qed_iwarp_ll2_buff*
  store %struct.qed_iwarp_ll2_buff* %16, %struct.qed_iwarp_ll2_buff** %13, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %18, %struct.qed_hwfn** %14, align 8
  %19 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %20 = icmp ne %struct.qed_iwarp_ll2_buff* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %6
  br label %73

22:                                               ; preds = %6
  %23 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %24 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %23, i32 0, i32 3
  %25 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %24, align 8
  %26 = icmp ne %struct.qed_iwarp_ll2_buff* %25, null
  br i1 %26, label %27, label %54

27:                                               ; preds = %22
  %28 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %29 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %35 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %34, i32 0, i32 3
  %36 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %35, align 8
  %37 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %40 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %39, i32 0, i32 3
  %41 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %40, align 8
  %42 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %45 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %44, i32 0, i32 3
  %46 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %45, align 8
  %47 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @dma_free_coherent(i32* %33, i32 %38, i32 %43, i32 %48)
  %50 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %51 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %50, i32 0, i32 3
  %52 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %51, align 8
  %53 = call i32 @kfree(%struct.qed_iwarp_ll2_buff* %52)
  br label %54

54:                                               ; preds = %27, %22
  %55 = load %struct.qed_hwfn*, %struct.qed_hwfn** %14, align 8
  %56 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %62 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %65 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %68 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dma_free_coherent(i32* %60, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %13, align 8
  %72 = call i32 @kfree(%struct.qed_iwarp_ll2_buff* %71)
  br label %73

73:                                               ; preds = %54, %21
  ret void
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.qed_iwarp_ll2_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
