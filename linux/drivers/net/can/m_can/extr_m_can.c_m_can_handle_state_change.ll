; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/m_can/extr_m_can.c_m_can_handle_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.m_can_classdev = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.can_frame = type { i32*, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.can_berr_counter = type { i32, i32 }

@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@M_CAN_ECR = common dso_local global i32 0, align 4
@ECR_RP = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @m_can_handle_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m_can_handle_state_change(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.m_can_classdev*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.can_berr_counter, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.m_can_classdev* @netdev_priv(%struct.net_device* %12)
  store %struct.m_can_classdev* %13, %struct.m_can_classdev** %6, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  store %struct.net_device_stats* %15, %struct.net_device_stats** %7, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %52 [
    i32 129, label %17
    i32 128, label %28
    i32 130, label %38
  ]

17:                                               ; preds = %2
  %18 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %19 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %25 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %26 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  br label %53

28:                                               ; preds = %2
  %29 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %30 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %36 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 128, i32* %37, align 4
  br label %53

38:                                               ; preds = %2
  %39 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %40 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  store i32 130, i32* %41, align 4
  %42 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %43 = call i32 @m_can_disable_all_interrupts(%struct.m_can_classdev* %42)
  %44 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %45 = getelementptr inbounds %struct.m_can_classdev, %struct.m_can_classdev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 4
  %50 = load %struct.net_device*, %struct.net_device** %4, align 8
  %51 = call i32 @can_bus_off(%struct.net_device* %50)
  br label %53

52:                                               ; preds = %2
  br label %53

53:                                               ; preds = %52, %38, %28, %17
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %54, %struct.can_frame** %8)
  store %struct.sk_buff* %55, %struct.sk_buff** %9, align 8
  %56 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %57 = icmp ne %struct.sk_buff* %56, null
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %169

63:                                               ; preds = %53
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i32 @__m_can_get_berr_counter(%struct.net_device* %64, %struct.can_berr_counter* %10)
  %66 = load i32, i32* %5, align 4
  switch i32 %66, label %152 [
    i32 129, label %67
    i32 128, label %100
    i32 130, label %146
  ]

67:                                               ; preds = %63
  %68 = load i32, i32* @CAN_ERR_CRTL, align 4
  %69 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %70 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  %73 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = icmp sgt i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %67
  %79 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  br label %82

80:                                               ; preds = %67
  %81 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi i32 [ %79, %78 ], [ %81, %80 ]
  %84 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %85 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %83, i32* %87, align 4
  %88 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %91 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 6
  store i32 %89, i32* %93, align 4
  %94 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %97 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 7
  store i32 %95, i32* %99, align 4
  br label %153

100:                                              ; preds = %63
  %101 = load i32, i32* @CAN_ERR_CRTL, align 4
  %102 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %103 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = or i32 %104, %101
  store i32 %105, i32* %103, align 8
  %106 = load %struct.m_can_classdev*, %struct.m_can_classdev** %6, align 8
  %107 = load i32, i32* @M_CAN_ECR, align 4
  %108 = call i32 @m_can_read(%struct.m_can_classdev* %106, i32 %107)
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* @ECR_RP, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %100
  %114 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %115 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %116 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %113, %100
  %122 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp sgt i32 %123, 127
  br i1 %124, label %125, label %133

125:                                              ; preds = %121
  %126 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %127 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %128 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, %126
  store i32 %132, i32* %130, align 4
  br label %133

133:                                              ; preds = %125, %121
  %134 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %137 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 6
  store i32 %135, i32* %139, align 4
  %140 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %10, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %143 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %142, i32 0, i32 0
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 7
  store i32 %141, i32* %145, align 4
  br label %153

146:                                              ; preds = %63
  %147 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %148 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %149 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %148, i32 0, i32 2
  %150 = load i32, i32* %149, align 8
  %151 = or i32 %150, %147
  store i32 %151, i32* %149, align 8
  br label %153

152:                                              ; preds = %63
  br label %153

153:                                              ; preds = %152, %146, %133, %82
  %154 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %155 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %155, align 4
  %158 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %159 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %162 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %160
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %162, align 4
  %167 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %168 = call i32 @netif_receive_skb(%struct.sk_buff* %167)
  store i32 1, i32* %3, align 4
  br label %169

169:                                              ; preds = %153, %62
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local %struct.m_can_classdev* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @m_can_disable_all_interrupts(%struct.m_can_classdev*) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__m_can_get_berr_counter(%struct.net_device*, %struct.can_berr_counter*) #1

declare dso_local i32 @m_can_read(%struct.m_can_classdev*, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
