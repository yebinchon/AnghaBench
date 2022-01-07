; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_read_msg_object.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/c_can/extr_c_can.c_c_can_read_msg_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.c_can_priv = type { i32 (%struct.c_can_priv*, i32)*, i64, i32 (%struct.c_can_priv*, i32)* }
%struct.can_frame = type { i32, i32, i32* }
%struct.sk_buff = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ARB1_REG = common dso_local global i32 0, align 4
@IF_ARB_MSGXTD = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@IF_ARB_TRANSMIT = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@DATA1_REG = common dso_local global i32 0, align 4
@BOSCH_D_CAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @c_can_read_msg_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @c_can_read_msg_object(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.net_device_stats*, align 8
  %9 = alloca %struct.c_can_priv*, align 8
  %10 = alloca %struct.can_frame*, align 8
  %11 = alloca %struct.sk_buff*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.net_device*, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  store %struct.net_device_stats* %17, %struct.net_device_stats** %8, align 8
  %18 = load %struct.net_device*, %struct.net_device** %5, align 8
  %19 = call %struct.c_can_priv* @netdev_priv(%struct.net_device* %18)
  store %struct.c_can_priv* %19, %struct.c_can_priv** %9, align 8
  %20 = load %struct.net_device*, %struct.net_device** %5, align 8
  %21 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %20, %struct.can_frame** %10)
  store %struct.sk_buff* %21, %struct.sk_buff** %11, align 8
  %22 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %23 = icmp ne %struct.sk_buff* %22, null
  br i1 %23, label %31, label %24

24:                                               ; preds = %3
  %25 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %26 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %189

31:                                               ; preds = %3
  %32 = load i32, i32* %7, align 4
  %33 = and i32 %32, 15
  %34 = call i32 @get_can_dlc(i32 %33)
  %35 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %36 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %38 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %37, i32 0, i32 0
  %39 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %38, align 8
  %40 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %41 = load i32, i32* @ARB1_REG, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @C_CAN_IFACE(i32 %41, i32 %42)
  %44 = call i32 %39(%struct.c_can_priv* %40, i32 %43)
  store i32 %44, i32* %12, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* @IF_ARB_MSGXTD, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %57

49:                                               ; preds = %31
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @CAN_EFF_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @CAN_EFF_FLAG, align 4
  %54 = or i32 %52, %53
  %55 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %56 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  br label %64

57:                                               ; preds = %31
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %58, 18
  %60 = load i32, i32* @CAN_SFF_MASK, align 4
  %61 = and i32 %59, %60
  %62 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %63 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %57, %49
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @IF_ARB_TRANSMIT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load i32, i32* @CAN_RTR_FLAG, align 4
  %71 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %72 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %175

75:                                               ; preds = %64
  %76 = load i32, i32* @DATA1_REG, align 4
  %77 = load i32, i32* %6, align 4
  %78 = call i32 @C_CAN_IFACE(i32 %76, i32 %77)
  store i32 %78, i32* %15, align 4
  %79 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %80 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @BOSCH_D_CAN, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %138

84:                                               ; preds = %75
  store i32 0, i32* %14, align 4
  br label %85

85:                                               ; preds = %132, %84
  %86 = load i32, i32* %14, align 4
  %87 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %88 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %137

91:                                               ; preds = %85
  %92 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %93 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %92, i32 0, i32 0
  %94 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %93, align 8
  %95 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %96 = load i32, i32* %15, align 4
  %97 = call i32 %94(%struct.c_can_priv* %95, i32 %96)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %100 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = load i32, i32* %14, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 %98, i32* %104, align 4
  %105 = load i32, i32* %13, align 4
  %106 = ashr i32 %105, 8
  %107 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %108 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %14, align 4
  %111 = add nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  store i32 %106, i32* %113, align 4
  %114 = load i32, i32* %13, align 4
  %115 = ashr i32 %114, 16
  %116 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %117 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %14, align 4
  %120 = add nsw i32 %119, 2
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %118, i64 %121
  store i32 %115, i32* %122, align 4
  %123 = load i32, i32* %13, align 4
  %124 = ashr i32 %123, 24
  %125 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %126 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %14, align 4
  %129 = add nsw i32 %128, 3
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %127, i64 %130
  store i32 %124, i32* %131, align 4
  br label %132

132:                                              ; preds = %91
  %133 = load i32, i32* %14, align 4
  %134 = add nsw i32 %133, 4
  store i32 %134, i32* %14, align 4
  %135 = load i32, i32* %15, align 4
  %136 = add nsw i32 %135, 2
  store i32 %136, i32* %15, align 4
  br label %85

137:                                              ; preds = %85
  br label %174

138:                                              ; preds = %75
  store i32 0, i32* %14, align 4
  br label %139

139:                                              ; preds = %168, %138
  %140 = load i32, i32* %14, align 4
  %141 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %142 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp slt i32 %140, %143
  br i1 %144, label %145, label %173

145:                                              ; preds = %139
  %146 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %147 = getelementptr inbounds %struct.c_can_priv, %struct.c_can_priv* %146, i32 0, i32 2
  %148 = load i32 (%struct.c_can_priv*, i32)*, i32 (%struct.c_can_priv*, i32)** %147, align 8
  %149 = load %struct.c_can_priv*, %struct.c_can_priv** %9, align 8
  %150 = load i32, i32* %15, align 4
  %151 = call i32 %148(%struct.c_can_priv* %149, i32 %150)
  store i32 %151, i32* %13, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %154 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %153, i32 0, i32 2
  %155 = load i32*, i32** %154, align 8
  %156 = load i32, i32* %14, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %155, i64 %157
  store i32 %152, i32* %158, align 4
  %159 = load i32, i32* %13, align 4
  %160 = ashr i32 %159, 8
  %161 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %162 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %161, i32 0, i32 2
  %163 = load i32*, i32** %162, align 8
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %163, i64 %166
  store i32 %160, i32* %167, align 4
  br label %168

168:                                              ; preds = %145
  %169 = load i32, i32* %14, align 4
  %170 = add nsw i32 %169, 2
  store i32 %170, i32* %14, align 4
  %171 = load i32, i32* %15, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %15, align 4
  br label %139

173:                                              ; preds = %139
  br label %174

174:                                              ; preds = %173, %137
  br label %175

175:                                              ; preds = %174, %69
  %176 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %177 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = load %struct.can_frame*, %struct.can_frame** %10, align 8
  %181 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = load %struct.net_device_stats*, %struct.net_device_stats** %8, align 8
  %184 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %182
  store i32 %186, i32* %184, align 4
  %187 = load %struct.sk_buff*, %struct.sk_buff** %11, align 8
  %188 = call i32 @netif_receive_skb(%struct.sk_buff* %187)
  store i32 0, i32* %4, align 4
  br label %189

189:                                              ; preds = %175, %24
  %190 = load i32, i32* %4, align 4
  ret i32 %190
}

declare dso_local %struct.c_can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @C_CAN_IFACE(i32, i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
