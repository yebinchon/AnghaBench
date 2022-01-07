; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ezchip/extr_nps_enet.c_nps_enet_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.nps_enet_priv = type { i32 }

@NPS_ENET_ENABLE = common dso_local global i32 0, align 4
@RX_RDY_SHIFT = common dso_local global i32 0, align 4
@TX_DONE_SHIFT = common dso_local global i32 0, align 4
@NPS_ENET_REG_BUF_INT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @nps_enet_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nps_enet_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nps_enet_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %10 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %9, i32 0, i32 0
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.nps_enet_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.nps_enet_priv* %13, %struct.nps_enet_priv** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call i32 @nps_enet_tx_handler(%struct.net_device* %14)
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = call i32 @nps_enet_rx_handler(%struct.net_device* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %51

21:                                               ; preds = %2
  %22 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i64 @napi_complete_done(%struct.napi_struct* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %51

26:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  %27 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %28 = load i32, i32* @RX_RDY_SHIFT, align 4
  %29 = shl i32 %27, %28
  %30 = load i32, i32* %8, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* @NPS_ENET_ENABLE, align 4
  %33 = load i32, i32* @TX_DONE_SHIFT, align 4
  %34 = shl i32 %32, %33
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %6, align 8
  %38 = load i32, i32* @NPS_ENET_REG_BUF_INT_ENABLE, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %37, i32 %38, i32 %39)
  %41 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %6, align 8
  %42 = call i64 @nps_enet_is_tx_pending(%struct.nps_enet_priv* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %26
  %45 = load %struct.nps_enet_priv*, %struct.nps_enet_priv** %6, align 8
  %46 = load i32, i32* @NPS_ENET_REG_BUF_INT_ENABLE, align 4
  %47 = call i32 @nps_enet_reg_set(%struct.nps_enet_priv* %45, i32 %46, i32 0)
  %48 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %49 = call i32 @napi_reschedule(%struct.napi_struct* %48)
  br label %50

50:                                               ; preds = %44, %26
  br label %51

51:                                               ; preds = %50, %21, %2
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local %struct.nps_enet_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nps_enet_tx_handler(%struct.net_device*) #1

declare dso_local i32 @nps_enet_rx_handler(%struct.net_device*) #1

declare dso_local i64 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @nps_enet_reg_set(%struct.nps_enet_priv*, i32, i32) #1

declare dso_local i64 @nps_enet_is_tx_pending(%struct.nps_enet_priv*) #1

declare dso_local i32 @napi_reschedule(%struct.napi_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
