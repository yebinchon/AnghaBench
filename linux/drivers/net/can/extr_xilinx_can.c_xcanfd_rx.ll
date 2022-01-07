; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcanfd_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcanfd_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32, i32 }
%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32)* }
%struct.canfd_frame = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.can_frame = type { i32 }

@XCAN_DLCR_EDL_MASK = common dso_local global i32 0, align 4
@XCAN_DLCR_DLC_MASK = common dso_local global i32 0, align 4
@XCAN_DLCR_DLC_SHIFT = common dso_local global i32 0, align 4
@XCAN_IDR_IDE_MASK = common dso_local global i32 0, align 4
@XCAN_IDR_ID1_MASK = common dso_local global i32 0, align 4
@XCAN_IDR_ID2_MASK = common dso_local global i32 0, align 4
@XCAN_IDR_ID2_SHIFT = common dso_local global i32 0, align 4
@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@XCAN_IDR_RTR_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@XCAN_IDR_ID1_SHIFT = common dso_local global i32 0, align 4
@XCAN_IDR_SRR_MASK = common dso_local global i32 0, align 4
@XCANFD_DW_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @xcanfd_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcanfd_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.xcan_priv*, align 8
  %7 = alloca %struct.net_device_stats*, align 8
  %8 = alloca %struct.canfd_frame*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [2 x i32], align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = call %struct.xcan_priv* @netdev_priv(%struct.net_device* %16)
  store %struct.xcan_priv* %17, %struct.xcan_priv** %6, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  store %struct.net_device_stats* %19, %struct.net_device_stats** %7, align 8
  %20 = bitcast [2 x i32]* %12 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %20, i8 0, i64 8, i1 false)
  store i32 0, i32* %13, align 4
  %21 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %22 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %21, i32 0, i32 0
  %23 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %22, align 8
  %24 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @XCAN_FRAME_ID_OFFSET(i32 %25)
  %27 = call i32 %23(%struct.xcan_priv* %24, i32 %26)
  store i32 %27, i32* %10, align 4
  %28 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %29 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %28, i32 0, i32 0
  %30 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %29, align 8
  %31 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @XCAN_FRAME_DLC_OFFSET(i32 %32)
  %34 = call i32 %30(%struct.xcan_priv* %31, i32 %33)
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @XCAN_DLCR_EDL_MASK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %2
  %40 = load %struct.net_device*, %struct.net_device** %4, align 8
  %41 = call %struct.sk_buff* @alloc_canfd_skb(%struct.net_device* %40, %struct.canfd_frame** %8)
  store %struct.sk_buff* %41, %struct.sk_buff** %9, align 8
  br label %46

