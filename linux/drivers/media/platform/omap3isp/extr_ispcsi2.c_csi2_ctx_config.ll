; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_ctx_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsi2.c_csi2_ctx_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_device = type { i32 }
%struct.isp_csi2_device = type { i32 }
%struct.isp_csi2_ctx_cfg = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@ISPCSI2_CTX_CTRL1_EOF_EN = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL1_EOL_EN = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL1_CS_EN = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL2_VIRTUAL_ID_MASK = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL2_FORMAT_MASK = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL2_FORMAT_SHIFT = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL2_DPCM_PRED = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL2_USER_DEF_MAP_MASK = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL3_ALPHA_MASK = common dso_local global i32 0, align 4
@ISPCSI2_CTX_CTRL3_ALPHA_SHIFT = common dso_local global i32 0, align 4
@ISPCSI2_CTX_DAT_OFST_OFST_MASK = common dso_local global i32 0, align 4
@ISPCSI2_CTX_DAT_OFST_OFST_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp_device*, %struct.isp_csi2_device*, %struct.isp_csi2_ctx_cfg*)* @csi2_ctx_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @csi2_ctx_config(%struct.isp_device* %0, %struct.isp_csi2_device* %1, %struct.isp_csi2_ctx_cfg* %2) #0 {
  %4 = alloca %struct.isp_device*, align 8
  %5 = alloca %struct.isp_csi2_device*, align 8
  %6 = alloca %struct.isp_csi2_ctx_cfg*, align 8
  %7 = alloca i32, align 4
  store %struct.isp_device* %0, %struct.isp_device** %4, align 8
  store %struct.isp_csi2_device* %1, %struct.isp_csi2_device** %5, align 8
  store %struct.isp_csi2_ctx_cfg* %2, %struct.isp_csi2_ctx_cfg** %6, align 8
  %8 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %9 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %10 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %13 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @ISPCSI2_CTX_CTRL1(i32 %14)
  %16 = call i32 @isp_reg_readl(%struct.isp_device* %8, i32 %11, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %18 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %17, i32 0, i32 11
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %3
  %22 = load i32, i32* @ISPCSI2_CTX_CTRL1_EOF_EN, align 4
  %23 = load i32, i32* %7, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %7, align 4
  br label %30

25:                                               ; preds = %3
  %26 = load i32, i32* @ISPCSI2_CTX_CTRL1_EOF_EN, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %7, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %7, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %32 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %31, i32 0, i32 10
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @ISPCSI2_CTX_CTRL1_EOL_EN, align 4
  %37 = load i32, i32* %7, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %7, align 4
  br label %44

39:                                               ; preds = %30
  %40 = load i32, i32* @ISPCSI2_CTX_CTRL1_EOL_EN, align 4
  %41 = xor i32 %40, -1
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %7, align 4
  br label %44

44:                                               ; preds = %39, %35
  %45 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %46 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %45, i32 0, i32 9
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %44
  %50 = load i32, i32* @ISPCSI2_CTX_CTRL1_CS_EN, align 4
  %51 = load i32, i32* %7, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %7, align 4
  br label %58

53:                                               ; preds = %44
  %54 = load i32, i32* @ISPCSI2_CTX_CTRL1_CS_EN, align 4
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %7, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %53, %49
  %59 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %62 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %65 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %64, i32 0, i32 6
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @ISPCSI2_CTX_CTRL1(i32 %66)
  %68 = call i32 @isp_reg_writel(%struct.isp_device* %59, i32 %60, i32 %63, i32 %67)
  %69 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %70 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %71 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %74 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %73, i32 0, i32 6
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @ISPCSI2_CTX_CTRL2(i32 %75)
  %77 = call i32 @isp_reg_readl(%struct.isp_device* %69, i32 %72, i32 %76)
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* @ISPCSI2_CTX_CTRL2_VIRTUAL_ID_MASK, align 4
  %79 = xor i32 %78, -1
  %80 = load i32, i32* %7, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %7, align 4
  %82 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %83 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ISPCSI2_CTX_CTRL2_VIRTUAL_ID_SHIFT, align 4
  %86 = shl i32 %84, %85
  %87 = load i32, i32* %7, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %7, align 4
  %89 = load i32, i32* @ISPCSI2_CTX_CTRL2_FORMAT_MASK, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %7, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %7, align 4
  %93 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %94 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ISPCSI2_CTX_CTRL2_FORMAT_SHIFT, align 4
  %97 = shl i32 %95, %96
  %98 = load i32, i32* %7, align 4
  %99 = or i32 %98, %97
  store i32 %99, i32* %7, align 4
  %100 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %101 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %100, i32 0, i32 8
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %58
  %105 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %106 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %105, i32 0, i32 7
  %107 = load i64, i64* %106, align 8
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %104
  %110 = load i32, i32* @ISPCSI2_CTX_CTRL2_DPCM_PRED, align 4
  %111 = load i32, i32* %7, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %7, align 4
  br label %118

113:                                              ; preds = %104
  %114 = load i32, i32* @ISPCSI2_CTX_CTRL2_DPCM_PRED, align 4
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %7, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %7, align 4
  br label %118

118:                                              ; preds = %113, %109
  br label %119

119:                                              ; preds = %118, %58
  %120 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %121 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i64 @is_usr_def_mapping(i32 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %134

125:                                              ; preds = %119
  %126 = load i32, i32* @ISPCSI2_CTX_CTRL2_USER_DEF_MAP_MASK, align 4
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* @ISPCSI2_CTX_CTRL2_USER_DEF_MAP_SHIFT, align 4
  %131 = shl i32 2, %130
  %132 = load i32, i32* %7, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %7, align 4
  br label %134

134:                                              ; preds = %125, %119
  %135 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %136 = load i32, i32* %7, align 4
  %137 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %138 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %141 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %140, i32 0, i32 6
  %142 = load i32, i32* %141, align 8
  %143 = call i32 @ISPCSI2_CTX_CTRL2(i32 %142)
  %144 = call i32 @isp_reg_writel(%struct.isp_device* %135, i32 %136, i32 %139, i32 %143)
  %145 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %146 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %147 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %150 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %149, i32 0, i32 6
  %151 = load i32, i32* %150, align 8
  %152 = call i32 @ISPCSI2_CTX_CTRL3(i32 %151)
  %153 = call i32 @isp_reg_readl(%struct.isp_device* %145, i32 %148, i32 %152)
  store i32 %153, i32* %7, align 4
  %154 = load i32, i32* @ISPCSI2_CTX_CTRL3_ALPHA_MASK, align 4
  %155 = xor i32 %154, -1
  %156 = load i32, i32* %7, align 4
  %157 = and i32 %156, %155
  store i32 %157, i32* %7, align 4
  %158 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %159 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = load i32, i32* @ISPCSI2_CTX_CTRL3_ALPHA_SHIFT, align 4
  %162 = shl i32 %160, %161
  %163 = load i32, i32* %7, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %7, align 4
  %165 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %166 = load i32, i32* %7, align 4
  %167 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %168 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %171 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %170, i32 0, i32 6
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ISPCSI2_CTX_CTRL3(i32 %172)
  %174 = call i32 @isp_reg_writel(%struct.isp_device* %165, i32 %166, i32 %169, i32 %173)
  %175 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %176 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %177 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %180 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %179, i32 0, i32 6
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @ISPCSI2_CTX_DAT_OFST(i32 %181)
  %183 = call i32 @isp_reg_readl(%struct.isp_device* %175, i32 %178, i32 %182)
  store i32 %183, i32* %7, align 4
  %184 = load i32, i32* @ISPCSI2_CTX_DAT_OFST_OFST_MASK, align 4
  %185 = xor i32 %184, -1
  %186 = load i32, i32* %7, align 4
  %187 = and i32 %186, %185
  store i32 %187, i32* %7, align 4
  %188 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %189 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @ISPCSI2_CTX_DAT_OFST_OFST_SHIFT, align 4
  %192 = shl i32 %190, %191
  %193 = load i32, i32* %7, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %7, align 4
  %195 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %198 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %197, i32 0, i32 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %201 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %200, i32 0, i32 6
  %202 = load i32, i32* %201, align 8
  %203 = call i32 @ISPCSI2_CTX_DAT_OFST(i32 %202)
  %204 = call i32 @isp_reg_writel(%struct.isp_device* %195, i32 %196, i32 %199, i32 %203)
  %205 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %206 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %207 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 8
  %209 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %210 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %213 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %212, i32 0, i32 6
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @ISPCSI2_CTX_DAT_PING_ADDR(i32 %214)
  %216 = call i32 @isp_reg_writel(%struct.isp_device* %205, i32 %208, i32 %211, i32 %215)
  %217 = load %struct.isp_device*, %struct.isp_device** %4, align 8
  %218 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %219 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %218, i32 0, i32 5
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.isp_csi2_device*, %struct.isp_csi2_device** %5, align 8
  %222 = getelementptr inbounds %struct.isp_csi2_device, %struct.isp_csi2_device* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 4
  %224 = load %struct.isp_csi2_ctx_cfg*, %struct.isp_csi2_ctx_cfg** %6, align 8
  %225 = getelementptr inbounds %struct.isp_csi2_ctx_cfg, %struct.isp_csi2_ctx_cfg* %224, i32 0, i32 6
  %226 = load i32, i32* %225, align 8
  %227 = call i32 @ISPCSI2_CTX_DAT_PONG_ADDR(i32 %226)
  %228 = call i32 @isp_reg_writel(%struct.isp_device* %217, i32 %220, i32 %223, i32 %227)
  ret void
}

declare dso_local i32 @isp_reg_readl(%struct.isp_device*, i32, i32) #1

declare dso_local i32 @ISPCSI2_CTX_CTRL1(i32) #1

declare dso_local i32 @isp_reg_writel(%struct.isp_device*, i32, i32, i32) #1

declare dso_local i32 @ISPCSI2_CTX_CTRL2(i32) #1

declare dso_local i64 @is_usr_def_mapping(i32) #1

declare dso_local i32 @ISPCSI2_CTX_CTRL3(i32) #1

declare dso_local i32 @ISPCSI2_CTX_DAT_OFST(i32) #1

declare dso_local i32 @ISPCSI2_CTX_DAT_PING_ADDR(i32) #1

declare dso_local i32 @ISPCSI2_CTX_DAT_PONG_ADDR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
