; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-rockchip.c_dw_mci_rk3288_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-rockchip.c_dw_mci_rk3288_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci_slot = type { %struct.mmc_host*, %struct.dw_mci* }
%struct.mmc_host = type { i32 }
%struct.dw_mci = type { i32, %struct.dw_mci_rockchip_priv_data* }
%struct.dw_mci_rockchip_priv_data = type { i32, i32, i32 }
%struct.range_t = type { i32, i32 }
%struct.range_t.0 = type opaque
%struct.range_t.1 = type opaque

@.str = private unnamed_addr constant [40 x i8] c"Tuning clock (sample_clk) not defined.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"All phases bad!\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"All phases work, using default phase %d.\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"Good phase range %d-%d (%d len)\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Best phase range %d-%d (%d len)\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Successfully tuned phase to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci_slot*, i32)* @dw_mci_rk3288_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_rk3288_execute_tuning(%struct.dw_mci_slot* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dw_mci_slot*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dw_mci*, align 8
  %7 = alloca %struct.dw_mci_rockchip_priv_data*, align 8
  %8 = alloca %struct.mmc_host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.range_t*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.dw_mci_slot* %0, %struct.dw_mci_slot** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %21 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %20, i32 0, i32 1
  %22 = load %struct.dw_mci*, %struct.dw_mci** %21, align 8
  store %struct.dw_mci* %22, %struct.dw_mci** %6, align 8
  %23 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %24 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %23, i32 0, i32 1
  %25 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %24, align 8
  store %struct.dw_mci_rockchip_priv_data* %25, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %26 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %4, align 8
  %27 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %26, i32 0, i32 0
  %28 = load %struct.mmc_host*, %struct.mmc_host** %27, align 8
  store %struct.mmc_host* %28, %struct.mmc_host** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %15, align 4
  store i32 -1, i32* %16, align 4
  store i32 -1, i32* %17, align 4
  %29 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %30 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @IS_ERR(i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %2
  %35 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %36 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %335

41:                                               ; preds = %2
  %42 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %43 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = sdiv i32 %44, 2
  %46 = add nsw i32 %45, 1
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.range_t.0* @kmalloc_array(i32 %46, i32 8, i32 %47)
  %49 = bitcast %struct.range_t.0* %48 to %struct.range_t*
  store %struct.range_t* %49, %struct.range_t** %14, align 8
  %50 = load %struct.range_t*, %struct.range_t** %14, align 8
  %51 = icmp ne %struct.range_t* %50, null
  br i1 %51, label %55, label %52

52:                                               ; preds = %41
  %53 = load i32, i32* @ENOMEM, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %3, align 4
  br label %335

55:                                               ; preds = %41
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %143, %55
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %59 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %145

62:                                               ; preds = %56
  %63 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %64 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %68 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @TUNING_ITERATION_TO_PHASE(i32 %66, i32 %69)
  %71 = call i32 @clk_set_phase(i32 %65, i32 %70)
  %72 = load %struct.mmc_host*, %struct.mmc_host** %8, align 8
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @mmc_send_tuning(%struct.mmc_host* %72, i32 %73, i32* null)
  %75 = icmp ne i32 %74, 0
  %76 = xor i1 %75, true
  %77 = zext i1 %76 to i32
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %10, align 4
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %62
  %81 = load i32, i32* %11, align 4
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %80, %62
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %98, label %85

85:                                               ; preds = %82
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %98

88:                                               ; preds = %85
  %89 = load i32, i32* %15, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.range_t*, %struct.range_t** %14, align 8
  %93 = load i32, i32* %15, align 4
  %94 = sub i32 %93, 1
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds %struct.range_t, %struct.range_t* %92, i64 %95
  %97 = getelementptr inbounds %struct.range_t, %struct.range_t* %96, i32 0, i32 0
  store i32 %91, i32* %97, align 4
  br label %98

98:                                               ; preds = %88, %85, %82
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = load i32, i32* %10, align 4
  %103 = load %struct.range_t*, %struct.range_t** %14, align 8
  %104 = load i32, i32* %15, align 4
  %105 = sub i32 %104, 1
  %106 = zext i32 %105 to i64
  %107 = getelementptr inbounds %struct.range_t, %struct.range_t* %103, i64 %106
  %108 = getelementptr inbounds %struct.range_t, %struct.range_t* %107, i32 0, i32 1
  store i32 %102, i32* %108, align 4
  %109 = load i32, i32* %10, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %10, align 4
  br label %143

111:                                              ; preds = %98
  %112 = load i32, i32* %10, align 4
  %113 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %114 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp eq i32 %112, %116
  br i1 %117, label %118, label %121

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %10, align 4
  br label %142

121:                                              ; preds = %111
  %122 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %123 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = mul nsw i32 20, %124
  %126 = call i64 @DIV_ROUND_UP(i32 %125, i32 360)
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = add nsw i64 %128, %126
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %10, align 4
  %131 = load i32, i32* %10, align 4
  %132 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %133 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sge i32 %131, %134
  br i1 %135, label %136, label %141

136:                                              ; preds = %121
  %137 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %138 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %136, %121
  br label %142

142:                                              ; preds = %141, %118
  br label %143

143:                                              ; preds = %142, %101
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %12, align 4
  br label %56

145:                                              ; preds = %56
  %146 = load i32, i32* %15, align 4
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %155

148:                                              ; preds = %145
  %149 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %150 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @dev_warn(i32 %151, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %153 = load i32, i32* @EIO, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %9, align 4
  br label %330

155:                                              ; preds = %145
  %156 = load i32, i32* %15, align 4
  %157 = icmp ugt i32 %156, 1
  br i1 %157, label %158, label %177

158:                                              ; preds = %155
  %159 = load i32, i32* %13, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %177

161:                                              ; preds = %158
  %162 = load i32, i32* %11, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %177

164:                                              ; preds = %161
  %165 = load %struct.range_t*, %struct.range_t** %14, align 8
  %166 = load i32, i32* %15, align 4
  %167 = sub i32 %166, 1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.range_t, %struct.range_t* %165, i64 %168
  %170 = getelementptr inbounds %struct.range_t, %struct.range_t* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 4
  %172 = load %struct.range_t*, %struct.range_t** %14, align 8
  %173 = getelementptr inbounds %struct.range_t, %struct.range_t* %172, i64 0
  %174 = getelementptr inbounds %struct.range_t, %struct.range_t* %173, i32 0, i32 0
  store i32 %171, i32* %174, align 4
  %175 = load i32, i32* %15, align 4
  %176 = add i32 %175, -1
  store i32 %176, i32* %15, align 4
  br label %177

177:                                              ; preds = %164, %161, %158, %155
  %178 = load %struct.range_t*, %struct.range_t** %14, align 8
  %179 = getelementptr inbounds %struct.range_t, %struct.range_t* %178, i64 0
  %180 = getelementptr inbounds %struct.range_t, %struct.range_t* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %208

183:                                              ; preds = %177
  %184 = load %struct.range_t*, %struct.range_t** %14, align 8
  %185 = getelementptr inbounds %struct.range_t, %struct.range_t* %184, i64 0
  %186 = getelementptr inbounds %struct.range_t, %struct.range_t* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %189 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = sub nsw i32 %190, 1
  %192 = icmp eq i32 %187, %191
  br i1 %192, label %193, label %208

193:                                              ; preds = %183
  %194 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %195 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %198 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %197, i32 0, i32 2
  %199 = load i32, i32* %198, align 4
  %200 = call i32 @clk_set_phase(i32 %196, i32 %199)
  %201 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %202 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %205 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %204, i32 0, i32 2
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @dev_info(i32 %203, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0), i32 %206)
  br label %330

208:                                              ; preds = %183, %177
  store i32 0, i32* %10, align 4
  br label %209

209:                                              ; preds = %269, %208
  %210 = load i32, i32* %10, align 4
  %211 = load i32, i32* %15, align 4
  %212 = icmp ult i32 %210, %211
  br i1 %212, label %213, label %272

213:                                              ; preds = %209
  %214 = load %struct.range_t*, %struct.range_t** %14, align 8
  %215 = load i32, i32* %10, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.range_t, %struct.range_t* %214, i64 %216
  %218 = getelementptr inbounds %struct.range_t, %struct.range_t* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load %struct.range_t*, %struct.range_t** %14, align 8
  %221 = load i32, i32* %10, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.range_t, %struct.range_t* %220, i64 %222
  %224 = getelementptr inbounds %struct.range_t, %struct.range_t* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 4
  %226 = sub nsw i32 %219, %225
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %19, align 4
  %228 = load i32, i32* %19, align 4
  %229 = icmp slt i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %213
  %231 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %232 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* %19, align 4
  %235 = add nsw i32 %234, %233
  store i32 %235, i32* %19, align 4
  br label %236

236:                                              ; preds = %230, %213
  %237 = load i32, i32* %16, align 4
  %238 = load i32, i32* %19, align 4
  %239 = icmp slt i32 %237, %238
  br i1 %239, label %240, label %243

240:                                              ; preds = %236
  %241 = load i32, i32* %19, align 4
  store i32 %241, i32* %16, align 4
  %242 = load i32, i32* %10, align 4
  store i32 %242, i32* %17, align 4
  br label %243

243:                                              ; preds = %240, %236
  %244 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %245 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = load %struct.range_t*, %struct.range_t** %14, align 8
  %248 = load i32, i32* %10, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.range_t, %struct.range_t* %247, i64 %249
  %251 = getelementptr inbounds %struct.range_t, %struct.range_t* %250, i32 0, i32 0
  %252 = load i32, i32* %251, align 4
  %253 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %254 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @TUNING_ITERATION_TO_PHASE(i32 %252, i32 %255)
  %257 = load %struct.range_t*, %struct.range_t** %14, align 8
  %258 = load i32, i32* %10, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.range_t, %struct.range_t* %257, i64 %259
  %261 = getelementptr inbounds %struct.range_t, %struct.range_t* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %264 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %263, i32 0, i32 0
  %265 = load i32, i32* %264, align 4
  %266 = call i32 @TUNING_ITERATION_TO_PHASE(i32 %262, i32 %265)
  %267 = load i32, i32* %19, align 4
  %268 = call i32 @dev_dbg(i32 %246, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0), i32 %256, i32 %266, i32 %267)
  br label %269

269:                                              ; preds = %243
  %270 = load i32, i32* %10, align 4
  %271 = add nsw i32 %270, 1
  store i32 %271, i32* %10, align 4
  br label %209

272:                                              ; preds = %209
  %273 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %274 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %273, i32 0, i32 0
  %275 = load i32, i32* %274, align 8
  %276 = load %struct.range_t*, %struct.range_t** %14, align 8
  %277 = load i32, i32* %17, align 4
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds %struct.range_t, %struct.range_t* %276, i64 %278
  %280 = getelementptr inbounds %struct.range_t, %struct.range_t* %279, i32 0, i32 0
  %281 = load i32, i32* %280, align 4
  %282 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %283 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %282, i32 0, i32 0
  %284 = load i32, i32* %283, align 4
  %285 = call i32 @TUNING_ITERATION_TO_PHASE(i32 %281, i32 %284)
  %286 = load %struct.range_t*, %struct.range_t** %14, align 8
  %287 = load i32, i32* %17, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds %struct.range_t, %struct.range_t* %286, i64 %288
  %290 = getelementptr inbounds %struct.range_t, %struct.range_t* %289, i32 0, i32 1
  %291 = load i32, i32* %290, align 4
  %292 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %293 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %292, i32 0, i32 0
  %294 = load i32, i32* %293, align 4
  %295 = call i32 @TUNING_ITERATION_TO_PHASE(i32 %291, i32 %294)
  %296 = load i32, i32* %16, align 4
  %297 = call i32 @dev_dbg(i32 %275, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0), i32 %285, i32 %295, i32 %296)
  %298 = load %struct.range_t*, %struct.range_t** %14, align 8
  %299 = load i32, i32* %17, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.range_t, %struct.range_t* %298, i64 %300
  %302 = getelementptr inbounds %struct.range_t, %struct.range_t* %301, i32 0, i32 0
  %303 = load i32, i32* %302, align 4
  %304 = load i32, i32* %16, align 4
  %305 = sdiv i32 %304, 2
  %306 = add nsw i32 %303, %305
  store i32 %306, i32* %18, align 4
  %307 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %308 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 4
  %310 = load i32, i32* %18, align 4
  %311 = srem i32 %310, %309
  store i32 %311, i32* %18, align 4
  %312 = load %struct.dw_mci*, %struct.dw_mci** %6, align 8
  %313 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 8
  %315 = load i32, i32* %18, align 4
  %316 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %317 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %316, i32 0, i32 0
  %318 = load i32, i32* %317, align 4
  %319 = call i32 @TUNING_ITERATION_TO_PHASE(i32 %315, i32 %318)
  %320 = call i32 @dev_info(i32 %314, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %319)
  %321 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %322 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %321, i32 0, i32 1
  %323 = load i32, i32* %322, align 4
  %324 = load i32, i32* %18, align 4
  %325 = load %struct.dw_mci_rockchip_priv_data*, %struct.dw_mci_rockchip_priv_data** %7, align 8
  %326 = getelementptr inbounds %struct.dw_mci_rockchip_priv_data, %struct.dw_mci_rockchip_priv_data* %325, i32 0, i32 0
  %327 = load i32, i32* %326, align 4
  %328 = call i32 @TUNING_ITERATION_TO_PHASE(i32 %324, i32 %327)
  %329 = call i32 @clk_set_phase(i32 %323, i32 %328)
  br label %330

330:                                              ; preds = %272, %193, %148
  %331 = load %struct.range_t*, %struct.range_t** %14, align 8
  %332 = bitcast %struct.range_t* %331 to %struct.range_t.1*
  %333 = call i32 @kfree(%struct.range_t.1* %332)
  %334 = load i32, i32* %9, align 4
  store i32 %334, i32* %3, align 4
  br label %335

335:                                              ; preds = %330, %52, %34
  %336 = load i32, i32* %3, align 4
  ret i32 %336
}

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.range_t.0* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

declare dso_local i32 @TUNING_ITERATION_TO_PHASE(i32, i32) #1

declare dso_local i32 @mmc_send_tuning(%struct.mmc_host*, i32, i32*) #1

declare dso_local i64 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.range_t.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
