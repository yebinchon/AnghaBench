; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc75xx.c_smsc75xx_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i8*, i32 }

@RXW_PADDING = common dso_local global i32 0, align 4
@RX_CMD_A_LEN = common dso_local global i32 0, align 4
@RX_CMD_A_RED = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Error rx_cmd_a=0x%08x\0A\00", align 1
@RX_CMD_A_FCS = common dso_local global i32 0, align 4
@RX_CMD_A_LONG = common dso_local global i32 0, align 4
@RX_CMD_A_RUNT = common dso_local global i32 0, align 4
@MAX_SINGLE_PACKET_SIZE = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"size err rx_cmd_a=0x%08x\0A\00", align 1
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Error allocating skb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @smsc75xx_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc75xx_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %16 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %15, i32 0, i32 0
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %14, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %218

22:                                               ; preds = %2
  br label %23

23:                                               ; preds = %216, %22
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sgt i64 %26, 0
  br i1 %27, label %28, label %217

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %30 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %29, i32 0, i32 1
  %31 = load i8*, i8** %30, align 8
  %32 = call i32 @get_unaligned_le32(i8* %31)
  store i32 %32, i32* %6, align 4
  %33 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %34 = call i32 @skb_pull(%struct.sk_buff* %33, i32 4)
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i8*, i8** %36, align 8
  %38 = call i32 @get_unaligned_le32(i8* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = load i32, i32* @RXW_PADDING, align 4
  %41 = add nsw i32 4, %40
  %42 = call i32 @skb_pull(%struct.sk_buff* %39, i32 %41)
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i8*, i8** %44, align 8
  store i8* %45, i8** %11, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @RX_CMD_A_LEN, align 4
  %48 = and i32 %46, %47
  %49 = load i32, i32* @RXW_PADDING, align 4
  %50 = sub nsw i32 %48, %49
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @RXW_PADDING, align 4
  %53 = add nsw i32 %51, %52
  %54 = srem i32 %53, 4
  %55 = sub nsw i32 4, %54
  %56 = srem i32 %55, 4
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @RX_CMD_A_RED, align 4
  %59 = and i32 %57, %58
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %113

62:                                               ; preds = %28
  %63 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %64 = load i32, i32* @rx_err, align 4
  %65 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %66 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %65, i32 0, i32 0
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %66, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @netif_dbg(%struct.usbnet* %63, i32 %64, %struct.TYPE_5__* %67, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %68)
  %70 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %71 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %70, i32 0, i32 0
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %78 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 8
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @RX_CMD_A_FCS, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %62
  %89 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %90 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %89, i32 0, i32 0
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %93, align 4
  br label %112

96:                                               ; preds = %62
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @RX_CMD_A_LONG, align 4
  %99 = load i32, i32* @RX_CMD_A_RUNT, align 4
  %100 = or i32 %98, %99
  %101 = and i32 %97, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %96
  %104 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %105 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %104, i32 0, i32 0
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 8
  br label %111

111:                                              ; preds = %103, %96
  br label %112

112:                                              ; preds = %111, %88
  br label %204

113:                                              ; preds = %28
  %114 = load i32, i32* %9, align 4
  %115 = load i32, i32* @MAX_SINGLE_PACKET_SIZE, align 4
  %116 = load i32, i32* @ETH_HLEN, align 4
  %117 = add nsw i32 %115, %116
  %118 = add nsw i32 %117, 12
  %119 = icmp sgt i32 %114, %118
  %120 = zext i1 %119 to i32
  %121 = call i64 @unlikely(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %131

123:                                              ; preds = %113
  %124 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %125 = load i32, i32* @rx_err, align 4
  %126 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %127 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %126, i32 0, i32 0
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %127, align 8
  %129 = load i32, i32* %6, align 4
  %130 = call i32 @netif_dbg(%struct.usbnet* %124, i32 %125, %struct.TYPE_5__* %128, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %129)
  store i32 0, i32* %3, align 4
  br label %218

131:                                              ; preds = %113
  %132 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %133 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  %137 = icmp eq i64 %134, %136
  br i1 %137, label %138, label %157

138:                                              ; preds = %131
  %139 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %7, align 4
  %143 = call i32 @smsc75xx_rx_csum_offload(%struct.usbnet* %139, %struct.sk_buff* %140, i32 %141, i32 %142)
  %144 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %145 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %146 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = sub nsw i64 %147, 4
  %149 = trunc i64 %148 to i32
  %150 = call i32 @skb_trim(%struct.sk_buff* %144, i32 %149)
  %151 = load i32, i32* %9, align 4
  %152 = sext i32 %151 to i64
  %153 = add i64 %152, 24
  %154 = trunc i64 %153 to i32
  %155 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %156 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %155, i32 0, i32 2
  store i32 %154, i32* %156, align 8
  store i32 1, i32* %3, align 4
  br label %218

157:                                              ; preds = %131
  %158 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %159 = load i32, i32* @GFP_ATOMIC, align 4
  %160 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %158, i32 %159)
  store %struct.sk_buff* %160, %struct.sk_buff** %10, align 8
  %161 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %162 = icmp ne %struct.sk_buff* %161, null
  %163 = xor i1 %162, true
  %164 = zext i1 %163 to i32
  %165 = call i64 @unlikely(i32 %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %172

167:                                              ; preds = %157
  %168 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %169 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %168, i32 0, i32 0
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %169, align 8
  %171 = call i32 @netdev_warn(%struct.TYPE_5__* %170, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %218

172:                                              ; preds = %157
  %173 = load i32, i32* %9, align 4
  %174 = sext i32 %173 to i64
  %175 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %176 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %175, i32 0, i32 0
  store i64 %174, i64* %176, align 8
  %177 = load i8*, i8** %11, align 8
  %178 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %179 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %178, i32 0, i32 1
  store i8* %177, i8** %179, align 8
  %180 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %181 = load i32, i32* %9, align 4
  %182 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %180, i32 %181)
  %183 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %184 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %185 = load i32, i32* %6, align 4
  %186 = load i32, i32* %7, align 4
  %187 = call i32 @smsc75xx_rx_csum_offload(%struct.usbnet* %183, %struct.sk_buff* %184, i32 %185, i32 %186)
  %188 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %189 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = sub nsw i64 %191, 4
  %193 = trunc i64 %192 to i32
  %194 = call i32 @skb_trim(%struct.sk_buff* %188, i32 %193)
  %195 = load i32, i32* %9, align 4
  %196 = sext i32 %195 to i64
  %197 = add i64 %196, 24
  %198 = trunc i64 %197 to i32
  %199 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %200 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %199, i32 0, i32 2
  store i32 %198, i32* %200, align 8
  %201 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %202 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %203 = call i32 @usbnet_skb_return(%struct.usbnet* %201, %struct.sk_buff* %202)
  br label %204

204:                                              ; preds = %172, %112
  %205 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %206 = load i32, i32* %9, align 4
  %207 = call i32 @skb_pull(%struct.sk_buff* %205, i32 %206)
  %208 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %209 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = icmp ne i64 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %204
  %213 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @skb_pull(%struct.sk_buff* %213, i32 %214)
  br label %216

216:                                              ; preds = %212, %204
  br label %23

217:                                              ; preds = %23
  store i32 1, i32* %3, align 4
  br label %218

218:                                              ; preds = %217, %167, %138, %123, %21
  %219 = load i32, i32* %3, align 4
  ret i32 %219
}

declare dso_local i32 @get_unaligned_le32(i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @smsc75xx_rx_csum_offload(%struct.usbnet*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

declare dso_local %struct.sk_buff* @skb_clone(%struct.sk_buff*, i32) #1

declare dso_local i32 @netdev_warn(%struct.TYPE_5__*, i8*) #1

declare dso_local i32 @skb_set_tail_pointer(%struct.sk_buff*, i32) #1

declare dso_local i32 @usbnet_skb_return(%struct.usbnet*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
