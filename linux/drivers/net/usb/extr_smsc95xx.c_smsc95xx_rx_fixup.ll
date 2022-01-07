; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_rx_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_smsc95xx.c_smsc95xx_rx_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.sk_buff = type { i64, i8*, i32 }

@NET_IP_ALIGN = common dso_local global i32 0, align 4
@RX_STS_FL_ = common dso_local global i32 0, align 4
@RX_STS_ES_ = common dso_local global i32 0, align 4
@rx_err = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Error header=0x%08x\0A\00", align 1
@RX_STS_CRC_ = common dso_local global i32 0, align 4
@RX_STS_TL_ = common dso_local global i32 0, align 4
@RX_STS_RF_ = common dso_local global i32 0, align 4
@RX_STS_LE_ = common dso_local global i32 0, align 4
@RX_STS_FT_ = common dso_local global i32 0, align 4
@ETH_FRAME_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"size err header=0x%08x\0A\00", align 1
@NETIF_F_RXCSUM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Error allocating skb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*, %struct.sk_buff*)* @smsc95xx_rx_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc95xx_rx_fixup(%struct.usbnet* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %13, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %240

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %238, %21
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %239

27:                                               ; preds = %22
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %28, i32 0, i32 1
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @get_unaligned_le32(i8* %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = load i32, i32* @NET_IP_ALIGN, align 4
  %34 = add nsw i32 4, %33
  %35 = call i32 @skb_pull(%struct.sk_buff* %32, i32 %34)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %37 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  store i8* %38, i8** %9, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @RX_STS_FL_, align 4
  %41 = and i32 %39, %40
  %42 = ashr i32 %41, 16
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @NET_IP_ALIGN, align 4
  %45 = add nsw i32 %43, %44
  %46 = srem i32 %45, 4
  %47 = sub nsw i32 4, %46
  %48 = srem i32 %47, 4
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @RX_STS_ES_, align 4
  %51 = and i32 %49, %50
  %52 = call i64 @unlikely(i32 %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %123

54:                                               ; preds = %27
  %55 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %56 = load i32, i32* @rx_err, align 4
  %57 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %58 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %57, i32 0, i32 0
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = call i32 @netif_dbg(%struct.usbnet* %55, i32 %56, %struct.TYPE_5__* %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %63 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 4
  %69 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %70 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %69, i32 0, i32 0
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %73, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @RX_STS_CRC_, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %88

80:                                               ; preds = %54
  %81 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %82 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  br label %122

88:                                               ; preds = %54
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @RX_STS_TL_, align 4
  %91 = load i32, i32* @RX_STS_RF_, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %89, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %103

95:                                               ; preds = %88
  %96 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %97 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %96, i32 0, i32 0
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 2
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 4
  br label %103

103:                                              ; preds = %95, %88
  %104 = load i32, i32* %6, align 4
  %105 = load i32, i32* @RX_STS_LE_, align 4
  %106 = and i32 %104, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %121

108:                                              ; preds = %103
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @RX_STS_FT_, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %121, label %113

113:                                              ; preds = %108
  %114 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %115 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %113, %108, %103
  br label %122

122:                                              ; preds = %121, %80
  br label %226

123:                                              ; preds = %27
  %124 = load i32, i32* %10, align 4
  %125 = load i32, i32* @ETH_FRAME_LEN, align 4
  %126 = add nsw i32 %125, 12
  %127 = icmp sgt i32 %124, %126
  %128 = zext i1 %127 to i32
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %123
  %132 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %133 = load i32, i32* @rx_err, align 4
  %134 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %135 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %134, i32 0, i32 0
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %135, align 8
  %137 = load i32, i32* %6, align 4
  %138 = call i32 @netif_dbg(%struct.usbnet* %132, i32 %133, %struct.TYPE_5__* %136, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %137)
  store i32 0, i32* %3, align 4
  br label %240

139:                                              ; preds = %123
  %140 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %141 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp eq i64 %142, %144
  br i1 %145, label %146, label %172

146:                                              ; preds = %139
  %147 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %148 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %147, i32 0, i32 0
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 8
  %152 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %146
  %156 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %157 = call i32 @smsc95xx_rx_csum_offload(%struct.sk_buff* %156)
  br label %158

158:                                              ; preds = %155, %146
  %159 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %160 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %161 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = sub nsw i64 %162, 4
  %164 = trunc i64 %163 to i32
  %165 = call i32 @skb_trim(%struct.sk_buff* %159, i32 %164)
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = add i64 %167, 24
  %169 = trunc i64 %168 to i32
  %170 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %171 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %170, i32 0, i32 2
  store i32 %169, i32* %171, align 8
  store i32 1, i32* %3, align 4
  br label %240

172:                                              ; preds = %139
  %173 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %174 = load i32, i32* @GFP_ATOMIC, align 4
  %175 = call %struct.sk_buff* @skb_clone(%struct.sk_buff* %173, i32 %174)
  store %struct.sk_buff* %175, %struct.sk_buff** %8, align 8
  %176 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %177 = icmp ne %struct.sk_buff* %176, null
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = call i64 @unlikely(i32 %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %187

182:                                              ; preds = %172
  %183 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %184 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %183, i32 0, i32 0
  %185 = load %struct.TYPE_5__*, %struct.TYPE_5__** %184, align 8
  %186 = call i32 @netdev_warn(%struct.TYPE_5__* %185, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %240

187:                                              ; preds = %172
  %188 = load i32, i32* %10, align 4
  %189 = sext i32 %188 to i64
  %190 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %191 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %190, i32 0, i32 0
  store i64 %189, i64* %191, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %194 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %193, i32 0, i32 1
  store i8* %192, i8** %194, align 8
  %195 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %196 = load i32, i32* %10, align 4
  %197 = call i32 @skb_set_tail_pointer(%struct.sk_buff* %195, i32 %196)
  %198 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %199 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %198, i32 0, i32 0
  %200 = load %struct.TYPE_5__*, %struct.TYPE_5__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  %202 = load i32, i32* %201, align 8
  %203 = load i32, i32* @NETIF_F_RXCSUM, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %209

206:                                              ; preds = %187
  %207 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %208 = call i32 @smsc95xx_rx_csum_offload(%struct.sk_buff* %207)
  br label %209

209:                                              ; preds = %206, %187
  %210 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %211 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %212 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %211, i32 0, i32 0
  %213 = load i64, i64* %212, align 8
  %214 = sub nsw i64 %213, 4
  %215 = trunc i64 %214 to i32
  %216 = call i32 @skb_trim(%struct.sk_buff* %210, i32 %215)
  %217 = load i32, i32* %10, align 4
  %218 = sext i32 %217 to i64
  %219 = add i64 %218, 24
  %220 = trunc i64 %219 to i32
  %221 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %222 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %221, i32 0, i32 2
  store i32 %220, i32* %222, align 8
  %223 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %224 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %225 = call i32 @usbnet_skb_return(%struct.usbnet* %223, %struct.sk_buff* %224)
  br label %226

226:                                              ; preds = %209, %122
  %227 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %228 = load i32, i32* %10, align 4
  %229 = call i32 @skb_pull(%struct.sk_buff* %227, i32 %228)
  %230 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %231 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %238

234:                                              ; preds = %226
  %235 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %236 = load i32, i32* %7, align 4
  %237 = call i32 @skb_pull(%struct.sk_buff* %235, i32 %236)
  br label %238

238:                                              ; preds = %234, %226
  br label %22

239:                                              ; preds = %22
  store i32 1, i32* %3, align 4
  br label %240

240:                                              ; preds = %239, %182, %158, %131, %20
  %241 = load i32, i32* %3, align 4
  ret i32 %241
}

declare dso_local i32 @get_unaligned_le32(i8*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netif_dbg(%struct.usbnet*, i32, %struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @smsc95xx_rx_csum_offload(%struct.sk_buff*) #1

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
