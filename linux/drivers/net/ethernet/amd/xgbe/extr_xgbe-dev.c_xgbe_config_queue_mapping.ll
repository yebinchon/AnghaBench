; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_queue_mapping.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_config_queue_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32*, i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"TXq%u mapped to TC%u\0A\00", align 1
@MTL_Q_TQOMR = common dso_local global i32 0, align 4
@Q2TCMAP = common dso_local global i32 0, align 4
@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MAC_RQC2R = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"PRIO%u mapped to RXq%u\0A\00", align 1
@MAC_RQC2_Q_PER_REG = common dso_local global i32 0, align 4
@MAC_RQC2_INC = common dso_local global i64 0, align 8
@MTL_RQDCM0R = common dso_local global i32 0, align 4
@MTL_RQDCM_Q_PER_REG = common dso_local global i32 0, align 4
@MTL_RQDCM_INC = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_config_queue_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_config_queue_mapping(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %19 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = udiv i32 %17, %21
  store i32 %22, i32* %3, align 4
  %23 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %24 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %27 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = urem i32 %25, %29
  store i32 %30, i32* %4, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %5, align 4
  br label %31

31:                                               ; preds = %97, %1
  %32 = load i32, i32* %11, align 4
  %33 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %34 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ult i32 %32, %36
  br i1 %37, label %38, label %100

38:                                               ; preds = %31
  store i32 0, i32* %12, align 4
  br label %39

39:                                               ; preds = %66, %38
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %3, align 4
  %42 = icmp ult i32 %40, %41
  br i1 %42, label %43, label %69

43:                                               ; preds = %39
  %44 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %45 = load i32, i32* @drv, align 4
  %46 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %47 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %5, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @netif_dbg(%struct.xgbe_prv_data* %44, i32 %45, i32 %48, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %49, i32 %50)
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* @MTL_Q_TQOMR, align 4
  %55 = load i32, i32* @Q2TCMAP, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %52, i32 %53, i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %60 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = load i32, i32* %5, align 4
  %63 = add i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = zext i32 %62 to i64
  %65 = getelementptr inbounds i32, i32* %61, i64 %64
  store i32 %58, i32* %65, align 4
  br label %66

66:                                               ; preds = %43
  %67 = load i32, i32* %12, align 4
  %68 = add i32 %67, 1
  store i32 %68, i32* %12, align 4
  br label %39

69:                                               ; preds = %39
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %4, align 4
  %72 = icmp ult i32 %70, %71
  br i1 %72, label %73, label %96

73:                                               ; preds = %69
  %74 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %75 = load i32, i32* @drv, align 4
  %76 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %77 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @netif_dbg(%struct.xgbe_prv_data* %74, i32 %75, i32 %78, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %79, i32 %80)
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @MTL_Q_TQOMR, align 4
  %85 = load i32, i32* @Q2TCMAP, align 4
  %86 = load i32, i32* %11, align 4
  %87 = call i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data* %82, i32 %83, i32 %84, i32 %85, i32 %86)
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, 1
  store i32 %93, i32* %5, align 4
  %94 = zext i32 %92 to i64
  %95 = getelementptr inbounds i32, i32* %91, i64 %94
  store i32 %88, i32* %95, align 4
  br label %96

96:                                               ; preds = %73, %69
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %11, align 4
  %99 = add i32 %98, 1
  store i32 %99, i32* %11, align 4
  br label %31

