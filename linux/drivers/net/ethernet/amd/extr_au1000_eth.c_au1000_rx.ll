; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_au1000_eth.c_au1000_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.au1000_private = type { i64, %struct.rx_dma**, %struct.db_dest** }
%struct.rx_dma = type { i32, i32 }
%struct.db_dest = type { i32, i64 }
%struct.sk_buff = type { i32 }

@rx_status = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"au1000_rx head %d\0A\00", align 1
@RX_T_DONE = common dso_local global i32 0, align 4
@RX_ERROR = common dso_local global i32 0, align 4
@RX_FRAME_LEN_MASK = common dso_local global i32 0, align 4
@au1000_debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rx_error(s):\00", align 1
@RX_MISSED_FRAME = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c" miss\00", align 1
@RX_WDOG_TIMER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" wdog\00", align 1
@RX_RUNT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" runt\00", align 1
@RX_OVERLEN = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [9 x i8] c" overlen\00", align 1
@RX_COLL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [6 x i8] c" coll\00", align 1
@RX_MII_ERROR = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [11 x i8] c" mii error\00", align 1
@RX_CRC_ERROR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c" crc error\00", align 1
@RX_LEN_ERROR = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [11 x i8] c" len error\00", align 1
@RX_U_CNTRL_FRAME = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [17 x i8] c" u control frame\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@RX_DMA_ENABLE = common dso_local global i32 0, align 4
@NUM_RX_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @au1000_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @au1000_rx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.au1000_private*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.rx_dma*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.db_dest*, align 8
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.au1000_private* @netdev_priv(%struct.net_device* %10)
  store %struct.au1000_private* %11, %struct.au1000_private** %3, align 8
  %12 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %13 = load i32, i32* @rx_status, align 4
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %16 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @netif_dbg(%struct.au1000_private* %12, i32 %13, %struct.net_device* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %20 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %19, i32 0, i32 1
  %21 = load %struct.rx_dma**, %struct.rx_dma*** %20, align 8
  %22 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %23 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = getelementptr inbounds %struct.rx_dma*, %struct.rx_dma** %21, i64 %24
  %26 = load %struct.rx_dma*, %struct.rx_dma** %25, align 8
  store %struct.rx_dma* %26, %struct.rx_dma** %5, align 8
  %27 = load %struct.rx_dma*, %struct.rx_dma** %5, align 8
  %28 = getelementptr inbounds %struct.rx_dma, %struct.rx_dma* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %6, align 4
  br label %30

30:                                               ; preds = %162, %66, %1
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @RX_T_DONE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %192

35:                                               ; preds = %30
  %36 = load %struct.rx_dma*, %struct.rx_dma** %5, align 8
  %37 = getelementptr inbounds %struct.rx_dma, %struct.rx_dma* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %7, align 4
  %39 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %40 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %39, i32 0, i32 2
  %41 = load %struct.db_dest**, %struct.db_dest*** %40, align 8
  %42 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %43 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.db_dest*, %struct.db_dest** %41, i64 %44
  %46 = load %struct.db_dest*, %struct.db_dest** %45, align 8
  store %struct.db_dest* %46, %struct.db_dest** %8, align 8
  %47 = load %struct.net_device*, %struct.net_device** %2, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @au1000_update_rx_stats(%struct.net_device* %47, i32 %48)
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @RX_ERROR, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %92, label %54

54:                                               ; preds = %35
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* @RX_FRAME_LEN_MASK, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = sub nsw i32 %58, 4
  store i32 %59, i32* %9, align 4
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 2
  %63 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %60, i32 %62)
  store %struct.sk_buff* %63, %struct.sk_buff** %4, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = icmp eq %struct.sk_buff* %64, null
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 4
  br label %30

72:                                               ; preds = %54
  %73 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %74 = call i32 @skb_reserve(%struct.sk_buff* %73, i32 2)
  %75 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %76 = load %struct.db_dest*, %struct.db_dest** %8, align 8
  %77 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = inttoptr i64 %78 to i8*
  %80 = load i32, i32* %9, align 4
  %81 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %75, i8* %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @skb_put(%struct.sk_buff* %82, i32 %83)
  %85 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %86 = load %struct.net_device*, %struct.net_device** %2, align 8
  %87 = call i32 @eth_type_trans(%struct.sk_buff* %85, %struct.net_device* %86)
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %91 = call i32 @netif_rx(%struct.sk_buff* %90)
  br label %162

