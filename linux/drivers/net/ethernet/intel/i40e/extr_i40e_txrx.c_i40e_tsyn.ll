; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_tsyn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_txrx.c_i40e_tsyn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_ring = type { i32 }
%struct.sk_buff = type { i32 }
%struct.i40e_pf = type { i32, i32, i32, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@SKBTX_HW_TSTAMP = common dso_local global i32 0, align 4
@I40E_TX_FLAGS_TSO = common dso_local global i32 0, align 4
@I40E_FLAG_PTP = common dso_local global i32 0, align 4
@__I40E_PTP_TX_IN_PROGRESS = common dso_local global i32 0, align 4
@SKBTX_IN_PROGRESS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@I40E_TX_CTX_DESC_TSYN = common dso_local global i64 0, align 8
@I40E_TXD_CTX_QW1_CMD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_ring*, %struct.sk_buff*, i32, i32*)* @i40e_tsyn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_tsyn(%struct.i40e_ring* %0, %struct.sk_buff* %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_ring*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_ring* %0, %struct.i40e_ring** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %12 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SKBTX_HW_TSTAMP, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i64 @likely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %80

23:                                               ; preds = %4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @I40E_TX_FLAGS_TSO, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %80

29:                                               ; preds = %23
  %30 = load %struct.i40e_ring*, %struct.i40e_ring** %6, align 8
  %31 = getelementptr inbounds %struct.i40e_ring, %struct.i40e_ring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call %struct.i40e_pf* @i40e_netdev_to_pf(i32 %32)
  store %struct.i40e_pf* %33, %struct.i40e_pf** %10, align 8
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @I40E_FLAG_PTP, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %29
  store i32 0, i32* %5, align 4
  br label %80

41:                                               ; preds = %29
  %42 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %43 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %42, i32 0, i32 5
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %67

46:                                               ; preds = %41
  %47 = load i32, i32* @__I40E_PTP_TX_IN_PROGRESS, align 4
  %48 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %49 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @test_and_set_bit_lock(i32 %47, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %67, label %53

53:                                               ; preds = %46
  %54 = load i32, i32* @SKBTX_IN_PROGRESS, align 4
  %55 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %56 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %54
  store i32 %59, i32* %57, align 4
  %60 = load i32, i32* @jiffies, align 4
  %61 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %62 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %61, i32 0, i32 3
  store i32 %60, i32* %62, align 4
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = call i32 @skb_get(%struct.sk_buff* %63)
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  br label %72

67:                                               ; preds = %46, %41
  %68 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  %69 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  store i32 0, i32* %5, align 4
  br label %80

72:                                               ; preds = %53
  %73 = load i64, i64* @I40E_TX_CTX_DESC_TSYN, align 8
  %74 = trunc i64 %73 to i32
  %75 = load i32, i32* @I40E_TXD_CTX_QW1_CMD_SHIFT, align 4
  %76 = shl i32 %74, %75
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = or i32 %78, %76
  store i32 %79, i32* %77, align 4
  store i32 1, i32* %5, align 4
  br label %80

80:                                               ; preds = %72, %67, %40, %28, %22
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local %struct.i40e_pf* @i40e_netdev_to_pf(i32) #1

declare dso_local i32 @test_and_set_bit_lock(i32, i32) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
