; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_rel_rx_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_ll2_rel_rx_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_iwarp_ll2_buff = type { i32, i32, i32 }
%struct.qed_hwfn = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i8*, i32, i32)* @qed_iwarp_ll2_rel_rx_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_ll2_rel_rx_pkt(i8* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.qed_iwarp_ll2_buff*, align 8
  %12 = alloca %struct.qed_hwfn*, align 8
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %13 = load i8*, i8** %8, align 8
  %14 = bitcast i8* %13 to %struct.qed_iwarp_ll2_buff*
  store %struct.qed_iwarp_ll2_buff* %14, %struct.qed_iwarp_ll2_buff** %11, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to %struct.qed_hwfn*
  store %struct.qed_hwfn* %16, %struct.qed_hwfn** %12, align 8
  %17 = load %struct.qed_hwfn*, %struct.qed_hwfn** %12, align 8
  %18 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %11, align 8
  %24 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %11, align 8
  %27 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %11, align 8
  %30 = getelementptr inbounds %struct.qed_iwarp_ll2_buff, %struct.qed_iwarp_ll2_buff* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dma_free_coherent(i32* %22, i32 %25, i32 %28, i32 %31)
  %33 = load %struct.qed_iwarp_ll2_buff*, %struct.qed_iwarp_ll2_buff** %11, align 8
  %34 = call i32 @kfree(%struct.qed_iwarp_ll2_buff* %33)
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
