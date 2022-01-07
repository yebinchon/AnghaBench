; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4ican_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_sun4i_can.c_sun4ican_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { i32 }
%struct.sun4ican_priv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.can_frame = type { i32, i32, i32* }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@SUN4I_MSG_RTR_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@SUN4I_MSG_EFF_FLAG = common dso_local global i32 0, align 4
@SUN4I_REG_BUF5_ADDR = common dso_local global i32 0, align 4
@SUN4I_REG_BUF1_ADDR = common dso_local global i32 0, align 4
@SUN4I_REG_BUF2_ADDR = common dso_local global i32 0, align 4
@SUN4I_REG_BUF3_ADDR = common dso_local global i32 0, align 4
@SUN4I_REG_BUF4_ADDR = common dso_local global i32 0, align 4
@SUN4I_REG_BUF0_ADDR = common dso_local global i32 0, align 4
@CAN_CTRLMODE_LOOPBACK = common dso_local global i32 0, align 4
@SUN4I_CMD_SELF_RCV_REQ = common dso_local global i32 0, align 4
@SUN4I_CMD_TRANS_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @sun4ican_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun4ican_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sun4ican_priv*, align 8
  %7 = alloca %struct.can_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.sun4ican_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.sun4ican_priv* %14, %struct.sun4ican_priv** %6, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.can_frame*
  store %struct.can_frame* %18, %struct.can_frame** %7, align 8
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i64 @can_dropped_invalid_skb(%struct.net_device* %19, %struct.sk_buff* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %24, i32* %3, align 4
  br label %162

25:                                               ; preds = %2
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 @netif_stop_queue(%struct.net_device* %26)
  %28 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %29 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %11, align 4
  %31 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %32 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @CAN_RTR_FLAG, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %25
  %40 = load i32, i32* @SUN4I_MSG_RTR_FLAG, align 4
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  br label %43

43:                                               ; preds = %39, %25
  %44 = load i32, i32* %11, align 4
  %45 = load i32, i32* @CAN_EFF_FLAG, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %89

48:                                               ; preds = %43
  %49 = load i32, i32* @SUN4I_MSG_EFF_FLAG, align 4
  %50 = load i32, i32* %10, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @SUN4I_REG_BUF5_ADDR, align 4
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %11, align 4
  %54 = ashr i32 %53, 21
  %55 = and i32 %54, 255
  %56 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %57 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @SUN4I_REG_BUF1_ADDR, align 4
  %60 = add nsw i32 %58, %59
  %61 = call i32 @writel(i32 %55, i32 %60)
  %62 = load i32, i32* %11, align 4
  %63 = ashr i32 %62, 13
  %64 = and i32 %63, 255
  %65 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %66 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SUN4I_REG_BUF2_ADDR, align 4
  %69 = add nsw i32 %67, %68
  %70 = call i32 @writel(i32 %64, i32 %69)
  %71 = load i32, i32* %11, align 4
  %72 = ashr i32 %71, 5
  %73 = and i32 %72, 255
  %74 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %75 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @SUN4I_REG_BUF3_ADDR, align 4
  %78 = add nsw i32 %76, %77
  %79 = call i32 @writel(i32 %73, i32 %78)
  %80 = load i32, i32* %11, align 4
  %81 = shl i32 %80, 3
  %82 = and i32 %81, 248
  %83 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %84 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @SUN4I_REG_BUF4_ADDR, align 4
  %87 = add nsw i32 %85, %86
  %88 = call i32 @writel(i32 %82, i32 %87)
  br label %109

89:                                               ; preds = %43
  %90 = load i32, i32* @SUN4I_REG_BUF3_ADDR, align 4
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %11, align 4
  %92 = ashr i32 %91, 3
  %93 = and i32 %92, 255
  %94 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %95 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SUN4I_REG_BUF1_ADDR, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @writel(i32 %93, i32 %98)
  %100 = load i32, i32* %11, align 4
  %101 = shl i32 %100, 5
  %102 = and i32 %101, 224
  %103 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %104 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @SUN4I_REG_BUF2_ADDR, align 4
  %107 = add nsw i32 %105, %106
  %108 = call i32 @writel(i32 %102, i32 %107)
  br label %109

109:                                              ; preds = %89, %48
  store i32 0, i32* %12, align 4
  br label %110

110:                                              ; preds = %131, %109
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %8, align 4
  %113 = icmp slt i32 %111, %112
  br i1 %113, label %114, label %134

114:                                              ; preds = %110
  %115 = load %struct.can_frame*, %struct.can_frame** %7, align 8
  %116 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %115, i32 0, i32 2
  %117 = load i32*, i32** %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds i32, i32* %117, i64 %119
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %123 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %9, align 4
  %126 = load i32, i32* %12, align 4
  %127 = mul nsw i32 %126, 4
  %128 = add nsw i32 %125, %127
  %129 = add nsw i32 %124, %128
  %130 = call i32 @writel(i32 %121, i32 %129)
  br label %131

131:                                              ; preds = %114
  %132 = load i32, i32* %12, align 4
  %133 = add nsw i32 %132, 1
  store i32 %133, i32* %12, align 4
  br label %110

134:                                              ; preds = %110
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %137 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @SUN4I_REG_BUF0_ADDR, align 4
  %140 = add nsw i32 %138, %139
  %141 = call i32 @writel(i32 %135, i32 %140)
  %142 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %143 = load %struct.net_device*, %struct.net_device** %5, align 8
  %144 = call i32 @can_put_echo_skb(%struct.sk_buff* %142, %struct.net_device* %143, i32 0)
  %145 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %146 = getelementptr inbounds %struct.sun4ican_priv, %struct.sun4ican_priv* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @CAN_CTRLMODE_LOOPBACK, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %156

152:                                              ; preds = %134
  %153 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %154 = load i32, i32* @SUN4I_CMD_SELF_RCV_REQ, align 4
  %155 = call i32 @sun4i_can_write_cmdreg(%struct.sun4ican_priv* %153, i32 %154)
  br label %160

156:                                              ; preds = %134
  %157 = load %struct.sun4ican_priv*, %struct.sun4ican_priv** %6, align 8
  %158 = load i32, i32* @SUN4I_CMD_TRANS_REQ, align 4
  %159 = call i32 @sun4i_can_write_cmdreg(%struct.sun4ican_priv* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %152
  %161 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %161, i32* %3, align 4
  br label %162

162:                                              ; preds = %160, %23
  %163 = load i32, i32* %3, align 4
  ret i32 %163
}

declare dso_local %struct.sun4ican_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i32) #1

declare dso_local i32 @sun4i_can_write_cmdreg(%struct.sun4ican_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
