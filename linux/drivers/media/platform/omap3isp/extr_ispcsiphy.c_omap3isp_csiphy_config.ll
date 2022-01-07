; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_omap3isp_csiphy_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/omap3isp/extr_ispcsiphy.c_omap3isp_csiphy_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp_csiphy = type { i32, i32, i32, i32, i32 }
%struct.isp_pipeline = type { i32, i32, i32 }
%struct.isp_bus_cfg = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, %struct.isp_csiphy_lanes_cfg }
%struct.isp_csiphy_lanes_cfg = type { %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.isp_csiphy_lanes_cfg }

@ISP_INTERFACE_CCP2B_PHY1 = common dso_local global i64 0, align 8
@ISP_INTERFACE_CCP2B_PHY2 = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ISPCSIPHY_REG0 = common dso_local global i32 0, align 4
@ISPCSIPHY_REG0_THS_TERM_MASK = common dso_local global i32 0, align 4
@ISPCSIPHY_REG0_THS_SETTLE_MASK = common dso_local global i32 0, align 4
@ISPCSIPHY_REG0_THS_TERM_SHIFT = common dso_local global i32 0, align 4
@ISPCSIPHY_REG0_THS_SETTLE_SHIFT = common dso_local global i32 0, align 4
@ISPCSIPHY_REG1 = common dso_local global i32 0, align 4
@ISPCSIPHY_REG1_TCLK_TERM_MASK = common dso_local global i32 0, align 4
@ISPCSIPHY_REG1_TCLK_MISS_MASK = common dso_local global i32 0, align 4
@ISPCSIPHY_REG1_TCLK_SETTLE_MASK = common dso_local global i32 0, align 4
@TCLK_TERM = common dso_local global i32 0, align 4
@ISPCSIPHY_REG1_TCLK_TERM_SHIFT = common dso_local global i32 0, align 4
@TCLK_MISS = common dso_local global i32 0, align 4
@ISPCSIPHY_REG1_TCLK_MISS_SHIFT = common dso_local global i32 0, align 4
@TCLK_SETTLE = common dso_local global i32 0, align 4
@ISPCSIPHY_REG1_TCLK_SETTLE_SHIFT = common dso_local global i32 0, align 4
@ISPCSI2_PHY_CFG = common dso_local global i32 0, align 4
@ISPCSI2_PHY_CFG_CLOCK_POL_MASK = common dso_local global i32 0, align 4
@ISPCSI2_PHY_CFG_CLOCK_POSITION_MASK = common dso_local global i32 0, align 4
@ISPCSI2_PHY_CFG_CLOCK_POL_SHIFT = common dso_local global i32 0, align 4
@ISPCSI2_PHY_CFG_CLOCK_POSITION_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.isp_csiphy*)* @omap3isp_csiphy_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap3isp_csiphy_config(%struct.isp_csiphy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.isp_csiphy*, align 8
  %4 = alloca %struct.isp_pipeline*, align 8
  %5 = alloca %struct.isp_bus_cfg*, align 8
  %6 = alloca %struct.isp_csiphy_lanes_cfg*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.isp_csiphy* %0, %struct.isp_csiphy** %3, align 8
  %12 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %13 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %12, i32 0, i32 4
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.isp_pipeline* @to_isp_pipeline(i32 %14)
  store %struct.isp_pipeline* %15, %struct.isp_pipeline** %4, align 8
  %16 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %17 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.isp_bus_cfg* @v4l2_subdev_to_bus_cfg(i32 %18)
  store %struct.isp_bus_cfg* %19, %struct.isp_bus_cfg** %5, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %21 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @ISP_INTERFACE_CCP2B_PHY1, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %1
  %26 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %27 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @ISP_INTERFACE_CCP2B_PHY2, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25, %1
  %32 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %33 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 1
  store %struct.isp_csiphy_lanes_cfg* %35, %struct.isp_csiphy_lanes_cfg** %6, align 8
  store i32 1, i32* %8, align 4
  br label %46

36:                                               ; preds = %25
  %37 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %38 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  store %struct.isp_csiphy_lanes_cfg* %40, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %41 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %42 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %36, %31
  %47 = load i32, i32* %8, align 4
  %48 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %49 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ugt i32 %47, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %46
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %335

55:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %111, %55
  %57 = load i32, i32* %10, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ult i32 %57, %58
  br i1 %59, label %60, label %114

60:                                               ; preds = %56
  %61 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %62 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %61, i32 0, i32 1
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sgt i32 %68, 1
  br i1 %69, label %80, label %70

70:                                               ; preds = %60
  %71 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %72 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = zext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 3
  br i1 %79, label %80, label %83

80:                                               ; preds = %70, %60
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %335

83:                                               ; preds = %70
  %84 = load i32, i32* %9, align 4
  %85 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %86 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %85, i32 0, i32 1
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i64 %89
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = shl i32 1, %92
  %94 = and i32 %84, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %99

96:                                               ; preds = %83
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %2, align 4
  br label %335

99:                                               ; preds = %83
  %100 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %101 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %100, i32 0, i32 1
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = shl i32 1, %107
  %109 = load i32, i32* %9, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %99
  %112 = load i32, i32* %10, align 4
  %113 = add i32 %112, 1
  store i32 %113, i32* %10, align 4
  br label %56

114:                                              ; preds = %56
  %115 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %116 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %126, label %120

120:                                              ; preds = %114
  %121 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %122 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %124, 3
  br i1 %125, label %126, label %129

126:                                              ; preds = %120, %114
  %127 = load i32, i32* @EINVAL, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %2, align 4
  br label %335

129:                                              ; preds = %120
  %130 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %131 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = icmp eq i32 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %129
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %138 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = shl i32 1, %140
  %142 = and i32 %136, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %135, %129
  %145 = load i32, i32* @EINVAL, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %2, align 4
  br label %335

147:                                              ; preds = %135
  %148 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %149 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %150 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.isp_bus_cfg*, %struct.isp_bus_cfg** %5, align 8
  %153 = getelementptr inbounds %struct.isp_bus_cfg, %struct.isp_bus_cfg* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = call i32 @csiphy_routing_cfg(%struct.isp_csiphy* %148, i64 %151, i32 1, i32 %156)
  %158 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %159 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = sdiv i32 %160, 1000
  %162 = load i32, i32* %9, align 4
  %163 = call i32 @hweight32(i32 %162)
  %164 = mul nsw i32 2, %163
  %165 = sdiv i32 %161, %164
  %166 = load %struct.isp_pipeline*, %struct.isp_pipeline** %4, align 8
  %167 = getelementptr inbounds %struct.isp_pipeline, %struct.isp_pipeline* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = mul nsw i32 %165, %168
  store i32 %169, i32* %7, align 4
  %170 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %171 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %174 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* @ISPCSIPHY_REG0, align 4
  %177 = call i32 @isp_reg_readl(i32 %172, i32 %175, i32 %176)
  store i32 %177, i32* %11, align 4
  %178 = load i32, i32* @ISPCSIPHY_REG0_THS_TERM_MASK, align 4
  %179 = load i32, i32* @ISPCSIPHY_REG0_THS_SETTLE_MASK, align 4
  %180 = or i32 %178, %179
  %181 = xor i32 %180, -1
  %182 = load i32, i32* %11, align 4
  %183 = and i32 %182, %181
  store i32 %183, i32* %11, align 4
  %184 = load i32, i32* %7, align 4
  %185 = mul nsw i32 25, %184
  %186 = call i32 @DIV_ROUND_UP(i32 %185, i32 2000000)
  %187 = sub nsw i32 %186, 1
  %188 = load i32, i32* @ISPCSIPHY_REG0_THS_TERM_SHIFT, align 4
  %189 = shl i32 %187, %188
  %190 = load i32, i32* %11, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %11, align 4
  %192 = load i32, i32* %7, align 4
  %193 = mul nsw i32 90, %192
  %194 = call i32 @DIV_ROUND_UP(i32 %193, i32 1000000)
  %195 = add nsw i32 %194, 3
  %196 = load i32, i32* @ISPCSIPHY_REG0_THS_SETTLE_SHIFT, align 4
  %197 = shl i32 %195, %196
  %198 = load i32, i32* %11, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %11, align 4
  %200 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %201 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 4
  %203 = load i32, i32* %11, align 4
  %204 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %205 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 4
  %207 = load i32, i32* @ISPCSIPHY_REG0, align 4
  %208 = call i32 @isp_reg_writel(i32 %202, i32 %203, i32 %206, i32 %207)
  %209 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %210 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %209, i32 0, i32 2
  %211 = load i32, i32* %210, align 4
  %212 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %213 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %212, i32 0, i32 3
  %214 = load i32, i32* %213, align 4
  %215 = load i32, i32* @ISPCSIPHY_REG1, align 4
  %216 = call i32 @isp_reg_readl(i32 %211, i32 %214, i32 %215)
  store i32 %216, i32* %11, align 4
  %217 = load i32, i32* @ISPCSIPHY_REG1_TCLK_TERM_MASK, align 4
  %218 = load i32, i32* @ISPCSIPHY_REG1_TCLK_MISS_MASK, align 4
  %219 = or i32 %217, %218
  %220 = load i32, i32* @ISPCSIPHY_REG1_TCLK_SETTLE_MASK, align 4
  %221 = or i32 %219, %220
  %222 = xor i32 %221, -1
  %223 = load i32, i32* %11, align 4
  %224 = and i32 %223, %222
  store i32 %224, i32* %11, align 4
  %225 = load i32, i32* @TCLK_TERM, align 4
  %226 = load i32, i32* @ISPCSIPHY_REG1_TCLK_TERM_SHIFT, align 4
  %227 = shl i32 %225, %226
  %228 = load i32, i32* %11, align 4
  %229 = or i32 %228, %227
  store i32 %229, i32* %11, align 4
  %230 = load i32, i32* @TCLK_MISS, align 4
  %231 = load i32, i32* @ISPCSIPHY_REG1_TCLK_MISS_SHIFT, align 4
  %232 = shl i32 %230, %231
  %233 = load i32, i32* %11, align 4
  %234 = or i32 %233, %232
  store i32 %234, i32* %11, align 4
  %235 = load i32, i32* @TCLK_SETTLE, align 4
  %236 = load i32, i32* @ISPCSIPHY_REG1_TCLK_SETTLE_SHIFT, align 4
  %237 = shl i32 %235, %236
  %238 = load i32, i32* %11, align 4
  %239 = or i32 %238, %237
  store i32 %239, i32* %11, align 4
  %240 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %241 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = load i32, i32* %11, align 4
  %244 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %245 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @ISPCSIPHY_REG1, align 4
  %248 = call i32 @isp_reg_writel(i32 %242, i32 %243, i32 %246, i32 %247)
  %249 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %250 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 4
  %252 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %253 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* @ISPCSI2_PHY_CFG, align 4
  %256 = call i32 @isp_reg_readl(i32 %251, i32 %254, i32 %255)
  store i32 %256, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %257

257:                                              ; preds = %300, %147
  %258 = load i32, i32* %10, align 4
  %259 = load i32, i32* %8, align 4
  %260 = icmp ult i32 %258, %259
  br i1 %260, label %261, label %303

261:                                              ; preds = %257
  %262 = load i32, i32* %10, align 4
  %263 = add i32 %262, 1
  %264 = call i32 @ISPCSI2_PHY_CFG_DATA_POL_MASK(i32 %263)
  %265 = load i32, i32* %10, align 4
  %266 = add i32 %265, 1
  %267 = call i32 @ISPCSI2_PHY_CFG_DATA_POSITION_MASK(i32 %266)
  %268 = or i32 %264, %267
  %269 = xor i32 %268, -1
  %270 = load i32, i32* %11, align 4
  %271 = and i32 %270, %269
  store i32 %271, i32* %11, align 4
  %272 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %273 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %272, i32 0, i32 1
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %273, align 8
  %275 = load i32, i32* %10, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i64 %276
  %278 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = load i32, i32* %10, align 4
  %281 = add i32 %280, 1
  %282 = call i32 @ISPCSI2_PHY_CFG_DATA_POL_SHIFT(i32 %281)
  %283 = shl i32 %279, %282
  %284 = load i32, i32* %11, align 4
  %285 = or i32 %284, %283
  store i32 %285, i32* %11, align 4
  %286 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %287 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %286, i32 0, i32 1
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %287, align 8
  %289 = load i32, i32* %10, align 4
  %290 = zext i32 %289 to i64
  %291 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i64 %290
  %292 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %291, i32 0, i32 1
  %293 = load i32, i32* %292, align 4
  %294 = load i32, i32* %10, align 4
  %295 = add i32 %294, 1
  %296 = call i32 @ISPCSI2_PHY_CFG_DATA_POSITION_SHIFT(i32 %295)
  %297 = shl i32 %293, %296
  %298 = load i32, i32* %11, align 4
  %299 = or i32 %298, %297
  store i32 %299, i32* %11, align 4
  br label %300

300:                                              ; preds = %261
  %301 = load i32, i32* %10, align 4
  %302 = add i32 %301, 1
  store i32 %302, i32* %10, align 4
  br label %257

303:                                              ; preds = %257
  %304 = load i32, i32* @ISPCSI2_PHY_CFG_CLOCK_POL_MASK, align 4
  %305 = load i32, i32* @ISPCSI2_PHY_CFG_CLOCK_POSITION_MASK, align 4
  %306 = or i32 %304, %305
  %307 = xor i32 %306, -1
  %308 = load i32, i32* %11, align 4
  %309 = and i32 %308, %307
  store i32 %309, i32* %11, align 4
  %310 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %311 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %310, i32 0, i32 0
  %312 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %311, i32 0, i32 0
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @ISPCSI2_PHY_CFG_CLOCK_POL_SHIFT, align 4
  %315 = shl i32 %313, %314
  %316 = load i32, i32* %11, align 4
  %317 = or i32 %316, %315
  store i32 %317, i32* %11, align 4
  %318 = load %struct.isp_csiphy_lanes_cfg*, %struct.isp_csiphy_lanes_cfg** %6, align 8
  %319 = getelementptr inbounds %struct.isp_csiphy_lanes_cfg, %struct.isp_csiphy_lanes_cfg* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 4
  %322 = load i32, i32* @ISPCSI2_PHY_CFG_CLOCK_POSITION_SHIFT, align 4
  %323 = shl i32 %321, %322
  %324 = load i32, i32* %11, align 4
  %325 = or i32 %324, %323
  store i32 %325, i32* %11, align 4
  %326 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %327 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %326, i32 0, i32 2
  %328 = load i32, i32* %327, align 4
  %329 = load i32, i32* %11, align 4
  %330 = load %struct.isp_csiphy*, %struct.isp_csiphy** %3, align 8
  %331 = getelementptr inbounds %struct.isp_csiphy, %struct.isp_csiphy* %330, i32 0, i32 1
  %332 = load i32, i32* %331, align 4
  %333 = load i32, i32* @ISPCSI2_PHY_CFG, align 4
  %334 = call i32 @isp_reg_writel(i32 %328, i32 %329, i32 %332, i32 %333)
  store i32 0, i32* %2, align 4
  br label %335

335:                                              ; preds = %303, %144, %126, %96, %80, %52
  %336 = load i32, i32* %2, align 4
  ret i32 %336
}

declare dso_local %struct.isp_pipeline* @to_isp_pipeline(i32) #1

declare dso_local %struct.isp_bus_cfg* @v4l2_subdev_to_bus_cfg(i32) #1

declare dso_local i32 @csiphy_routing_cfg(%struct.isp_csiphy*, i64, i32, i32) #1

declare dso_local i32 @hweight32(i32) #1

declare dso_local i32 @isp_reg_readl(i32, i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @isp_reg_writel(i32, i32, i32, i32) #1

declare dso_local i32 @ISPCSI2_PHY_CFG_DATA_POL_MASK(i32) #1

declare dso_local i32 @ISPCSI2_PHY_CFG_DATA_POSITION_MASK(i32) #1

declare dso_local i32 @ISPCSI2_PHY_CFG_DATA_POL_SHIFT(i32) #1

declare dso_local i32 @ISPCSI2_PHY_CFG_DATA_POSITION_SHIFT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
