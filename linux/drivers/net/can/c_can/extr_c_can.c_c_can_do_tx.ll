; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_do_tx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_do_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32)*, i32*, i32 }

@C_CAN_INTPND2_REG = common dso_local global i32 0, align 4
@C_CAN_MSG_OBJ_TX_FIRST = common dso_local global i32 0, align 4
@IF_RX = common dso_local global i32 0, align 4
@C_CAN_MSG_OBJ_TX_NUM = common dso_local global i32 0, align 4
@CAN_LED_EVENT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @c_can_do_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c_can_do_tx(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.c_can_priv*, align 8
  %4 = alloca %struct.net_device_stats*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.c_can_priv* %12, %struct.c_can_priv** %3, align 8
  %13 = load %struct.net_device*, %struct.net_device** %2, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %4, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %16 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %15, i32 0, i32 0
  %17 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %16, align 8
  %18 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %19 = load i32, i32* @C_CAN_INTPND2_REG, align 4
  %20 = call i32 %17(%struct.c_can_priv* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  store i32 %20, i32* %10, align 4
  br label %21

21:                                               ; preds = %25, %1
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @ffs(i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %54

25:                                               ; preds = %21
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, -1
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 1, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %9, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @C_CAN_MSG_OBJ_TX_FIRST, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = load i32, i32* @IF_RX, align 4
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @c_can_inval_tx_object(%struct.net_device* %36, i32 %37, i32 %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = load i32, i32* %5, align 4
  %42 = call i32 @can_get_echo_skb(%struct.net_device* %40, i32 %41)
  %43 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %44 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %7, align 4
  br label %21

54:                                               ; preds = %21
  %55 = load i32, i32* %10, align 4
  %56 = load %struct.c_can_priv*, %struct.c_can_priv** %3, align 8
  %57 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %56, i32 0, i32 2
  %58 = call i32 @atomic_sub(i32 %55, i32* %57)
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* @C_CAN_MSG_OBJ_TX_NUM, align 4
  %61 = sub nsw i32 %60, 1
  %62 = shl i32 1, %61
  %63 = and i32 %59, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %54
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = call i32 @netif_wake_queue(%struct.net_device* %66)
  br label %68

68:                                               ; preds = %65, %54
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %85

71:                                               ; preds = %68
  %72 = load i32, i32* %8, align 4
  %73 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %74 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %72
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.net_device_stats*, %struct.net_device_stats** %4, align 8
  %79 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %80, %77
  store i32 %81, i32* %79, align 4
  %82 = load %struct.net_device*, %struct.net_device** %2, align 8
  %83 = load i32, i32* @CAN_LED_EVENT_TX, align 4
  %84 = call i32 @can_led_event(%struct.net_device* %82, i32 %83)
  br label %85

85:                                               ; preds = %71, %68
  ret void
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ffs(i32) #1

declare dso_local i32 @c_can_inval_tx_object(%struct.net_device*, i32, i32) #1

declare dso_local i32 @can_get_echo_skb(%struct.net_device*, i32) #1

declare dso_local i32 @atomic_sub(i32, i32*) #1

declare dso_local i32 @netif_wake_queue(%struct.net_device*) #1

declare dso_local i32 @can_led_event(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
