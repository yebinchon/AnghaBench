; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_board.c_ocelot_xtr_irq_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mscc/extr_ocelot_board.c_ocelot_xtr_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocelot = type { i32, i32, i64, %struct.TYPE_3__** }
%struct.TYPE_3__ = type { %struct.net_device* }
%struct.net_device = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.skb_shared_hwtstamps = type { i32 }
%struct.frame_info = type { i64, i32, i32 }
%struct.timespec64 = type { i32, i32 }
%struct.sk_buff = type { i32, i32 }

@QS_XTR_DATA_PRESENT = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IFH_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Unable to allocate sk_buff\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_FCS_LEN = common dso_local global i32 0, align 4
@NETIF_F_RXFCS = common dso_local global i32 0, align 4
@QS_XTR_RD = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ocelot_xtr_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocelot_xtr_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ocelot*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.skb_shared_hwtstamps*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.frame_info, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca [4 x i32], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca %struct.timespec64, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.sk_buff*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %23 = load i8*, i8** %5, align 8
  %24 = bitcast i8* %23 to %struct.ocelot*
  store %struct.ocelot* %24, %struct.ocelot** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %25 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %26 = load i32, i32* @QS_XTR_DATA_PRESENT, align 4
  %27 = call i32 @ocelot_read(%struct.ocelot* %25, i32 %26)
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @BIT(i32 %28)
  %30 = and i32 %27, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %238

34:                                               ; preds = %2
  br label %35

35:                                               ; preds = %210, %34
  %36 = bitcast %struct.frame_info* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 16, i1 false)
  store i32 0, i32* %7, align 4
  br label %37

37:                                               ; preds = %52, %35
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @IFH_LEN, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %55

41:                                               ; preds = %37
  %42 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 %45
  %47 = call i32 @ocelot_rx_frame_word(%struct.ocelot* %42, i32 %43, i32 1, i32* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %55

51:                                               ; preds = %41
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %7, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %7, align 4
  br label %37

55:                                               ; preds = %50, %37
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 4
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  br label %218

59:                                               ; preds = %55
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %15, i64 0, i64 0
  %61 = call i32 @ocelot_parse_ifh(i32* %60, %struct.frame_info* %13)
  %62 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %63 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %62, i32 0, i32 3
  %64 = load %struct.TYPE_3__**, %struct.TYPE_3__*** %63, align 8
  %65 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %13, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %64, i64 %66
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load %struct.net_device*, %struct.net_device** %69, align 8
  store %struct.net_device* %70, %struct.net_device** %14, align 8
  %71 = load %struct.net_device*, %struct.net_device** %14, align 8
  %72 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %13, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %71, i32 %73)
  store %struct.sk_buff* %74, %struct.sk_buff** %22, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %76 = icmp ne %struct.sk_buff* %75, null
  %77 = xor i1 %76, true
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %86

