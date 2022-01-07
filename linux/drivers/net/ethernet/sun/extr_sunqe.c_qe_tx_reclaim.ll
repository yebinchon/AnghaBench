; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_tx_reclaim.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sunqe.c_qe_tx_reclaim.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunqe = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.qe_txd* }
%struct.qe_txd = type { i32 }

@TXD_OWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sunqe*)* @qe_tx_reclaim to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qe_tx_reclaim(%struct.sunqe* %0) #0 {
  %2 = alloca %struct.sunqe*, align 8
  %3 = alloca %struct.qe_txd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.sunqe* %0, %struct.sunqe** %2, align 8
  %6 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %7 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %6, i32 0, i32 2
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.qe_txd*, %struct.qe_txd** %9, align 8
  %11 = getelementptr inbounds %struct.qe_txd, %struct.qe_txd* %10, i64 0
  store %struct.qe_txd* %11, %struct.qe_txd** %3, align 8
  %12 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %13 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  br label %15

15:                                               ; preds = %33, %1
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %18 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %16, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %15
  %22 = load %struct.qe_txd*, %struct.qe_txd** %3, align 8
  %23 = load i32, i32* %4, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.qe_txd, %struct.qe_txd* %22, i64 %24
  %26 = getelementptr inbounds %struct.qe_txd, %struct.qe_txd* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @TXD_OWN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %36

33:                                               ; preds = %21
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @NEXT_TX(i32 %34)
  store i32 %35, i32* %4, align 4
  br label %15

36:                                               ; preds = %32, %15
  %37 = load i32, i32* %4, align 4
  %38 = load %struct.sunqe*, %struct.sunqe** %2, align 8
  %39 = getelementptr inbounds %struct.sunqe, %struct.sunqe* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  ret void
}

declare dso_local i32 @NEXT_TX(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
