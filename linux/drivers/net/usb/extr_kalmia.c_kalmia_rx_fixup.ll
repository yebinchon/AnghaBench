; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_kalmia.c_kalmia_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }
%struct.sk_buff = type { i32, i32* }

@kalmia_rx_fixup.HEADER_END_OF_USB_PACKET = internal constant [6 x i32] [i32 87, i32 90, i32 0, i32 0, i32 8, i32 0], align 16
@kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_1 = internal constant [6 x i32] [i32 87, i32 67, i32 30, i32 0, i32 21, i32 2], align 16
@kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_2 = internal constant [6 x i32] [i32 87, i32 80, i32 14, i32 0, i32 0, i32 0], align 16
@KALMIA_HEADER_LENGTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [67 x i8] c"Received expected unknown frame header: %6phC. Package length: %i\0A\00", align 1
@.str.1 = private unnamed_addr constant [58 x i8] c"Received unknown frame header: %6phC. Package length: %i\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Received header: %6phC. Package length: %i\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"Correct package length #%i\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"End header: %6phC. Package length: %i\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @kalmia_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kalmia_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %175

18:                                               ; preds = %2
  br label %19

19:                                               ; preds = %169, %18
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %20 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %21 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  store i32* %22, i32** %8, align 8
  %23 = load i32*, i32** %8, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 87
  br i1 %26, label %32, label %27

27:                                               ; preds = %19
  %28 = load i32*, i32** %8, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 68
  br label %32

32:                                               ; preds = %27, %19
  %33 = phi i1 [ true, %19 ], [ %31, %27 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %68

37:                                               ; preds = %32
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @memcmp(i32* %38, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_1, i64 0, i64 0), i32 24)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i32*, i32** %8, align 8
  %43 = call i64 @memcmp(i32* %42, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @kalmia_rx_fixup.EXPECTED_UNKNOWN_HEADER_2, i64 0, i64 0), i32 24)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %56, label %45

45:                                               ; preds = %41, %37
  %46 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %47 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %8, align 8
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %54 = sub nsw i32 %52, %53
  %55 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %48, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), i32* %49, i32 %54)
  br label %67

56:                                               ; preds = %41
  %57 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %58 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32*, i32** %8, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %65 = sub nsw i32 %63, %64
  %66 = call i32 @netdev_err(i32 %59, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.1, i64 0, i64 0), i32* %60, i32 %65)
  store i32 0, i32* %3, align 4
  br label %175

67:                                               ; preds = %45
  br label %79

68:                                               ; preds = %32
  %69 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %70 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %77 = sub nsw i32 %75, %76
  %78 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %71, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32* %72, i32 %77)
  br label %79

79:                                               ; preds = %68, %67
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %84 = mul nsw i32 2, %83
  %85 = sub nsw i32 %82, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 2
  %88 = call i32 @get_unaligned_le16(i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %90 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %91 = call i32 @skb_pull(%struct.sk_buff* %89, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %10, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %99

95:                                               ; preds = %79
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %98 = add nsw i32 %96, %97
  store i32 %98, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %135

99:                                               ; preds = %79
  %100 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %101 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %6, align 4
  %104 = add nsw i32 %103, 1
  %105 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %102, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %104)
  %106 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %107 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %10, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = call i64 @memcmp(i32* %111, i32* getelementptr inbounds ([6 x i32], [6 x i32]* @kalmia_rx_fixup.HEADER_END_OF_USB_PACKET, i64 0, i64 0), i32 24)
  %113 = icmp eq i64 %112, 0
  %114 = zext i1 %113 to i32
  store i32 %114, i32* %11, align 4
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %134, label %117

117:                                              ; preds = %99
  %118 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %119 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %10, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32* %123, i32** %8, align 8
  %124 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %125 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32*, i32** %8, align 8
  %128 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %129 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = load i32, i32* @KALMIA_HEADER_LENGTH, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 (i32, i8*, ...) @netdev_dbg(i32 %126, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0), i32* %127, i32 %132)
  br label %134

134:                                              ; preds = %117, %99
  br label %135

135:                                              ; preds = %134, %95
  %136 = load i32, i32* %11, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  store %struct.sk_buff* %139, %struct.sk_buff** %7, align 8
  br label %152

140:                                              ; preds = %135
  %141 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %142 = load i32, i32* @GFP_ATOMIC, align 4
  %143 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %141, i32 %142)
  store %struct.sk_buff* %143, %struct.sk_buff** %7, align 8
  %144 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %145 = icmp ne %struct.sk_buff* %144, null
  %146 = xor i1 %145, true
  %147 = zext i1 %146 to i32
  %148 = call i64 @unlikely(i32 %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %140
  store i32 0, i32* %3, align 4
  br label %175

151:                                              ; preds = %140
  br label %152

152:                                              ; preds = %151, %138
  %153 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %154 = load i32, i32* %10, align 4
  %155 = call i32 @skb_trim(%struct.sk_buff* %153, i32 %154)
  %156 = load i32, i32* %11, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %159

158:                                              ; preds = %152
  store i32 1, i32* %3, align 4
  br label %175

159:                                              ; preds = %152
  %160 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %162 = call i32 @usbnet_skb_return(%struct.usbnet* %160, %struct.sk_buff* %161)
  %163 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %164 = load i32, i32* %10, align 4
  %165 = call i32 @skb_pull(%struct.sk_buff* %163, i32 %164)
  br label %166

166:                                              ; preds = %159
  %167 = load i32, i32* %6, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %6, align 4
  br label %169

169:                                              ; preds = %166
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %19, label %174

174:                                              ; preds = %169
  store i32 1, i32* %3, align 4
  br label %175

175:                                              ; preds = %174, %158, %150, %56, %17
  %176 = load i32, i32* %3, align 4
  ret i32 %176
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, ...) #1

declare dso_local i32 @netdev_err(i32, i8*, i32*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
