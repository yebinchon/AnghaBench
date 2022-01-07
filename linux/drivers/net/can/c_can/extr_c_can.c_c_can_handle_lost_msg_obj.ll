; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_handle_lost_msg_obj.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_handle_lost_msg_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32, i32)* }
%struct.can_frame = type { i32*, i32 }
%struct.sk_buff = type { i32 }

@IF_MCONT_MSGLST = common dso_local global i32 0, align 4
@IF_MCONT_INTPND = common dso_local global i32 0, align 4
@IF_MCONT_NEWDAT = common dso_local global i32 0, align 4
@MSGCTRL_REG = common dso_local global i32 0, align 4
@IF_COMM_CONTROL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_OVERFLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32, i32)* @c_can_handle_lost_msg_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_handle_lost_msg_obj(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_device_stats*, align 8
  %11 = alloca %struct.c_can_priv*, align 8
  %12 = alloca %struct.can_frame*, align 8
  %13 = alloca %struct.sk_buff*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %10, align 8
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.c_can_priv* %17, %struct.c_can_priv** %11, align 8
  %18 = load i32, i32* @IF_MCONT_MSGLST, align 4
  %19 = load i32, i32* @IF_MCONT_INTPND, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @IF_MCONT_NEWDAT, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load %struct.c_can_priv*, %struct.c_can_priv** %11, align 8
  %27 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %26, i32 0, i32 0
  %28 = load i32 (%struct.c_can_priv*, i32, i32)*, i32 (%struct.c_can_priv*, i32, i32)** %27, align 8
  %29 = load %struct.c_can_priv*, %struct.c_can_priv** %11, align 8
  %30 = load i32, i32* @MSGCTRL_REG, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @C_CAN_IFACE(i32 %30, i32 %31)
  %33 = load i32, i32* %9, align 4
  %34 = call i32 %28(%struct.c_can_priv* %29, i32 %32, i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @IF_COMM_CONTROL, align 4
  %39 = call i32 @c_can_object_put(%struct.net_device* %35, i32 %36, i32 %37, i32 %38)
  %40 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %41 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = load %struct.net_device_stats*, %struct.net_device_stats** %10, align 8
  %45 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load %struct.net_device*, %struct.net_device** %6, align 8
  %49 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %48, %struct.can_frame** %12)
  store %struct.sk_buff* %49, %struct.sk_buff** %13, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %51 = icmp ne %struct.sk_buff* %50, null
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i64 @unlikely(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %70

57:                                               ; preds = %4
  %58 = load i32, i32* @CAN_ERR_CRTL, align 4
  %59 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %60 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 8
  %63 = load i32, i32* @CAN_ERR_CRTL_RX_OVERFLOW, align 4
  %64 = load %struct.can_frame*, %struct.can_frame** %12, align 8
  %65 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 %63, i32* %67, align 4
  %68 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  %69 = call i32 @netif_receive_skb(%struct.sk_buff* %68)
  store i32 1, i32* %5, align 4
  br label %70

70:                                               ; preds = %57, %56
  %71 = load i32, i32* %5, align 4
  ret i32 %71
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @C_CAN_IFACE(i32, i32) #1

declare dso_local i32 @c_can_object_put(%struct.net_device*, i32, i32, i32) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
