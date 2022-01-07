; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_do_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_do_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32* }
%struct.net_device = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.local_info = type { i64 }

@.str = private unnamed_addr constant [38 x i8] c"do_start_xmit(skb=%p, dev=%p) len=%u\0A\00", align 1
@ETH_ZLEN = common dso_local global i32 0, align 4
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@XIRCREG0_TRS = common dso_local global i64 0, align 8
@XIRCREG0_TSO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"%s: avail. tx space=%u%s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c" (okay)\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c" (not enough)\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@XIRCREG_EDP = common dso_local global i64 0, align 8
@XIRCREG_CR = common dso_local global i64 0, align 8
@TransmitPacket = common dso_local global i32 0, align 4
@EnableIntr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @do_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.local_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.local_info* @netdev_priv(%struct.net_device* %11)
  store %struct.local_info* %12, %struct.local_info** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %17 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = load i32, i32* %10, align 4
  %22 = call i32 (i8*, %struct.sk_buff*, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %19, %struct.net_device* %20, i32 %21)
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* @ETH_ZLEN, align 4
  %25 = icmp ult i32 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %2
  %27 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %28 = load i32, i32* @ETH_ZLEN, align 4
  %29 = call i64 @skb_padto(%struct.sk_buff* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %26
  %32 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %32, i32* %3, align 4
  br label %122

33:                                               ; preds = %26
  %34 = load i32, i32* @ETH_ZLEN, align 4
  store i32 %34, i32* %10, align 4
  br label %35

35:                                               ; preds = %33, %2
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = call i32 @netif_stop_queue(%struct.net_device* %36)
  %38 = call i32 @SelectPage(i32 0)
  %39 = load i64, i64* @XIRCREG0_TRS, align 8
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %41, 2
  %43 = call i32 @PutWord(i64 %39, i64 %42)
  %44 = load i32, i32* @XIRCREG0_TSO, align 4
  %45 = call i32 @GetWord(i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = and i32 %46, 32768
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = and i32 %48, 32767
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add i32 %50, 2
  %52 = load i32, i32* %9, align 4
  %53 = icmp ult i32 %51, %52
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %8, align 4
  %55 = load %struct.net_device*, %struct.net_device** %5, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.sk_buff*
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp ne i32 %61, 0
  %63 = zext i1 %62 to i64
  %64 = select i1 %62, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0)
  %65 = call i32 (i8*, %struct.sk_buff*, ...) @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), %struct.sk_buff* %59, i32 %60, i8* %64)
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %35
  %69 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %69, i32* %3, align 4
  br label %122

70:                                               ; preds = %35
  %71 = load i64, i64* @XIRCREG_EDP, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = call i32 @PutWord(i64 %71, i64 %73)
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = load i64, i64* @XIRCREG_EDP, align 8
  %78 = add nsw i64 %76, %77
  %79 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %80 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = lshr i32 %82, 1
  %84 = call i32 @outsw(i64 %78, i32* %81, i32 %83)
  %85 = load i32, i32* %10, align 4
  %86 = and i32 %85, 1
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %99

88:                                               ; preds = %70
  %89 = load i64, i64* @XIRCREG_EDP, align 8
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sub i32 %93, 1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %92, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @PutByte(i64 %89, i32 %97)
  br label %99

99:                                               ; preds = %88, %70
  %100 = load %struct.local_info*, %struct.local_info** %6, align 8
  %101 = getelementptr inbounds %struct.local_info, %struct.local_info* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %99
  %105 = load i64, i64* @XIRCREG_CR, align 8
  %106 = load i32, i32* @TransmitPacket, align 4
  %107 = load i32, i32* @EnableIntr, align 4
  %108 = or i32 %106, %107
  %109 = call i32 @PutByte(i64 %105, i32 %108)
  br label %110

110:                                              ; preds = %104, %99
  %111 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %112 = call i32 @dev_kfree_skb(%struct.sk_buff* %111)
  %113 = load i32, i32* %10, align 4
  %114 = load %struct.net_device*, %struct.net_device** %5, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = add i32 %117, %113
  store i32 %118, i32* %116, align 4
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = call i32 @netif_start_queue(%struct.net_device* %119)
  %121 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %110, %68, %31
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_debug(i8*, %struct.sk_buff*, ...) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @SelectPage(i32) #1

declare dso_local i32 @PutWord(i64, i64) #1

declare dso_local i32 @GetWord(i32) #1

declare dso_local i32 @outsw(i64, i32*, i32) #1

declare dso_local i32 @PutByte(i64, i32) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
