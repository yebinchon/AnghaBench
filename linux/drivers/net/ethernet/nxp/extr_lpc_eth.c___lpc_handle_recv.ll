; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_handle_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/nxp/extr_lpc_eth.c___lpc_handle_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.netdata_local = type { i32, i64, %struct.rx_status_t* }
%struct.rx_status_t = type { i32 }
%struct.sk_buff = type { i32 }

@RXSTATUS_SIZE = common dso_local global i32 0, align 4
@RXSTATUS_ERROR = common dso_local global i64 0, align 8
@RXSTATUS_STATUS_ERROR = common dso_local global i64 0, align 8
@RXSTATUS_RANGE = common dso_local global i64 0, align 8
@RXSTATUS_OVERRUN = common dso_local global i32 0, align 4
@RXSTATUS_CRC = common dso_local global i32 0, align 4
@RXSTATUS_LENGTH = common dso_local global i32 0, align 4
@ENET_MAXF_SIZE = common dso_local global i64 0, align 8
@ENET_RX_DESC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @__lpc_handle_recv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__lpc_handle_recv(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.netdata_local*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rx_status_t*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.netdata_local* @netdev_priv(%struct.net_device* %13)
  store %struct.netdata_local* %14, %struct.netdata_local** %5, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.netdata_local*, %struct.netdata_local** %5, align 8
  %16 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @LPC_ENET_RXCONSUMEINDEX(i32 %17)
  %19 = call i64 @readl(i32 %18)
  store i64 %19, i64* %7, align 8
  br label %20

20:                                               ; preds = %175, %2
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %4, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %20
  %25 = load i64, i64* %7, align 8
  %26 = load %struct.netdata_local*, %struct.netdata_local** %5, align 8
  %27 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @LPC_ENET_RXPRODUCEINDEX(i32 %28)
  %30 = call i64 @readl(i32 %29)
  %31 = icmp ne i64 %25, %30
  br label %32

32:                                               ; preds = %24, %20
  %33 = phi i1 [ false, %20 ], [ %31, %24 ]
  br i1 %33, label %34, label %184

34:                                               ; preds = %32
  %35 = load %struct.netdata_local*, %struct.netdata_local** %5, align 8
  %36 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %35, i32 0, i32 2
  %37 = load %struct.rx_status_t*, %struct.rx_status_t** %36, align 8
  %38 = load i64, i64* %7, align 8
  %39 = getelementptr inbounds %struct.rx_status_t, %struct.rx_status_t* %37, i64 %38
  store %struct.rx_status_t* %39, %struct.rx_status_t** %10, align 8
  %40 = load %struct.rx_status_t*, %struct.rx_status_t** %10, align 8
  %41 = getelementptr inbounds %struct.rx_status_t, %struct.rx_status_t* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @RXSTATUS_SIZE, align 4
  %44 = and i32 %42, %43
  %45 = add nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  store i64 %46, i64* %8, align 8
  %47 = load %struct.rx_status_t*, %struct.rx_status_t** %10, align 8
  %48 = getelementptr inbounds %struct.rx_status_t, %struct.rx_status_t* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %9, align 8
  %51 = load i64, i64* %9, align 8
  %52 = load i64, i64* @RXSTATUS_ERROR, align 8
  %53 = load i64, i64* @RXSTATUS_STATUS_ERROR, align 8
  %54 = or i64 %52, %53
  %55 = and i64 %51, %54
  %56 = load i64, i64* @RXSTATUS_ERROR, align 8
  %57 = load i64, i64* @RXSTATUS_RANGE, align 8
  %58 = or i64 %56, %57
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %65

60:                                               ; preds = %34
  %61 = load i64, i64* @RXSTATUS_ERROR, align 8
  %62 = xor i64 %61, -1
  %63 = load i64, i64* %9, align 8
  %64 = and i64 %63, %62
  store i64 %64, i64* %9, align 8
  br label %65

65:                                               ; preds = %60, %34
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* @RXSTATUS_ERROR, align 8
  %68 = and i64 %66, %67
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %127

70:                                               ; preds = %65
  %71 = load %struct.rx_status_t*, %struct.rx_status_t** %10, align 8
  %72 = getelementptr inbounds %struct.rx_status_t, %struct.rx_status_t* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = load i32, i32* @RXSTATUS_OVERRUN, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %70
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 6
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  br label %121

84:                                               ; preds = %70
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* @RXSTATUS_CRC, align 4
  %87 = and i32 %85, %86
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.net_device*, %struct.net_device** %3, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  br label %120

95:                                               ; preds = %84
  %96 = load i32, i32* %12, align 4
  %97 = load i32, i32* @RXSTATUS_LENGTH, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %95
  %101 = load %struct.net_device*, %struct.net_device** %3, align 8
  %102 = getelementptr inbounds %struct.net_device, %struct.net_device* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 4
  br label %119

106:                                              ; preds = %95
  %107 = load i32, i32* %12, align 4
  %108 = sext i32 %107 to i64
  %109 = load i64, i64* @RXSTATUS_ERROR, align 8
  %110 = and i64 %108, %109
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %118

112:                                              ; preds = %106
  %113 = load %struct.net_device*, %struct.net_device** %3, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %112, %106
  br label %119

119:                                              ; preds = %118, %100
  br label %120

120:                                              ; preds = %119, %89
  br label %121

121:                                              ; preds = %120, %78
  %122 = load %struct.net_device*, %struct.net_device** %3, align 8
  %123 = getelementptr inbounds %struct.net_device, %struct.net_device* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 8
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %124, align 8
  br label %168

127:                                              ; preds = %65
  %128 = load i64, i64* %8, align 8
  %129 = call %struct.sk_buff* @dev_alloc_skb(i64 %128)
  store %struct.sk_buff* %129, %struct.sk_buff** %6, align 8
  %130 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %131 = icmp ne %struct.sk_buff* %130, null
  br i1 %131, label %138, label %132

132:                                              ; preds = %127
  %133 = load %struct.net_device*, %struct.net_device** %3, align 8
  %134 = getelementptr inbounds %struct.net_device, %struct.net_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 4
  br label %167

138:                                              ; preds = %127
  %139 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %140 = load %struct.netdata_local*, %struct.netdata_local** %5, align 8
  %141 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %140, i32 0, i32 1
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %7, align 8
  %144 = load i64, i64* @ENET_MAXF_SIZE, align 8
  %145 = mul i64 %143, %144
  %146 = add i64 %142, %145
  %147 = load i64, i64* %8, align 8
  %148 = call i32 @skb_put_data(%struct.sk_buff* %139, i64 %146, i64 %147)
  %149 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %150 = load %struct.net_device*, %struct.net_device** %3, align 8
  %151 = call i32 @eth_type_trans(%struct.sk_buff* %149, %struct.net_device* %150)
  %152 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %153 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %155 = call i32 @netif_receive_skb(%struct.sk_buff* %154)
  %156 = load %struct.net_device*, %struct.net_device** %3, align 8
  %157 = getelementptr inbounds %struct.net_device, %struct.net_device* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %158, align 8
  %161 = load i64, i64* %8, align 8
  %162 = load %struct.net_device*, %struct.net_device** %3, align 8
  %163 = getelementptr inbounds %struct.net_device, %struct.net_device* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = add i64 %165, %161
  store i64 %166, i64* %164, align 8
  br label %167

167:                                              ; preds = %138, %132
  br label %168

168:                                              ; preds = %167, %121
  %169 = load i64, i64* %7, align 8
  %170 = add i64 %169, 1
  store i64 %170, i64* %7, align 8
  %171 = load i64, i64* %7, align 8
  %172 = load i64, i64* @ENET_RX_DESC, align 8
  %173 = icmp uge i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %168
  store i64 0, i64* %7, align 8
  br label %175

175:                                              ; preds = %174, %168
  %176 = load i64, i64* %7, align 8
  %177 = load %struct.netdata_local*, %struct.netdata_local** %5, align 8
  %178 = getelementptr inbounds %struct.netdata_local, %struct.netdata_local* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = call i32 @LPC_ENET_RXCONSUMEINDEX(i32 %179)
  %181 = call i32 @writel(i64 %176, i32 %180)
  %182 = load i32, i32* %11, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %11, align 4
  br label %20

184:                                              ; preds = %32
  %185 = load i32, i32* %11, align 4
  ret i32 %185
}

declare dso_local %struct.netdata_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i32 @LPC_ENET_RXCONSUMEINDEX(i32) #1

declare dso_local i32 @LPC_ENET_RXPRODUCEINDEX(i32) #1

declare dso_local %struct.sk_buff* @dev_alloc_skb(i64) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i64, i64) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i32 @writel(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
