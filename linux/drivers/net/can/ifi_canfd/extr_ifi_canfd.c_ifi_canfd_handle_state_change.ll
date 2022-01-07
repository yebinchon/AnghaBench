; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_handle_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/ifi_canfd/extr_ifi_canfd.c_ifi_canfd_handle_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.ifi_canfd_priv = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.can_frame = type { i32*, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.can_berr_counter = type { i32, i32 }

@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ifi_canfd_handle_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifi_canfd_handle_state_change(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifi_canfd_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.can_berr_counter, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device* %11)
  store %struct.ifi_canfd_priv* %12, %struct.ifi_canfd_priv** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  store %struct.net_device_stats* %14, %struct.net_device_stats** %7, align 8
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %60 [
    i32 130, label %16
    i32 128, label %26
    i32 129, label %36
    i32 131, label %46
  ]

16:                                               ; preds = %2
  %17 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %18 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %24 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  store i32 130, i32* %25, align 4
  br label %61

26:                                               ; preds = %2
  %27 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %28 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %34 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  store i32 128, i32* %35, align 4
  br label %61

36:                                               ; preds = %2
  %37 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %38 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %44 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  store i32 129, i32* %45, align 4
  br label %61

46:                                               ; preds = %2
  %47 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %48 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 131, i32* %49, align 4
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @ifi_canfd_irq_enable(%struct.net_device* %50, i32 0)
  %52 = load %struct.ifi_canfd_priv*, %struct.ifi_canfd_priv** %6, align 8
  %53 = getelementptr inbounds %struct.ifi_canfd_priv, %struct.ifi_canfd_priv* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @can_bus_off(%struct.net_device* %58)
  br label %61

60:                                               ; preds = %2
  br label %61

61:                                               ; preds = %60, %46, %36, %26, %16
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %62, %struct.can_frame** %8)
  store %struct.sk_buff* %63, %struct.sk_buff** %9, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %65 = icmp ne %struct.sk_buff* %64, null
  %66 = xor i1 %65, true
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  store i32 0, i32* %3, align 4
  br label %168

71:                                               ; preds = %61
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = call i32 @ifi_canfd_get_berr_counter(%struct.net_device* %72, %struct.can_berr_counter* %10)
  %74 = load i32, i32* %5, align 4
  switch i32 %74, label %151 [
    i32 128, label %75
    i32 129, label %108
    i32 131, label %145
  ]

75:                                               ; preds = %71
  %76 = load i32, i32* @CAN_ERR_CRTL, align 4
  %77 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %78 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  %81 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp sgt i32 %82, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %75
  %87 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  br label %90

88:                                               ; preds = %75
  %89 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %93 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 %91, i32* %95, align 4
  %96 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %99 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 6
  store i32 %97, i32* %101, align 4
  %102 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %105 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %104, i32 0, i32 0
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 7
  store i32 %103, i32* %107, align 4
  br label %152

108:                                              ; preds = %71
  %109 = load i32, i32* @CAN_ERR_CRTL, align 4
  %110 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %111 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 8
  %113 = or i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %115 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %116 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  %121 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = icmp sgt i32 %122, 127
  br i1 %123, label %124, label %132

124:                                              ; preds = %108
  %125 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %126 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %127 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %125
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %124, %108
  %133 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %136 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = getelementptr inbounds i32, i32* %137, i64 6
  store i32 %134, i32* %138, align 4
  %139 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %142 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 7
  store i32 %140, i32* %144, align 4
  br label %152

145:                                              ; preds = %71
  %146 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %147 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %148 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 8
  br label %152

151:                                              ; preds = %71
  br label %152

152:                                              ; preds = %151, %145, %132, %90
  %153 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %154 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 4
  %157 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %158 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %157, i32 0, i32 1
  %159 = load i64, i64* %158, align 8
  %160 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %161 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = sext i32 %162 to i64
  %164 = add nsw i64 %163, %159
  %165 = trunc i64 %164 to i32
  store i32 %165, i32* %161, align 4
  %166 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %167 = call i32 @netif_receive_skb(%struct.sk_buff* %166)
  store i32 1, i32* %3, align 4
  br label %168

168:                                              ; preds = %152, %70
  %169 = load i32, i32* %3, align 4
  ret i32 %169
}

declare dso_local %struct.ifi_canfd_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ifi_canfd_irq_enable(%struct.net_device*, i32) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ifi_canfd_get_berr_counter(%struct.net_device*, %struct.can_berr_counter*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
