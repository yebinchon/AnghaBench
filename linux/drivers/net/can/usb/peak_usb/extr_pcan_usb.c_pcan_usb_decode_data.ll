; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_decode_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/peak_usb/extr_pcan_usb.c_pcan_usb_decode_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcan_usb_msg_context = type { i32, i64, %struct.TYPE_6__*, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32, i32, i32* }
%struct.skb_shared_hwtstamps = type { i32 }

@PCAN_USB_STATUSLEN_DLC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PCAN_USB_STATUSLEN_EXT_ID = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@PCAN_USB_STATUSLEN_RTR = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcan_usb_msg_context*, i32)* @pcan_usb_decode_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcan_usb_decode_data(%struct.pcan_usb_msg_context* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcan_usb_msg_context*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.can_frame*, align 8
  %9 = alloca %struct.skb_shared_hwtstamps*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcan_usb_msg_context* %0, %struct.pcan_usb_msg_context** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @PCAN_USB_STATUSLEN_DLC, align 4
  %14 = and i32 %12, %13
  store i32 %14, i32* %6, align 4
  %15 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %16 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call %struct.sk_buff* @alloc_can_skb(%struct.TYPE_6__* %17, %struct.can_frame** %8)
  store %struct.sk_buff* %18, %struct.sk_buff** %7, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %180

24:                                               ; preds = %2
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @PCAN_USB_STATUSLEN_EXT_ID, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %56

29:                                               ; preds = %24
  %30 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %31 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %32, 4
  %34 = sext i32 %33 to i64
  %35 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %36 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %34, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %175

40:                                               ; preds = %29
  %41 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %42 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @memcpy(i32* %10, i32 %43, i32 4)
  %45 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %46 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = add nsw i32 %47, 4
  store i32 %48, i32* %46, align 8
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @le32_to_cpu(i32 %49)
  %51 = ashr i32 %50, 3
  %52 = load i32, i32* @CAN_EFF_FLAG, align 4
  %53 = or i32 %51, %52
  %54 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %55 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  br label %81

56:                                               ; preds = %24
  %57 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %58 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = add nsw i32 %59, 2
  %61 = sext i32 %60 to i64
  %62 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %63 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp sgt i64 %61, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %56
  br label %175

67:                                               ; preds = %56
  %68 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %69 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32* %11, i32 %70, i32 2)
  %72 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %73 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, 2
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @le16_to_cpu(i32 %76)
  %78 = ashr i32 %77, 5
  %79 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %80 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  br label %81

81:                                               ; preds = %67, %40
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @get_can_dlc(i32 %82)
  %84 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %85 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %87 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %88 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = zext i1 %91 to i32
  %93 = call i64 @pcan_usb_decode_ts(%struct.pcan_usb_msg_context* %86, i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %81
  br label %175

96:                                               ; preds = %81
  %97 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %98 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %97, i32 0, i32 5
  %99 = load i32, i32* %98, align 8
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 8
  %101 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %102 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = call i32 @memset(i32* %103, i32 0, i32 8)
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* @PCAN_USB_STATUSLEN_RTR, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %96
  %110 = load i32, i32* @CAN_RTR_FLAG, align 4
  %111 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %112 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %143

115:                                              ; preds = %96
  %116 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %117 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %123 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %122, i32 0, i32 1
  %124 = load i64, i64* %123, align 8
  %125 = icmp sgt i64 %121, %124
  br i1 %125, label %126, label %127

126:                                              ; preds = %115
  br label %175

127:                                              ; preds = %115
  %128 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %129 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %128, i32 0, i32 2
  %130 = load i32*, i32** %129, align 8
  %131 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %132 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %135 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @memcpy(i32* %130, i32 %133, i32 %136)
  %138 = load i32, i32* %6, align 4
  %139 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %140 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, %138
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %127, %109
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %144)
  store %struct.skb_shared_hwtstamps* %145, %struct.skb_shared_hwtstamps** %9, align 8
  %146 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %147 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %146, i32 0, i32 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 0
  %150 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %151 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %150, i32 0, i32 3
  %152 = load i32, i32* %151, align 8
  %153 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %9, align 8
  %154 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %153, i32 0, i32 0
  %155 = call i32 @peak_usb_get_ts_time(i32* %149, i32 %152, i32* %154)
  %156 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %157 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %156, i32 0, i32 2
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %160, align 4
  %163 = load %struct.can_frame*, %struct.can_frame** %8, align 8
  %164 = getelementptr inbounds %struct.can_frame, %struct.can_frame* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.pcan_usb_msg_context*, %struct.pcan_usb_msg_context** %4, align 8
  %167 = getelementptr inbounds %struct.pcan_usb_msg_context, %struct.pcan_usb_msg_context* %166, i32 0, i32 2
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = add nsw i32 %171, %165
  store i32 %172, i32* %170, align 4
  %173 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %174 = call i32 @netif_rx(%struct.sk_buff* %173)
  store i32 0, i32* %3, align 4
  br label %180

175:                                              ; preds = %126, %95, %66, %39
  %176 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %177 = call i32 @dev_kfree_skb(%struct.sk_buff* %176)
  %178 = load i32, i32* @EINVAL, align 4
  %179 = sub nsw i32 0, %178
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %175, %143, %21
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.TYPE_6__*, %struct.can_frame**) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i64 @pcan_usb_decode_ts(%struct.pcan_usb_msg_context*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @peak_usb_get_ts_time(i32*, i32, i32*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @dev_kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