42:                                               ; preds = %2
  %43 = load %struct.net_device*, %struct.net_device** %4, align 8
  %44 = bitcast %struct.canfd_frame** %8 to %struct.can_frame**
  %45 = call %struct.sk_buff* @alloc_can_skb(%struct.net_device* %43, %struct.can_frame** %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %9, align 8
  br label %46

46:                                               ; preds = %42, %39
  %47 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %48 = icmp ne %struct.sk_buff* %47, null
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  %51 = call i64 @unlikely(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %46
  %54 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %55 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  store i32 0, i32* %3, align 4
  br label %231

58:                                               ; preds = %46
  %59 = load i32, i32* %11, align 4
  %60 = load i32, i32* @XCAN_DLCR_EDL_MASK, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* @XCAN_DLCR_DLC_MASK, align 4
  %66 = and i32 %64, %65
  %67 = load i32, i32* @XCAN_DLCR_DLC_SHIFT, align 4
  %68 = ashr i32 %66, %67
  %69 = call i32 @can_dlc2len(i32 %68)
  %70 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %71 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %81

72:                                               ; preds = %58
  %73 = load i32, i32* %11, align 4
  %74 = load i32, i32* @XCAN_DLCR_DLC_MASK, align 4
  %75 = and i32 %73, %74
  %76 = load i32, i32* @XCAN_DLCR_DLC_SHIFT, align 4
  %77 = ashr i32 %75, %76
  %78 = call i32 @get_can_dlc(i32 %77)
  %79 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %80 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %72, %63
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* @XCAN_IDR_IDE_MASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %118

86:                                               ; preds = %81
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* @XCAN_IDR_ID1_MASK, align 4
  %89 = and i32 %87, %88
  %90 = ashr i32 %89, 3
  %91 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %92 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %91, i32 0, i32 1
  store i32 %90, i32* %92, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* @XCAN_IDR_ID2_MASK, align 4
  %95 = and i32 %93, %94
  %96 = load i32, i32* @XCAN_IDR_ID2_SHIFT, align 4
  %97 = ashr i32 %95, %96
  %98 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %99 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %97
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* @CAN_EFF_FLAG, align 4
  %103 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %104 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %102
  store i32 %106, i32* %104, align 4
  %107 = load i32, i32* %10, align 4
  %108 = load i32, i32* @XCAN_IDR_RTR_MASK, align 4
  %109 = and i32 %107, %108
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %86
  %112 = load i32, i32* @CAN_RTR_FLAG, align 4
  %113 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %114 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 4
  br label %117

117:                                              ; preds = %111, %86
  br label %142

118:                                              ; preds = %81
  %119 = load i32, i32* %10, align 4
  %120 = load i32, i32* @XCAN_IDR_ID1_MASK, align 4
  %121 = and i32 %119, %120
  %122 = load i32, i32* @XCAN_IDR_ID1_SHIFT, align 4
  %123 = ashr i32 %121, %122
  %124 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %125 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %124, i32 0, i32 1
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* @XCAN_DLCR_EDL_MASK, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %141, label %130

130:                                              ; preds = %118
  %131 = load i32, i32* %10, align 4
  %132 = load i32, i32* @XCAN_IDR_SRR_MASK, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %130
  %136 = load i32, i32* @CAN_RTR_FLAG, align 4
  %137 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %138 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = or i32 %139, %136
  store i32 %140, i32* %138, align 4
  br label %141

141:                                              ; preds = %135, %130, %118
  br label %142

142:                                              ; preds = %141, %117
  %143 = load i32, i32* %11, align 4
  %144 = load i32, i32* @XCAN_DLCR_EDL_MASK, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %184

147:                                              ; preds = %142
  store i32 0, i32* %14, align 4
  br label %148

148:                                              ; preds = %180, %147
  %149 = load i32, i32* %14, align 4
  %150 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %151 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = icmp slt i32 %149, %152
  br i1 %153, label %154, label %183

154:                                              ; preds = %148
  %155 = load i32, i32* %5, align 4
  %156 = call i32 @XCANFD_FRAME_DW_OFFSET(i32 %155)
  %157 = load i32, i32* %13, align 4
  %158 = load i32, i32* @XCANFD_DW_BYTES, align 4
  %159 = mul nsw i32 %157, %158
  %160 = add nsw i32 %156, %159
  store i32 %160, i32* %15, align 4
  %161 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %162 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %161, i32 0, i32 0
  %163 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %162, align 8
  %164 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %165 = load i32, i32* %15, align 4
  %166 = call i32 %163(%struct.xcan_priv* %164, i32 %165)
  %167 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %166, i32* %167, align 4
  %168 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @cpu_to_be32(i32 %169)
  %171 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %172 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = load i32, i32* %14, align 4
  %175 = add nsw i32 %173, %174
  %176 = sext i32 %175 to i64
  %177 = inttoptr i64 %176 to i32*
  store i32 %170, i32* %177, align 4
  %178 = load i32, i32* %13, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %13, align 4
  br label %180

180:                                              ; preds = %154
  %181 = load i32, i32* %14, align 4
  %182 = add nsw i32 %181, 4
  store i32 %182, i32* %14, align 4
  br label %148

183:                                              ; preds = %148
  br label %217

184:                                              ; preds = %142
  store i32 0, i32* %14, align 4
  br label %185

185:                                              ; preds = %213, %184
  %186 = load i32, i32* %14, align 4
  %187 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %188 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 4
  %190 = icmp slt i32 %186, %189
  br i1 %190, label %191, label %216

191:                                              ; preds = %185
  %192 = load i32, i32* %5, align 4
  %193 = call i32 @XCANFD_FRAME_DW_OFFSET(i32 %192)
  store i32 %193, i32* %15, align 4
  %194 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %195 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %194, i32 0, i32 0
  %196 = load i32 (%struct.xcan_priv*, i32)*, i32 (%struct.xcan_priv*, i32)** %195, align 8
  %197 = load %struct.xcan_priv*, %struct.xcan_priv** %6, align 8
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %14, align 4
  %200 = add nsw i32 %198, %199
  %201 = call i32 %196(%struct.xcan_priv* %197, i32 %200)
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  store i32 %201, i32* %202, align 4
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i64 0, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @cpu_to_be32(i32 %204)
  %206 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %207 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %14, align 4
  %210 = add nsw i32 %208, %209
  %211 = sext i32 %210 to i64
  %212 = inttoptr i64 %211 to i32*
  store i32 %205, i32* %212, align 4
  br label %213

213:                                              ; preds = %191
  %214 = load i32, i32* %14, align 4
  %215 = add nsw i32 %214, 4
  store i32 %215, i32* %14, align 4
  br label %185

216:                                              ; preds = %185
  br label %217

217:                                              ; preds = %216, %183
  %218 = load %struct.canfd_frame*, %struct.canfd_frame** %8, align 8
  %219 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %222 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, %220
  store i32 %224, i32* %222, align 4
  %225 = load %struct.net_device_stats*, %struct.net_device_stats** %7, align 8
  %226 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 4
  %228 = add nsw i32 %227, 1
  store i32 %228, i32* %226, align 4
  %229 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %230 = call i32 @netif_receive_skb(%struct.sk_buff* %229)
  store i32 1, i32* %3, align 4
  br label %231

231:                                              ; preds = %217, %53
  %232 = load i32, i32* %3, align 4
  ret i32 %232
}

declare dso_local %struct.xcan_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @XCAN_FRAME_ID_OFFSET(i32) #1

declare dso_local i32 @XCAN_FRAME_DLC_OFFSET(i32) #1

declare dso_local %struct.sk_buff* @alloc_canfd_skb(%struct.net_device*, %struct.canfd_frame**) #1

declare dso_local %struct.sk_buff* @alloc_can_skb(%struct.net_device*, %struct.can_frame**) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @can_dlc2len(i32) #1

declare dso_local i32 @get_can_dlc(i32) #1

declare dso_local i32 @XCANFD_FRAME_DW_OFFSET(i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
