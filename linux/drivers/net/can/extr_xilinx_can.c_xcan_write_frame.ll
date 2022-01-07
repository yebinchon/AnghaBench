; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_write_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_xilinx_can.c_xcan_write_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xcan_priv = type { i32 (%struct.xcan_priv*, i32, i32)*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.sk_buff = type { i64 }
%struct.canfd_frame = type { i32, i32, i32, i32 }

@CAN_EFF_FLAG = common dso_local global i32 0, align 4
@CAN_EFF_MASK = common dso_local global i32 0, align 4
@XCAN_IDR_ID2_SHIFT = common dso_local global i32 0, align 4
@XCAN_IDR_ID2_MASK = common dso_local global i32 0, align 4
@CAN_EFF_ID_BITS = common dso_local global i32 0, align 4
@CAN_SFF_ID_BITS = common dso_local global i32 0, align 4
@XCAN_IDR_ID1_SHIFT = common dso_local global i32 0, align 4
@XCAN_IDR_ID1_MASK = common dso_local global i32 0, align 4
@XCAN_IDR_IDE_MASK = common dso_local global i32 0, align 4
@XCAN_IDR_SRR_MASK = common dso_local global i32 0, align 4
@CAN_RTR_FLAG = common dso_local global i32 0, align 4
@XCAN_IDR_RTR_MASK = common dso_local global i32 0, align 4
@CAN_SFF_MASK = common dso_local global i32 0, align 4
@XCAN_DLCR_DLC_SHIFT = common dso_local global i32 0, align 4
@CANFD_BRS = common dso_local global i32 0, align 4
@XCAN_DLCR_BRS_MASK = common dso_local global i32 0, align 4
@XCAN_DLCR_EDL_MASK = common dso_local global i32 0, align 4
@XAXI_CANFD = common dso_local global i64 0, align 8
@XAXI_CANFD_2_0 = common dso_local global i64 0, align 8
@XCANFD_DW_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xcan_priv*, %struct.sk_buff*, i32)* @xcan_write_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xcan_write_frame(%struct.xcan_priv* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.xcan_priv*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [2 x i32], align 4
  %10 = alloca %struct.canfd_frame*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.xcan_priv* %0, %struct.xcan_priv** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = bitcast [2 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.canfd_frame*
  store %struct.canfd_frame* %18, %struct.canfd_frame** %10, align 8
  store i32 0, i32* %12, align 4
  %19 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %20 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @CAN_EFF_FLAG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %66

25:                                               ; preds = %3
  %26 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %27 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @CAN_EFF_MASK, align 4
  %30 = and i32 %28, %29
  %31 = load i32, i32* @XCAN_IDR_ID2_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* @XCAN_IDR_ID2_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %7, align 4
  %35 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %36 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @CAN_EFF_MASK, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @CAN_EFF_ID_BITS, align 4
  %41 = load i32, i32* @CAN_SFF_ID_BITS, align 4
  %42 = sub nsw i32 %40, %41
  %43 = ashr i32 %39, %42
  %44 = load i32, i32* @XCAN_IDR_ID1_SHIFT, align 4
  %45 = shl i32 %43, %44
  %46 = load i32, i32* @XCAN_IDR_ID1_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* @XCAN_IDR_IDE_MASK, align 4
  %51 = load i32, i32* @XCAN_IDR_SRR_MASK, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* %7, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %7, align 4
  %55 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %56 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @CAN_RTR_FLAG, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %25
  %62 = load i32, i32* @XCAN_IDR_RTR_MASK, align 4
  %63 = load i32, i32* %7, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %61, %25
  br label %87

66:                                               ; preds = %3
  %67 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %68 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @CAN_SFF_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @XCAN_IDR_ID1_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = load i32, i32* @XCAN_IDR_ID1_MASK, align 4
  %75 = and i32 %73, %74
  store i32 %75, i32* %7, align 4
  %76 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %77 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @CAN_RTR_FLAG, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %66
  %83 = load i32, i32* @XCAN_IDR_SRR_MASK, align 4
  %84 = load i32, i32* %7, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %7, align 4
  br label %86

86:                                               ; preds = %82, %66
  br label %87

87:                                               ; preds = %86, %65
  %88 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %89 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @can_len2dlc(i32 %90)
  %92 = load i32, i32* @XCAN_DLCR_DLC_SHIFT, align 4
  %93 = shl i32 %91, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %95 = call i64 @can_is_canfd_skb(%struct.sk_buff* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %87
  %98 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %99 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @CANFD_BRS, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %97
  %105 = load i32, i32* @XCAN_DLCR_BRS_MASK, align 4
  %106 = load i32, i32* %8, align 4
  %107 = or i32 %106, %105
  store i32 %107, i32* %8, align 4
  br label %108

108:                                              ; preds = %104, %97
  %109 = load i32, i32* @XCAN_DLCR_EDL_MASK, align 4
  %110 = load i32, i32* %8, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %8, align 4
  br label %112

112:                                              ; preds = %108, %87
  %113 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %114 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %113, i32 0, i32 0
  %115 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %114, align 8
  %116 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @XCAN_FRAME_ID_OFFSET(i32 %117)
  %119 = load i32, i32* %7, align 4
  %120 = call i32 %115(%struct.xcan_priv* %116, i32 %118, i32 %119)
  %121 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %122 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %121, i32 0, i32 0
  %123 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %122, align 8
  %124 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %125 = load i32, i32* %6, align 4
  %126 = call i32 @XCAN_FRAME_DLC_OFFSET(i32 %125)
  %127 = load i32, i32* %8, align 4
  %128 = call i32 %123(%struct.xcan_priv* %124, i32 %126, i32 %127)
  %129 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %130 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %129, i32 0, i32 1
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @XAXI_CANFD, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %142, label %135

135:                                              ; preds = %112
  %136 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %137 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @XAXI_CANFD_2_0, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %176

142:                                              ; preds = %135, %112
  store i32 0, i32* %13, align 4
  br label %143

143:                                              ; preds = %172, %142
  %144 = load i32, i32* %13, align 4
  %145 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %146 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = icmp slt i32 %144, %147
  br i1 %148, label %149, label %175

149:                                              ; preds = %143
  %150 = load i32, i32* %6, align 4
  %151 = call i32 @XCANFD_FRAME_DW_OFFSET(i32 %150)
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @XCANFD_DW_BYTES, align 4
  %154 = mul nsw i32 %152, %153
  %155 = add nsw i32 %151, %154
  store i32 %155, i32* %11, align 4
  %156 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %157 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %156, i32 0, i32 0
  %158 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %157, align 8
  %159 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %162 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %163, %164
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i32*
  %168 = call i32 @be32_to_cpup(i32* %167)
  %169 = call i32 %158(%struct.xcan_priv* %159, i32 %160, i32 %168)
  %170 = load i32, i32* %12, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %12, align 4
  br label %172

172:                                              ; preds = %149
  %173 = load i32, i32* %13, align 4
  %174 = add nsw i32 %173, 4
  store i32 %174, i32* %13, align 4
  br label %143

175:                                              ; preds = %143
  br label %231

176:                                              ; preds = %135
  %177 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %178 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %177, i32 0, i32 1
  %179 = load i32, i32* %178, align 4
  %180 = icmp sgt i32 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %176
  %182 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %183 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = add nsw i32 %184, 0
  %186 = sext i32 %185 to i64
  %187 = inttoptr i64 %186 to i32*
  %188 = call i32 @be32_to_cpup(i32* %187)
  %189 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  store i32 %188, i32* %189, align 4
  br label %190

190:                                              ; preds = %181, %176
  %191 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %192 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = icmp sgt i32 %193, 4
  br i1 %194, label %195, label %204

195:                                              ; preds = %190
  %196 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %197 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %196, i32 0, i32 3
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, 4
  %200 = sext i32 %199 to i64
  %201 = inttoptr i64 %200 to i32*
  %202 = call i32 @be32_to_cpup(i32* %201)
  %203 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  store i32 %202, i32* %203, align 4
  br label %204

204:                                              ; preds = %195, %190
  %205 = load %struct.canfd_frame*, %struct.canfd_frame** %10, align 8
  %206 = getelementptr inbounds %struct.canfd_frame, %struct.canfd_frame* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 4
  %208 = load i32, i32* @CAN_RTR_FLAG, align 4
  %209 = and i32 %207, %208
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %230, label %211

211:                                              ; preds = %204
  %212 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %213 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %212, i32 0, i32 0
  %214 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %213, align 8
  %215 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %216 = load i32, i32* %6, align 4
  %217 = call i32 @XCAN_FRAME_DW1_OFFSET(i32 %216)
  %218 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 %214(%struct.xcan_priv* %215, i32 %217, i32 %219)
  %221 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %222 = getelementptr inbounds %struct.xcan_priv, %struct.xcan_priv* %221, i32 0, i32 0
  %223 = load i32 (%struct.xcan_priv*, i32, i32)*, i32 (%struct.xcan_priv*, i32, i32)** %222, align 8
  %224 = load %struct.xcan_priv*, %struct.xcan_priv** %4, align 8
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @XCAN_FRAME_DW2_OFFSET(i32 %225)
  %227 = getelementptr inbounds [2 x i32], [2 x i32]* %9, i64 0, i64 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 %223(%struct.xcan_priv* %224, i32 %226, i32 %228)
  br label %230

230:                                              ; preds = %211, %204
  br label %231

231:                                              ; preds = %230, %175
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @can_len2dlc(i32) #2

declare dso_local i64 @can_is_canfd_skb(%struct.sk_buff*) #2

declare dso_local i32 @XCAN_FRAME_ID_OFFSET(i32) #2

declare dso_local i32 @XCAN_FRAME_DLC_OFFSET(i32) #2

declare dso_local i32 @XCANFD_FRAME_DW_OFFSET(i32) #2

declare dso_local i32 @be32_to_cpup(i32*) #2

declare dso_local i32 @XCAN_FRAME_DW1_OFFSET(i32) #2

declare dso_local i32 @XCAN_FRAME_DW2_OFFSET(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
