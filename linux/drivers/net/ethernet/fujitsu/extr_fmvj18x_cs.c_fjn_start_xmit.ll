; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fjn_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/fujitsu/extr_fmvj18x_cs.c_fjn_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i16, i8* }
%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16 }
%struct.local_info = type { i32, i32, i32, i32 }

@ETH_ZLEN = common dso_local global i16 0, align 2
@NETDEV_TX_OK = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [46 x i8] c"Attempting to send a large packet (%d bytes)\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Transmitting a packet of length %lu\0A\00", align 1
@TX_INTR = common dso_local global i64 0, align 8
@DATAPORT = common dso_local global i64 0, align 8
@DO_TX = common dso_local global i32 0, align 4
@TX_START = common dso_local global i64 0, align 8
@sram_config = common dso_local global i64 0, align 8
@D_TX_INTR = common dso_local global i32 0, align 4
@D_RX_INTR = common dso_local global i32 0, align 4
@RX_INTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @fjn_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fjn_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.local_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  %9 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.local_info* @netdev_priv(%struct.net_device* %10)
  store %struct.local_info* %11, %struct.local_info** %6, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %7, align 4
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i16, i16* %16, align 8
  store i16 %17, i16* %8, align 2
  %18 = load i16, i16* %8, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* @ETH_ZLEN, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %2
  %24 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %25 = load i16, i16* @ETH_ZLEN, align 2
  %26 = call i64 @skb_padto(%struct.sk_buff* %24, i16 signext %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %23
  %29 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %29, i32* %3, align 4
  br label %180

30:                                               ; preds = %23
  %31 = load i16, i16* @ETH_ZLEN, align 2
  store i16 %31, i16* %8, align 2
  br label %32

32:                                               ; preds = %30, %2
  %33 = load %struct.net_device*, %struct.net_device** %5, align 8
  %34 = call i32 @netif_stop_queue(%struct.net_device* %33)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %9, align 8
  %38 = load i16, i16* %8, align 2
  %39 = sext i16 %38 to i32
  %40 = load i16, i16* @ETH_FRAME_LEN, align 2
  %41 = sext i16 %40 to i32
  %42 = icmp sgt i32 %39, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %32
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = load i16, i16* %8, align 2
  %46 = call i32 @netdev_notice(%struct.net_device* %44, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i16 signext %45)
  %47 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %47, i32* %3, align 4
  br label %180

48:                                               ; preds = %32
  %49 = load %struct.net_device*, %struct.net_device** %5, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i16, i16* %51, align 8
  %53 = sext i16 %52 to i64
  %54 = call i32 @netdev_dbg(%struct.net_device* %49, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %53)
  %55 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %56 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %55, i32 0, i32 0
  %57 = load i16, i16* %56, align 8
  %58 = sext i16 %57 to i32
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i16, i16* %61, align 4
  %63 = sext i16 %62 to i32
  %64 = add nsw i32 %63, %58
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %61, align 4
  %66 = load i32, i32* %7, align 4
  %67 = zext i32 %66 to i64
  %68 = load i64, i64* @TX_INTR, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @outw(i16 signext 0, i64 %69)
  %71 = call i32 @udelay(i32 1)
  %72 = load i16, i16* %8, align 2
  %73 = load i32, i32* %7, align 4
  %74 = zext i32 %73 to i64
  %75 = load i64, i64* @DATAPORT, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outw(i16 signext %72, i64 %76)
  %78 = load i32, i32* %7, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* @DATAPORT, align 8
  %81 = add nsw i64 %79, %80
  %82 = load i8*, i8** %9, align 8
  %83 = load i16, i16* %8, align 2
  %84 = sext i16 %83 to i32
  %85 = add nsw i32 %84, 1
  %86 = ashr i32 %85, 1
  %87 = trunc i32 %86 to i16
  %88 = call i32 @outsw(i64 %81, i8* %82, i16 signext %87)
  %89 = load %struct.local_info*, %struct.local_info** %6, align 8
  %90 = getelementptr inbounds %struct.local_info, %struct.local_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 4
  %93 = load i16, i16* %8, align 2
  %94 = sext i16 %93 to i32
  %95 = add nsw i32 %94, 3
  %96 = and i32 %95, -2
  %97 = load %struct.local_info*, %struct.local_info** %6, align 8
  %98 = getelementptr inbounds %struct.local_info, %struct.local_info* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load %struct.local_info*, %struct.local_info** %6, align 8
  %102 = getelementptr inbounds %struct.local_info, %struct.local_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %129

105:                                              ; preds = %48
  %106 = load i32, i32* @DO_TX, align 4
  %107 = load %struct.local_info*, %struct.local_info** %6, align 8
  %108 = getelementptr inbounds %struct.local_info, %struct.local_info* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %106, %109
  %111 = load i32, i32* %7, align 4
  %112 = zext i32 %111 to i64
  %113 = load i64, i64* @TX_START, align 8
  %114 = add nsw i64 %112, %113
  %115 = call i32 @outb(i32 %110, i64 %114)
  %116 = load %struct.local_info*, %struct.local_info** %6, align 8
  %117 = getelementptr inbounds %struct.local_info, %struct.local_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.local_info*, %struct.local_info** %6, align 8
  %120 = getelementptr inbounds %struct.local_info, %struct.local_info* %119, i32 0, i32 3
  store i32 %118, i32* %120, align 4
  %121 = load %struct.local_info*, %struct.local_info** %6, align 8
  %122 = getelementptr inbounds %struct.local_info, %struct.local_info* %121, i32 0, i32 0
  store i32 0, i32* %122, align 4
  %123 = load %struct.local_info*, %struct.local_info** %6, align 8
  %124 = getelementptr inbounds %struct.local_info, %struct.local_info* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load %struct.local_info*, %struct.local_info** %6, align 8
  %126 = getelementptr inbounds %struct.local_info, %struct.local_info* %125, i32 0, i32 2
  store i32 1, i32* %126, align 4
  %127 = load %struct.net_device*, %struct.net_device** %5, align 8
  %128 = call i32 @netif_start_queue(%struct.net_device* %127)
  br label %164

129:                                              ; preds = %48
  %130 = load i64, i64* @sram_config, align 8
  %131 = icmp eq i64 %130, 0
  br i1 %131, label %132, label %145

132:                                              ; preds = %129
  %133 = load %struct.local_info*, %struct.local_info** %6, align 8
  %134 = getelementptr inbounds %struct.local_info, %struct.local_info* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = load i16, i16* @ETH_FRAME_LEN, align 2
  %137 = sext i16 %136 to i32
  %138 = add nsw i32 %137, 2
  %139 = sub nsw i32 4096, %138
  %140 = icmp slt i32 %135, %139
  br i1 %140, label %141, label %144

141:                                              ; preds = %132
  %142 = load %struct.net_device*, %struct.net_device** %5, align 8
  %143 = call i32 @netif_start_queue(%struct.net_device* %142)
  br label %144

144:                                              ; preds = %141, %132
  br label %163

145:                                              ; preds = %129
  %146 = load %struct.local_info*, %struct.local_info** %6, align 8
  %147 = getelementptr inbounds %struct.local_info, %struct.local_info* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i16, i16* @ETH_FRAME_LEN, align 2
  %150 = sext i16 %149 to i32
  %151 = add nsw i32 %150, 2
  %152 = sub nsw i32 8192, %151
  %153 = icmp slt i32 %148, %152
  br i1 %153, label %154, label %162

154:                                              ; preds = %145
  %155 = load %struct.local_info*, %struct.local_info** %6, align 8
  %156 = getelementptr inbounds %struct.local_info, %struct.local_info* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = icmp slt i32 %157, 127
  br i1 %158, label %159, label %162

159:                                              ; preds = %154
  %160 = load %struct.net_device*, %struct.net_device** %5, align 8
  %161 = call i32 @netif_start_queue(%struct.net_device* %160)
  br label %162

162:                                              ; preds = %159, %154, %145
  br label %163

163:                                              ; preds = %162, %144
  br label %164

164:                                              ; preds = %163, %105
  %165 = load i32, i32* @D_TX_INTR, align 4
  %166 = load i32, i32* %7, align 4
  %167 = zext i32 %166 to i64
  %168 = load i64, i64* @TX_INTR, align 8
  %169 = add nsw i64 %167, %168
  %170 = call i32 @outb(i32 %165, i64 %169)
  %171 = load i32, i32* @D_RX_INTR, align 4
  %172 = load i32, i32* %7, align 4
  %173 = zext i32 %172 to i64
  %174 = load i64, i64* @RX_INTR, align 8
  %175 = add nsw i64 %173, %174
  %176 = call i32 @outb(i32 %171, i64 %175)
  %177 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %178 = call i32 @dev_kfree_skb(%struct.sk_buff* %177)
  %179 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %164, %43, %28
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.local_info* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_padto(%struct.sk_buff*, i16 signext) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*, i16 signext) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*, i64) #1

declare dso_local i32 @outw(i16 signext, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outsw(i64, i8*, i16 signext) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