100:                                              ; preds = %31
  %101 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %102 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @XGMAC_PRIO_QUEUES(i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %106 = load i32, i32* %6, align 4
  %107 = udiv i32 %105, %106
  store i32 %107, i32* %7, align 4
  %108 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %109 = load i32, i32* %6, align 4
  %110 = urem i32 %108, %109
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @MAC_RQC2R, align 4
  store i32 %111, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  br label %112

112:                                              ; preds = %189, %188, %100
  %113 = load i32, i32* %11, align 4
  %114 = load i32, i32* %6, align 4
  %115 = icmp ult i32 %113, %114
  br i1 %115, label %116, label %199

116:                                              ; preds = %112
  store i32 0, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %117

117:                                              ; preds = %142, %116
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %7, align 4
  %120 = icmp ult i32 %118, %119
  br i1 %120, label %121, label %145

121:                                              ; preds = %117
  %122 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %123 = load i32, i32* @drv, align 4
  %124 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %125 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %124, i32 0, i32 4
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %11, align 4
  %129 = call i32 @netif_dbg(%struct.xgbe_prv_data* %122, i32 %123, i32 %126, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load i32, i32* %9, align 4
  %131 = shl i32 1, %130
  %132 = load i32, i32* %10, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* %11, align 4
  %135 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %136 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %135, i32 0, i32 3
  %137 = load i32*, i32** %136, align 8
  %138 = load i32, i32* %9, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %9, align 4
  %140 = zext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %137, i64 %140
  store i32 %134, i32* %141, align 4
  br label %142

142:                                              ; preds = %121
  %143 = load i32, i32* %12, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %12, align 4
  br label %117

145:                                              ; preds = %117
  %146 = load i32, i32* %11, align 4
  %147 = load i32, i32* %8, align 4
  %148 = icmp ult i32 %146, %147
  br i1 %148, label %149, label %170

149:                                              ; preds = %145
  %150 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %151 = load i32, i32* @drv, align 4
  %152 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %153 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %152, i32 0, i32 4
  %154 = load i32, i32* %153, align 8
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* %11, align 4
  %157 = call i32 @netif_dbg(%struct.xgbe_prv_data* %150, i32 %151, i32 %154, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %155, i32 %156)
  %158 = load i32, i32* %9, align 4
  %159 = shl i32 1, %158
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load i32, i32* %11, align 4
  %163 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %164 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %163, i32 0, i32 3
  %165 = load i32*, i32** %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = add i32 %166, 1
  store i32 %167, i32* %9, align 4
  %168 = zext i32 %166 to i64
  %169 = getelementptr inbounds i32, i32* %165, i64 %168
  store i32 %162, i32* %169, align 4
  br label %170

170:                                              ; preds = %149, %145
  %171 = load i32, i32* %10, align 4
  %172 = load i32, i32* %11, align 4
  %173 = add i32 %172, 1
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* @MAC_RQC2_Q_PER_REG, align 4
  %175 = urem i32 %172, %174
  %176 = shl i32 %175, 3
  %177 = shl i32 %171, %176
  %178 = load i32, i32* %14, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %14, align 4
  %180 = load i32, i32* %11, align 4
  %181 = load i32, i32* @MAC_RQC2_Q_PER_REG, align 4
  %182 = urem i32 %180, %181
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %189

184:                                              ; preds = %170
  %185 = load i32, i32* %11, align 4
  %186 = load i32, i32* %6, align 4
  %187 = icmp ne i32 %185, %186
  br i1 %187, label %188, label %189

188:                                              ; preds = %184
  br label %112

189:                                              ; preds = %184, %170
  %190 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %191 = load i32, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %190, i32 %191, i32 %192)
  %194 = load i64, i64* @MAC_RQC2_INC, align 8
  %195 = load i32, i32* %13, align 4
  %196 = zext i32 %195 to i64
  %197 = add nsw i64 %196, %194
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %112

199:                                              ; preds = %112
  %200 = load i32, i32* @MTL_RQDCM0R, align 4
  store i32 %200, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %11, align 4
  br label %201

201:                                              ; preds = %227, %226, %199
  %202 = load i32, i32* %11, align 4
  %203 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %204 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %203, i32 0, i32 2
  %205 = load i32, i32* %204, align 8
  %206 = icmp ult i32 %202, %205
  br i1 %206, label %207, label %237

207:                                              ; preds = %201
  %208 = load i32, i32* %11, align 4
  %209 = add i32 %208, 1
  store i32 %209, i32* %11, align 4
  %210 = load i32, i32* @MTL_RQDCM_Q_PER_REG, align 4
  %211 = urem i32 %208, %210
  %212 = shl i32 %211, 3
  %213 = shl i32 128, %212
  %214 = load i32, i32* %14, align 4
  %215 = or i32 %214, %213
  store i32 %215, i32* %14, align 4
  %216 = load i32, i32* %11, align 4
  %217 = load i32, i32* @MTL_RQDCM_Q_PER_REG, align 4
  %218 = urem i32 %216, %217
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %227

220:                                              ; preds = %207
  %221 = load i32, i32* %11, align 4
  %222 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %223 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = icmp ne i32 %221, %224
  br i1 %225, label %226, label %227

226:                                              ; preds = %220
  br label %201

227:                                              ; preds = %220, %207
  %228 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %229 = load i32, i32* %13, align 4
  %230 = load i32, i32* %14, align 4
  %231 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %228, i32 %229, i32 %230)
  %232 = load i64, i64* @MTL_RQDCM_INC, align 8
  %233 = load i32, i32* %13, align 4
  %234 = zext i32 %233 to i64
  %235 = add nsw i64 %234, %232
  %236 = trunc i64 %235 to i32
  store i32 %236, i32* %13, align 4
  store i32 0, i32* %14, align 4
  br label %201

237:                                              ; preds = %201
  ret void
}

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @XGMAC_MTL_IOWRITE_BITS(%struct.xgbe_prv_data*, i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_PRIO_QUEUES(i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
