; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_reset_skb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_main.c_fec_enet_reset_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, %struct.fec_enet_priv_tx_q** }
%struct.fec_enet_priv_tx_q = type { i32**, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @fec_enet_reset_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fec_enet_reset_skb(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.fec_enet_private*, align 8
  %4 = alloca %struct.fec_enet_priv_tx_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.fec_enet_private* %8, %struct.fec_enet_private** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %59, %1
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %12 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %62

15:                                               ; preds = %9
  %16 = load %struct.fec_enet_private*, %struct.fec_enet_private** %3, align 8
  %17 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %16, i32 0, i32 1
  %18 = load %struct.fec_enet_priv_tx_q**, %struct.fec_enet_priv_tx_q*** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %18, i64 %20
  %22 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %21, align 8
  store %struct.fec_enet_priv_tx_q* %22, %struct.fec_enet_priv_tx_q** %4, align 8
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %55, %15
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %4, align 8
  %26 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %24, %28
  br i1 %29, label %30, label %58

30:                                               ; preds = %23
  %31 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %4, align 8
  %32 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %31, i32 0, i32 0
  %33 = load i32**, i32*** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = icmp ne i32* %37, null
  br i1 %38, label %39, label %54

39:                                               ; preds = %30
  %40 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %4, align 8
  %41 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %40, i32 0, i32 0
  %42 = load i32**, i32*** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32*, i32** %42, i64 %44
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @dev_kfree_skb_any(i32* %46)
  %48 = load %struct.fec_enet_priv_tx_q*, %struct.fec_enet_priv_tx_q** %4, align 8
  %49 = getelementptr inbounds %struct.fec_enet_priv_tx_q, %struct.fec_enet_priv_tx_q* %48, i32 0, i32 0
  %50 = load i32**, i32*** %49, align 8
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32*, i32** %50, i64 %52
  store i32* null, i32** %53, align 8
  br label %54

54:                                               ; preds = %39, %30
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %23

58:                                               ; preds = %23
  br label %59

59:                                               ; preds = %58
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %9

62:                                               ; preds = %9
  ret void
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