81:                                               ; preds = %59
  %82 = load %struct.net_device*, %struct.net_device** %14, align 8
  %83 = call i32 @netdev_err(%struct.net_device* %82, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %84 = load i32, i32* @ENOMEM, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %9, align 4
  br label %218

86:                                               ; preds = %59
  %87 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %13, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @ETH_FCS_LEN, align 4
  %90 = sub nsw i32 %88, %89
  store i32 %90, i32* %21, align 4
  %91 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %92 = load i32, i32* %21, align 4
  %93 = call i64 @skb_put(%struct.sk_buff* %91, i32 %92)
  %94 = inttoptr i64 %93 to i32*
  store i32* %94, i32** %17, align 8
  store i32 0, i32* %20, align 4
  br label %95

95:                                               ; preds = %105, %86
  %96 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %97 = load i32, i32* %8, align 4
  %98 = call i32 @ocelot_rx_frame_word(%struct.ocelot* %96, i32 %97, i32 0, i32* %16)
  store i32 %98, i32* %19, align 4
  %99 = load i32, i32* %16, align 4
  %100 = load i32*, i32** %17, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %17, align 8
  store i32 %99, i32* %100, align 4
  %102 = load i32, i32* %19, align 4
  %103 = load i32, i32* %20, align 4
  %104 = add nsw i32 %103, %102
  store i32 %104, i32* %20, align 4
  br label %105

105:                                              ; preds = %95
  %106 = load i32, i32* %20, align 4
  %107 = load i32, i32* %21, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %95, label %109

109:                                              ; preds = %105
  %110 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %111 = load i32, i32* %8, align 4
  %112 = call i32 @ocelot_rx_frame_word(%struct.ocelot* %110, i32 %111, i32 0, i32* %16)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* @ETH_FCS_LEN, align 4
  %114 = load i32, i32* %19, align 4
  %115 = sub nsw i32 %113, %114
  %116 = load i32, i32* %20, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %20, align 4
  %118 = load %struct.net_device*, %struct.net_device** %14, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @NETIF_F_RXFCS, align 4
  %122 = and i32 %120, %121
  %123 = call i64 @unlikely(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %109
  %126 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %127 = load i32, i32* @ETH_FCS_LEN, align 4
  %128 = call i64 @skb_put(%struct.sk_buff* %126, i32 %127)
  %129 = inttoptr i64 %128 to i32*
  store i32* %129, i32** %17, align 8
  %130 = load i32, i32* %16, align 4
  %131 = load i32*, i32** %17, align 8
  store i32 %130, i32* %131, align 4
  br label %132

132:                                              ; preds = %125, %109
  %133 = load i32, i32* %19, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %137

135:                                              ; preds = %132
  %136 = load i32, i32* %19, align 4
  store i32 %136, i32* %9, align 4
  br label %218

137:                                              ; preds = %132
  %138 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %139 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %178

142:                                              ; preds = %137
  %143 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %144 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %143, i32 0, i32 1
  %145 = call i32 @ocelot_ptp_gettime64(i32* %144, %struct.timespec64* %18)
  %146 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %18, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %18, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @ktime_set(i32 %147, i32 %149)
  store i32 %150, i32* %11, align 4
  %151 = load i32, i32* %11, align 4
  %152 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %13, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = icmp ult i32 %151, %153
  br i1 %154, label %155, label %163

155:                                              ; preds = %142
  %156 = load i32, i32* %11, align 4
  %157 = ashr i32 %156, 32
  %158 = sub nsw i32 %157, 1
  %159 = shl i32 %158, 32
  %160 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %13, i32 0, i32 2
  %161 = load i32, i32* %160, align 4
  %162 = or i32 %159, %161
  store i32 %162, i32* %12, align 4
  br label %170

163:                                              ; preds = %142
  %164 = load i32, i32* %11, align 4
  %165 = call i32 @GENMASK_ULL(i32 63, i32 32)
  %166 = and i32 %164, %165
  %167 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %13, i32 0, i32 2
  %168 = load i32, i32* %167, align 4
  %169 = or i32 %166, %168
  store i32 %169, i32* %12, align 4
  br label %170

170:                                              ; preds = %163, %155
  %171 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %172 = call %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff* %171)
  store %struct.skb_shared_hwtstamps* %172, %struct.skb_shared_hwtstamps** %10, align 8
  %173 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %10, align 8
  %174 = call i32 @memset(%struct.skb_shared_hwtstamps* %173, i32 0, i32 4)
  %175 = load i32, i32* %12, align 4
  %176 = load %struct.skb_shared_hwtstamps*, %struct.skb_shared_hwtstamps** %10, align 8
  %177 = getelementptr inbounds %struct.skb_shared_hwtstamps, %struct.skb_shared_hwtstamps* %176, i32 0, i32 0
  store i32 %175, i32* %177, align 4
  br label %178

178:                                              ; preds = %170, %137
  %179 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %180 = getelementptr inbounds %struct.ocelot, %struct.ocelot* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = getelementptr inbounds %struct.frame_info, %struct.frame_info* %13, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = trunc i64 %183 to i32
  %185 = call i32 @BIT(i32 %184)
  %186 = and i32 %181, %185
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %178
  %189 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %190 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %189, i32 0, i32 0
  store i32 1, i32* %190, align 4
  br label %191

191:                                              ; preds = %188, %178
  %192 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %193 = load %struct.net_device*, %struct.net_device** %14, align 8
  %194 = call i32 @eth_type_trans(%struct.sk_buff* %192, %struct.net_device* %193)
  %195 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %196 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %198 = call i32 @netif_rx(%struct.sk_buff* %197)
  %199 = load i32, i32* %20, align 4
  %200 = load %struct.net_device*, %struct.net_device** %14, align 8
  %201 = getelementptr inbounds %struct.net_device, %struct.net_device* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, %199
  store i32 %204, i32* %202, align 4
  %205 = load %struct.net_device*, %struct.net_device** %14, align 8
  %206 = getelementptr inbounds %struct.net_device, %struct.net_device* %205, i32 0, i32 1
  %207 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %207, align 4
  br label %210

210:                                              ; preds = %191
  %211 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %212 = load i32, i32* @QS_XTR_DATA_PRESENT, align 4
  %213 = call i32 @ocelot_read(%struct.ocelot* %211, i32 %212)
  %214 = load i32, i32* %8, align 4
  %215 = call i32 @BIT(i32 %214)
  %216 = and i32 %213, %215
  %217 = icmp ne i32 %216, 0
  br i1 %217, label %35, label %218

218:                                              ; preds = %210, %135, %81, %58
  %219 = load i32, i32* %9, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %236

221:                                              ; preds = %218
  br label %222

222:                                              ; preds = %230, %221
  %223 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %224 = load i32, i32* @QS_XTR_DATA_PRESENT, align 4
  %225 = call i32 @ocelot_read(%struct.ocelot* %223, i32 %224)
  %226 = load i32, i32* %8, align 4
  %227 = call i32 @BIT(i32 %226)
  %228 = and i32 %225, %227
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %222
  %231 = load %struct.ocelot*, %struct.ocelot** %6, align 8
  %232 = load i32, i32* @QS_XTR_RD, align 4
  %233 = load i32, i32* %8, align 4
  %234 = call i32 @ocelot_read_rix(%struct.ocelot* %231, i32 %232, i32 %233)
  br label %222

235:                                              ; preds = %222
  br label %236

236:                                              ; preds = %235, %218
  %237 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %236, %32
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i32 @ocelot_read(%struct.ocelot*, i32) #1

declare dso_local i32 @BIT(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ocelot_rx_frame_word(%struct.ocelot*, i32, i32, i32*) #1

declare dso_local i32 @ocelot_parse_ifh(i32*, %struct.frame_info*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @ocelot_ptp_gettime64(i32*, %struct.timespec64*) #1

declare dso_local i32 @ktime_set(i32, i32) #1

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

declare dso_local %struct.skb_shared_hwtstamps* @skb_hwtstamps(%struct.sk_buff*) #1

declare dso_local i32 @memset(%struct.skb_shared_hwtstamps*, i32, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.sk_buff*) #1

declare dso_local i32 @ocelot_read_rix(%struct.ocelot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
