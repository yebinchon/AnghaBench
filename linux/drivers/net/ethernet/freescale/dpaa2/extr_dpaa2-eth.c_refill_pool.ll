; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_refill_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_refill_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32 }
%struct.dpaa2_eth_channel = type { i64 }

@DPAA2_ETH_REFILL_THRESH = common dso_local global i64 0, align 8
@DPAA2_ETH_NUM_BUFS = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel*, i32)* @refill_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @refill_pool(%struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_channel* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.dpaa2_eth_priv*, align 8
  %6 = alloca %struct.dpaa2_eth_channel*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %5, align 8
  store %struct.dpaa2_eth_channel* %1, %struct.dpaa2_eth_channel** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %10 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @DPAA2_ETH_REFILL_THRESH, align 8
  %13 = icmp sge i64 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i64 @likely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %57

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %38, %18
  %20 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %5, align 8
  %21 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @add_bufs(%struct.dpaa2_eth_priv* %20, %struct.dpaa2_eth_channel* %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %19
  br label %44

31:                                               ; preds = %19
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %35 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add nsw i64 %36, %33
  store i64 %37, i64* %35, align 8
  br label %38

38:                                               ; preds = %31
  %39 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %40 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @DPAA2_ETH_NUM_BUFS, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %19, label %44

44:                                               ; preds = %38, %30
  %45 = load %struct.dpaa2_eth_channel*, %struct.dpaa2_eth_channel** %6, align 8
  %46 = getelementptr inbounds %struct.dpaa2_eth_channel, %struct.dpaa2_eth_channel* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @DPAA2_ETH_NUM_BUFS, align 8
  %49 = icmp slt i64 %47, %48
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %57

56:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %57

57:                                               ; preds = %56, %53, %17
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @add_bufs(%struct.dpaa2_eth_priv*, %struct.dpaa2_eth_channel*, i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
