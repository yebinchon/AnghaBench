; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tx_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_tx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sh_eth_private = type { i32, i32, i32**, i32**, %struct.sh_eth_rxdesc* }
%struct.sh_eth_rxdesc = type { i8*, i8* }

@timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"transmit timed out, status %8.8x, resetting...\0A\00", align 1
@EESR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sh_eth_tx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh_eth_tx_timeout(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sh_eth_private*, align 8
  %4 = alloca %struct.sh_eth_rxdesc*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.sh_eth_private* %7, %struct.sh_eth_private** %3, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call i32 @netif_stop_queue(%struct.net_device* %8)
  %10 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %11 = load i32, i32* @timer, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = load i32, i32* @EESR, align 4
  %15 = call i32 @sh_eth_read(%struct.net_device* %13, i32 %14)
  %16 = call i32 @netif_err(%struct.sh_eth_private* %10, i32 %11, %struct.net_device* %12, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %55, %1
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %25 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %58

28:                                               ; preds = %22
  %29 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %30 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %29, i32 0, i32 4
  %31 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %31, i64 %33
  store %struct.sh_eth_rxdesc* %34, %struct.sh_eth_rxdesc** %4, align 8
  %35 = call i8* @cpu_to_le32(i32 0)
  %36 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %37 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  %38 = call i8* @cpu_to_le32(i32 -1159790384)
  %39 = load %struct.sh_eth_rxdesc*, %struct.sh_eth_rxdesc** %4, align 8
  %40 = getelementptr inbounds %struct.sh_eth_rxdesc, %struct.sh_eth_rxdesc* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %42 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %41, i32 0, i32 3
  %43 = load i32**, i32*** %42, align 8
  %44 = load i32, i32* %5, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = call i32 @dev_kfree_skb(i32* %47)
  %49 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %50 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %49, i32 0, i32 3
  %51 = load i32**, i32*** %50, align 8
  %52 = load i32, i32* %5, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32*, i32** %51, i64 %53
  store i32* null, i32** %54, align 8
  br label %55

55:                                               ; preds = %28
  %56 = load i32, i32* %5, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %5, align 4
  br label %22

58:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %59

59:                                               ; preds = %80, %58
  %60 = load i32, i32* %5, align 4
  %61 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %62 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp slt i32 %60, %63
  br i1 %64, label %65, label %83

65:                                               ; preds = %59
  %66 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %67 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %66, i32 0, i32 2
  %68 = load i32**, i32*** %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32*, i32** %68, i64 %70
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @dev_kfree_skb(i32* %72)
  %74 = load %struct.sh_eth_private*, %struct.sh_eth_private** %3, align 8
  %75 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %74, i32 0, i32 2
  %76 = load i32**, i32*** %75, align 8
  %77 = load i32, i32* %5, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32*, i32** %76, i64 %78
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %65
  %81 = load i32, i32* %5, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %5, align 4
  br label %59

83:                                               ; preds = %59
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = call i32 @sh_eth_dev_init(%struct.net_device* %84)
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i32 @netif_start_queue(%struct.net_device* %86)
  ret void
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netif_err(%struct.sh_eth_private*, i32, %struct.net_device*, i8*, i32) #1

declare dso_local i32 @sh_eth_read(%struct.net_device*, i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @sh_eth_dev_init(%struct.net_device*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