92:                                               ; preds = %35
  %93 = load i32, i32* @au1000_debug, align 4
  %94 = icmp sgt i32 %93, 4
  br i1 %94, label %95, label %161

95:                                               ; preds = %92
  %96 = call i32 @pr_err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* @RX_MISSED_FRAME, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %103

103:                                              ; preds = %101, %95
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @RX_WDOG_TIMER, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %103
  %109 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %103
  %111 = load i32, i32* %7, align 4
  %112 = load i32, i32* @RX_RUNT, align 4
  %113 = and i32 %111, %112
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %110
  %116 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %117

117:                                              ; preds = %115, %110
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* @RX_OVERLEN, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %124

122:                                              ; preds = %117
  %123 = call i32 @pr_cont(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %124

124:                                              ; preds = %122, %117
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @RX_COLL, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %124
  %130 = call i32 @pr_cont(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  br label %131

131:                                              ; preds = %129, %124
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @RX_MII_ERROR, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %131
  %137 = call i32 @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.7, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %131
  %139 = load i32, i32* %7, align 4
  %140 = load i32, i32* @RX_CRC_ERROR, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %138
  %144 = call i32 @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  br label %145

145:                                              ; preds = %143, %138
  %146 = load i32, i32* %7, align 4
  %147 = load i32, i32* @RX_LEN_ERROR, align 4
  %148 = and i32 %146, %147
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = call i32 @pr_cont(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0))
  br label %152

152:                                              ; preds = %150, %145
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* @RX_U_CNTRL_FRAME, align 4
  %155 = and i32 %153, %154
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %152
  %158 = call i32 @pr_cont(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.10, i64 0, i64 0))
  br label %159

159:                                              ; preds = %157, %152
  %160 = call i32 @pr_cont(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i64 0, i64 0))
  br label %161

161:                                              ; preds = %159, %92
  br label %162

162:                                              ; preds = %161, %72
  %163 = load %struct.db_dest*, %struct.db_dest** %8, align 8
  %164 = getelementptr inbounds %struct.db_dest, %struct.db_dest* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @RX_DMA_ENABLE, align 4
  %167 = or i32 %165, %166
  %168 = load %struct.rx_dma*, %struct.rx_dma** %5, align 8
  %169 = getelementptr inbounds %struct.rx_dma, %struct.rx_dma* %168, i32 0, i32 0
  store i32 %167, i32* %169, align 4
  %170 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %171 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %172, 1
  %174 = load i32, i32* @NUM_RX_DMA, align 4
  %175 = sub nsw i32 %174, 1
  %176 = sext i32 %175 to i64
  %177 = and i64 %173, %176
  %178 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %179 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %178, i32 0, i32 0
  store i64 %177, i64* %179, align 8
  %180 = call i32 (...) @wmb()
  %181 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %182 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %181, i32 0, i32 1
  %183 = load %struct.rx_dma**, %struct.rx_dma*** %182, align 8
  %184 = load %struct.au1000_private*, %struct.au1000_private** %3, align 8
  %185 = getelementptr inbounds %struct.au1000_private, %struct.au1000_private* %184, i32 0, i32 0
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds %struct.rx_dma*, %struct.rx_dma** %183, i64 %186
  %188 = load %struct.rx_dma*, %struct.rx_dma** %187, align 8
  store %struct.rx_dma* %188, %struct.rx_dma** %5, align 8
  %189 = load %struct.rx_dma*, %struct.rx_dma** %5, align 8
  %190 = getelementptr inbounds %struct.rx_dma, %struct.rx_dma* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  store i32 %191, i32* %6, align 4
  br label %30

192:                                              ; preds = %30
  ret i32 0
}

declare dso_local %struct.au1000_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_dbg(%struct.au1000_private*, i32, %struct.net_device*, i8*, i64) #1

declare dso_local i32 @au1000_update_rx_stats(%struct.net_device*, i32) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_cont(i8*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
