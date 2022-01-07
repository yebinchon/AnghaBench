; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_net_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_mac89x0.c_net_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.net_local = type { i32 }
%struct.sk_buff = type { i32*, i32 }

@PP_RxStatus = common dso_local global i32 0, align 4
@RX_OK = common dso_local global i32 0, align 4
@RX_RUNT = common dso_local global i32 0, align 4
@RX_EXTRA_DATA = common dso_local global i32 0, align 4
@RX_CRC_ERROR = common dso_local global i32 0, align 4
@RX_DRIBBLE = common dso_local global i32 0, align 4
@PP_RxLength = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@PP_RxFrame = common dso_local global i64 0, align 8
@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"received %d byte packet of type %x\0A\00", align 1
@ETH_ALEN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @net_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @net_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.net_local* @netdev_priv(%struct.net_device* %7)
  store %struct.net_local* %8, %struct.net_local** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = load i32, i32* @PP_RxStatus, align 4
  %11 = call i32 @readreg(%struct.net_device* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @RX_OK, align 4
  %14 = and i32 %12, %13
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %73

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %2, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @RX_RUNT, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %16
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %26, %16
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @RX_EXTRA_DATA, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  br label %43

43:                                               ; preds = %37, %32
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @RX_CRC_ERROR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %43
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* @RX_EXTRA_DATA, align 4
  %51 = load i32, i32* @RX_RUNT, align 4
  %52 = or i32 %50, %51
  %53 = and i32 %49, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %48
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = getelementptr inbounds %struct.net_device, %struct.net_device* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 8
  br label %61

61:                                               ; preds = %55, %48, %43
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @RX_DRIBBLE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %72

72:                                               ; preds = %66, %61
  br label %143

73:                                               ; preds = %1
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = load i32, i32* @PP_RxLength, align 4
  %76 = call i32 @readreg(%struct.net_device* %74, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @GFP_ATOMIC, align 4
  %79 = call %struct.sk_buff* @alloc_skb(i32 %77, i32 %78)
  store %struct.sk_buff* %79, %struct.sk_buff** %4, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %81 = icmp eq %struct.sk_buff* %80, null
  br i1 %81, label %82, label %88

82:                                               ; preds = %73
  %83 = load %struct.net_device*, %struct.net_device** %2, align 8
  %84 = getelementptr inbounds %struct.net_device, %struct.net_device* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 8
  br label %143

88:                                               ; preds = %73
  %89 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i32 @skb_put(%struct.sk_buff* %89, i32 %90)
  %92 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PP_RxFrame, align 8
  %97 = add nsw i64 %95, %96
  %98 = inttoptr i64 %97 to i8*
  %99 = load i32, i32* %6, align 4
  %100 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %92, i8* %98, i32 %99)
  %101 = load %struct.net_local*, %struct.net_local** %3, align 8
  %102 = load i32, i32* @rx_status, align 4
  %103 = load %struct.net_device*, %struct.net_device** %2, align 8
  %104 = load i32, i32* %6, align 4
  %105 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %106 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %105, i32 0, i32 0
  %107 = load i32*, i32** %106, align 8
  %108 = load i64, i64* @ETH_ALEN, align 8
  %109 = load i64, i64* @ETH_ALEN, align 8
  %110 = add i64 %108, %109
  %111 = getelementptr inbounds i32, i32* %107, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = shl i32 %112, 8
  %114 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %115 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = load i64, i64* @ETH_ALEN, align 8
  %118 = load i64, i64* @ETH_ALEN, align 8
  %119 = add i64 %117, %118
  %120 = add i64 %119, 1
  %121 = getelementptr inbounds i32, i32* %116, i64 %120
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %113, %122
  %124 = call i32 @netif_dbg(%struct.net_local* %101, i32 %102, %struct.net_device* %103, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %104, i32 %123)
  %125 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %126 = load %struct.net_device*, %struct.net_device** %2, align 8
  %127 = call i32 @eth_type_trans(%struct.sk_buff* %125, %struct.net_device* %126)
  %128 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 1
  store i32 %127, i32* %129, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %131 = call i32 @netif_rx(%struct.sk_buff* %130)
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %134, align 4
  %137 = load i32, i32* %6, align 4
  %138 = load %struct.net_device*, %struct.net_device** %2, align 8
  %139 = getelementptr inbounds %struct.net_device, %struct.net_device* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %137
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %88, %82, %72
  ret void
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readreg(%struct.net_device*, i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @netif_dbg(%struct.net_local*, i32, %struct.net_device*, i8*, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
