; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_handle_state_change.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_handle_state_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32)*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.can_frame = type { i32*, i64, i32 }
%struct.sk_buff = type { i32 }
%struct.can_berr_counter = type { i32, i32 }

@CAN_STATE_ERROR_ACTIVE = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_WARNING = common dso_local global i32 0, align 4
@CAN_STATE_ERROR_PASSIVE = common dso_local global i32 0, align 4
@CAN_STATE_BUS_OFF = common dso_local global i32 0, align 4
@C_CAN_ERR_CNT_REG = common dso_local global i32 0, align 4
@ERR_CNT_RP_MASK = common dso_local global i32 0, align 4
@ERR_CNT_RP_SHIFT = common dso_local global i32 0, align 4
@CAN_ERR_CRTL = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_ACTIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_WARNING = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_RX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_CRTL_TX_PASSIVE = common dso_local global i32 0, align 4
@CAN_ERR_BUSOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @c_can_handle_state_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_handle_state_change(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.c_can_priv*, align 8
  %9 = alloca %struct.net_device_stats*, align 8
  %10 = alloca %struct.can_frame*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca %struct.can_berr_counter, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.c_can_priv* %14, %struct.c_can_priv** %8, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %9, align 8
  %17 = load i32, i32* %5, align 4
  switch i32 %17, label %56 [
    i32 128, label %18
    i32 129, label %23
    i32 130, label %34
    i32 131, label %45
  ]

18:                                               ; preds = %2
  %19 = load i32, i32* @CAN_STATE_ERROR_ACTIVE, align 4
  %20 = load %struct.c_can_priv*, %struct.c_can_priv** %8, align 8
  %21 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  store i32 %19, i32* %22, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load %struct.c_can_priv*, %struct.c_can_priv** %8, align 8
  %25 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 8
  %30 = load i32, i32* @CAN_STATE_ERROR_WARNING, align 4
  %31 = load %struct.c_can_priv*, %struct.c_can_priv** %8, align 8
  %32 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  store i32 %30, i32* %33, align 4
  br label %57

34:                                               ; preds = %2
  %35 = load %struct.c_can_priv*, %struct.c_can_priv** %8, align 8
  %36 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %38, align 4
  %41 = load i32, i32* @CAN_STATE_ERROR_PASSIVE, align 4
  %42 = load %struct.c_can_priv*, %struct.c_can_priv** %8, align 8
  %43 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  br label %57

45:                                               ; preds = %2
  %46 = load i32, i32* @CAN_STATE_BUS_OFF, align 4
  %47 = load %struct.c_can_priv*, %struct.c_can_priv** %8, align 8
  %48 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  store i32 %46, i32* %49, align 4
  %50 = load %struct.c_can_priv*, %struct.c_can_priv** %8, align 8
  %51 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 8
  br label %57

56:                                               ; preds = %2
  br label %57

57:                                               ; preds = %56, %45, %34, %23, %18
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call %struct.sk_buff* @alloc_can_err_skb(%struct.net_device* %58, %struct.can_frame** %10)
  store %struct.sk_buff* %59, %struct.sk_buff** %11, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %61 = icmp ne %struct.sk_buff* %60, null
  %62 = xor i1 %61, true
  %63 = zext i1 %62 to i32
  %64 = call i64 @unlikely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %57
  store i32 0, i32* %3, align 4
  br label %204

67:                                               ; preds = %57
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = call i32 @__c_can_get_berr_counter(%struct.net_device* %68, %struct.can_berr_counter* %12)
  %70 = load %struct.c_can_priv*, %struct.c_can_priv** %8, align 8
  %71 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %70, i32 0, i32 0
  %72 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %71, align 8
  %73 = load %struct.c_can_priv*, %struct.c_can_priv** %8, align 8
  %74 = load i32, i32* @C_CAN_ERR_CNT_REG, align 4
  %75 = call i32 %72(%struct.c_can_priv* %73, i32 %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ERR_CNT_RP_MASK, align 4
  %78 = and i32 %76, %77
  %79 = load i32, i32* @ERR_CNT_RP_SHIFT, align 4
  %80 = lshr i32 %78, %79
  store i32 %80, i32* %7, align 4
  %81 = load i32, i32* %5, align 4
  switch i32 %81, label %187 [
    i32 128, label %82
    i32 129, label %105
    i32 130, label %138
    i32 131, label %179
  ]

82:                                               ; preds = %67
  %83 = load i32, i32* @CAN_ERR_CRTL, align 4
  %84 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %85 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  %88 = load i32, i32* @CAN_ERR_CRTL_ACTIVE, align 4
  %89 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %90 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 %88, i32* %92, align 4
  %93 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %96 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 6
  store i32 %94, i32* %98, align 4
  %99 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %102 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 7
  store i32 %100, i32* %104, align 4
  br label %188

105:                                              ; preds = %67
  %106 = load i32, i32* @CAN_ERR_CRTL, align 4
  %107 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %108 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = or i32 %109, %106
  store i32 %110, i32* %108, align 8
  %111 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp sgt i32 %112, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %105
  %117 = load i32, i32* @CAN_ERR_CRTL_TX_WARNING, align 4
  br label %120

118:                                              ; preds = %105
  %119 = load i32, i32* @CAN_ERR_CRTL_RX_WARNING, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  %122 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %123 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 %121, i32* %125, align 4
  %126 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %129 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 6
  store i32 %127, i32* %131, align 4
  %132 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %135 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 7
  store i32 %133, i32* %137, align 4
  br label %188

138:                                              ; preds = %67
  %139 = load i32, i32* @CAN_ERR_CRTL, align 4
  %140 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %141 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 8
  %143 = or i32 %142, %139
  store i32 %143, i32* %141, align 8
  %144 = load i32, i32* %7, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %138
  %147 = load i32, i32* @CAN_ERR_CRTL_RX_PASSIVE, align 4
  %148 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %149 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %148, i32 0, i32 0
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 1
  %152 = load i32, i32* %151, align 4
  %153 = or i32 %152, %147
  store i32 %153, i32* %151, align 4
  br label %154

154:                                              ; preds = %146, %138
  %155 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  %156 = load i32, i32* %155, align 4
  %157 = icmp sgt i32 %156, 127
  br i1 %157, label %158, label %166

158:                                              ; preds = %154
  %159 = load i32, i32* @CAN_ERR_CRTL_TX_PASSIVE, align 4
  %160 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %161 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = or i32 %164, %159
  store i32 %165, i32* %163, align 4
  br label %166

166:                                              ; preds = %158, %154
  %167 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %170 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %169, i32 0, i32 0
  %171 = load i32*, i32** %170, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 6
  store i32 %168, i32* %172, align 4
  %173 = getelementptr inbounds %struct.can_berr_counter, %struct.can_berr_counter* %12, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %176 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %175, i32 0, i32 0
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 7
  store i32 %174, i32* %178, align 4
  br label %188

179:                                              ; preds = %67
  %180 = load i32, i32* @CAN_ERR_BUSOFF, align 4
  %181 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %182 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 8
  %185 = load %struct.net_device*, %struct.net_device** %4, align 8
  %186 = call i32 @can_bus_off(%struct.net_device* %185)
  br label %188

187:                                              ; preds = %67
  br label %188

188:                                              ; preds = %187, %179, %166, %120, %82
  %189 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %190 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  %192 = add nsw i32 %191, 1
  store i32 %192, i32* %190, align 4
  %193 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %194 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = load %struct.net_device_stats*, %struct.net_device_stats** %9, align 8
  %197 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = sext i32 %198 to i64
  %200 = add nsw i64 %199, %195
  %201 = trunc i64 %200 to i32
  store i32 %201, i32* %197, align 4
  %202 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %203 = call i32 @netif_receive_skb(%struct.sk_buff* %202)
  store i32 1, i32* %3, align 4
  br label %204

204:                                              ; preds = %188, %66
  %205 = load i32, i32* %3, align 4
  ret i32 %205
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_err_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @__c_can_get_berr_counter(%struct.net_device*, %struct.can_berr_counter*) #1

declare dso_local i32 @can_bus_off(%struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
