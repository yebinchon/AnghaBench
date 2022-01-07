; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_start_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_at91_can.c_at91_start_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32 }
%struct.at91_priv = type { i32 }
%struct.can_frame = type { i32, i32, i64 }

@NETDEV_TX_OK = common dso_local global i32 0, align 4
@AT91_MSR_MRDY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"BUG! TX buffer full when queue awake!\0A\00", align 1
@NETDEV_TX_BUSY = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@AT91_MCR_MRTR = common dso_local global i32 0, align 4
@AT91_MCR_MTCR = common dso_local global i32 0, align 4
@AT91_MB_MODE_DISABLED = common dso_local global i32 0, align 4
@AT91_MB_MODE_TX = common dso_local global i32 0, align 4
@AT91_IER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @at91_start_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @at91_start_xmit(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.at91_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.at91_priv* %14, %struct.at91_priv** %6, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %18 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.can_frame*
  store %struct.can_frame* %20, %struct.can_frame** %8, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = call i64 @can_dropped_invalid_skb(%struct.net_device* %21, %struct.sk_buff* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %26, i32* %3, align 4
  br label %156

27:                                               ; preds = %2
  %28 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %29 = call i32 @get_tx_next_mb(%struct.at91_priv* %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %31 = call i32 @get_tx_next_prio(%struct.at91_priv* %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @AT91_MSR(i32 %33)
  %35 = call i32 @at91_read(%struct.at91_priv* %32, i32 %34)
  %36 = load i32, i32* @AT91_MSR_MRDY, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @unlikely(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %27
  %44 = load %struct.net_device*, %struct.net_device** %5, align 8
  %45 = call i32 @netif_stop_queue(%struct.net_device* %44)
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @NETDEV_TX_BUSY, align 4
  store i32 %48, i32* %3, align 4
  br label %156

49:                                               ; preds = %27
  %50 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %51 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @at91_can_id_to_reg_mid(i32 %52)
  store i32 %53, i32* %11, align 4
  %54 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %55 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* @CAN_RTR_FLAG, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %49
  %61 = load i32, i32* @AT91_MCR_MRTR, align 4
  br label %63

62:                                               ; preds = %49
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  %65 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %66 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = shl i32 %67, 16
  %69 = or i32 %64, %68
  %70 = load i32, i32* @AT91_MCR_MTCR, align 4
  %71 = or i32 %69, %70
  store i32 %71, i32* %12, align 4
  %72 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %73 = load i32, i32* %9, align 4
  %74 = load i32, i32* @AT91_MB_MODE_DISABLED, align 4
  %75 = call i32 @set_mb_mode(%struct.at91_priv* %72, i32 %73, i32 %74)
  %76 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @AT91_MID(i32 %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @at91_write(%struct.at91_priv* %76, i32 %78, i32 %79)
  %81 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @AT91_MB_MODE_TX, align 4
  %84 = load i32, i32* %10, align 4
  %85 = call i32 @set_mb_mode_prio(%struct.at91_priv* %81, i32 %82, i32 %83, i32 %84)
  %86 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @AT91_MDL(i32 %87)
  %89 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %90 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = add nsw i64 %91, 0
  %93 = inttoptr i64 %92 to i32*
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @at91_write(%struct.at91_priv* %86, i32 %88, i32 %94)
  %96 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @AT91_MDH(i32 %97)
  %99 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %100 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = add nsw i64 %101, 4
  %103 = inttoptr i64 %102 to i32*
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @at91_write(%struct.at91_priv* %96, i32 %98, i32 %104)
  %106 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @AT91_MCR(i32 %107)
  %109 = load i32, i32* %12, align 4
  %110 = call i32 @at91_write(%struct.at91_priv* %106, i32 %108, i32 %109)
  %111 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %112 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %115 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, %113
  store i32 %117, i32* %115, align 4
  %118 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %119 = load %struct.net_device*, %struct.net_device** %5, align 8
  %120 = load i32, i32* %9, align 4
  %121 = zext i32 %120 to i64
  %122 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %123 = call i64 @get_mb_tx_first(%struct.at91_priv* %122)
  %124 = sub nsw i64 %121, %123
  %125 = call i32 @can_put_echo_skb(%struct.sk_buff* %118, %struct.net_device* %119, i64 %124)
  %126 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %127 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  %130 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %131 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %132 = call i32 @get_tx_next_mb(%struct.at91_priv* %131)
  %133 = call i32 @AT91_MSR(i32 %132)
  %134 = call i32 @at91_read(%struct.at91_priv* %130, i32 %133)
  %135 = load i32, i32* @AT91_MSR_MRDY, align 4
  %136 = and i32 %134, %135
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %146

138:                                              ; preds = %63
  %139 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %140 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %143 = call i32 @get_next_mask(%struct.at91_priv* %142)
  %144 = and i32 %141, %143
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %149

146:                                              ; preds = %138, %63
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  %148 = call i32 @netif_stop_queue(%struct.net_device* %147)
  br label %149

149:                                              ; preds = %146, %138
  %150 = load %struct.at91_priv*, %struct.at91_priv** %6, align 8
  %151 = load i32, i32* @AT91_IER, align 4
  %152 = load i32, i32* %9, align 4
  %153 = shl i32 1, %152
  %154 = call i32 @at91_write(%struct.at91_priv* %150, i32 %151, i32 %153)
  %155 = load i32, i32* @NETDEV_TX_OK, align 4
  store i32 %155, i32* %3, align 4
  br label %156

156:                                              ; preds = %149, %43, %25
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @can_dropped_invalid_skb(%struct.net_device*, %struct.sk_buff*) #1

declare dso_local i32 @get_tx_next_mb(%struct.at91_priv*) #1

declare dso_local i32 @get_tx_next_prio(%struct.at91_priv*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @at91_read(%struct.at91_priv*, i32) #1

declare dso_local i32 @AT91_MSR(i32) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @at91_can_id_to_reg_mid(i32) #1

declare dso_local i32 @set_mb_mode(%struct.at91_priv*, i32, i32) #1

declare dso_local i32 @at91_write(%struct.at91_priv*, i32, i32) #1

declare dso_local i32 @AT91_MID(i32) #1

declare dso_local i32 @set_mb_mode_prio(%struct.at91_priv*, i32, i32, i32) #1

declare dso_local i32 @AT91_MDL(i32) #1

declare dso_local i32 @AT91_MDH(i32) #1

declare dso_local i32 @AT91_MCR(i32) #1

declare dso_local i32 @can_put_echo_skb(%struct.sk_buff*, %struct.net_device*, i64) #1

declare dso_local i64 @get_mb_tx_first(%struct.at91_priv*) #1

declare dso_local i32 @get_next_mask(%struct.at91_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
