; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_set_ampdu_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/carl9170/extr_tx.c_carl9170_set_ampdu_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32 }
%struct.sk_buff = type { i64 }
%struct._carl9170_tx_superframe = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@CARL9170_TX_SUPER_AMPDU_DENSITY = common dso_local global i32 0, align 4
@CARL9170_TX_SUPER_AMPDU_DENSITY_S = common dso_local global i32 0, align 4
@CARL9170_TX_SUPER_AMPDU_COMMIT_DENSITY = common dso_local global i32 0, align 4
@CARL9170_TX_SUPER_AMPDU_FACTOR = common dso_local global i32 0, align 4
@CARL9170_TX_SUPER_AMPDU_FACTOR_S = common dso_local global i32 0, align 4
@CARL9170_TX_SUPER_AMPDU_COMMIT_FACTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ar9170*, %struct.sk_buff*)* @carl9170_set_ampdu_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @carl9170_set_ampdu_params(%struct.ar9170* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.ar9170*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct._carl9170_tx_superframe*, align 8
  %6 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to i8*
  %11 = bitcast i8* %10 to %struct._carl9170_tx_superframe*
  store %struct._carl9170_tx_superframe* %11, %struct._carl9170_tx_superframe** %5, align 8
  %12 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %5, align 8
  %13 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @CARL9170_TX_SUPER_AMPDU_DENSITY, align 4
  %17 = and i32 %15, %16
  %18 = load i32, i32* @CARL9170_TX_SUPER_AMPDU_DENSITY_S, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %22 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %20, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %28 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @CARL9170_TX_SUPER_AMPDU_COMMIT_DENSITY, align 4
  %30 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %5, align 8
  %31 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, %29
  store i32 %34, i32* %32, align 4
  br label %35

35:                                               ; preds = %25, %2
  %36 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %5, align 8
  %37 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @CARL9170_TX_SUPER_AMPDU_FACTOR, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @CARL9170_TX_SUPER_AMPDU_FACTOR_S, align 4
  %43 = shl i32 %41, %42
  store i32 %43, i32* %6, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %46 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %44, %47
  br i1 %48, label %49, label %59

49:                                               ; preds = %35
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.ar9170*, %struct.ar9170** %3, align 8
  %52 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @CARL9170_TX_SUPER_AMPDU_COMMIT_FACTOR, align 4
  %54 = load %struct._carl9170_tx_superframe*, %struct._carl9170_tx_superframe** %5, align 8
  %55 = getelementptr inbounds %struct._carl9170_tx_superframe, %struct._carl9170_tx_superframe* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %53
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %49, %35
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
