; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_serdes_init_10g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_serdes_init_10g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, i32, %struct.niu_link_config }
%struct.niu_link_config = type { i64 }

@ENET_SERDES_0_CTRL_CFG = common dso_local global i64 0, align 8
@ENET_SERDES_0_TEST_CFG = common dso_local global i64 0, align 8
@ENET_SERDES_1_CTRL_CFG = common dso_local global i64 0, align 8
@ENET_SERDES_1_TEST_CFG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_SDET_0 = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_SDET_1 = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_SDET_2 = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_SDET_3 = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_EMPH_0_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_EMPH_1_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_EMPH_2_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_EMPH_3_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_LADJ_0_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_LADJ_1_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_LADJ_2_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_CTRL_LADJ_3_SHIFT = common dso_local global i32 0, align 4
@LOOPBACK_PHY = common dso_local global i64 0, align 8
@ENET_TEST_MD_PAD_LOOPBACK = common dso_local global i32 0, align 4
@ENET_SERDES_TEST_MD_0_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_TEST_MD_1_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_TEST_MD_2_SHIFT = common dso_local global i32 0, align 4
@ENET_SERDES_TEST_MD_3_SHIFT = common dso_local global i32 0, align 4
@ESR_RXTX_CTRL_VMUXLO = common dso_local global i32 0, align 4
@ESR_RXTX_CTRL_ENSTRETCH = common dso_local global i32 0, align 4
@ESR_RXTX_CTRL_VMUXLO_SHIFT = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_SRATE = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_THCNT = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_BLTIME = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_RXLOSENAB = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_SRATE_SHIFT = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_THCNT_SHIFT = common dso_local global i32 0, align 4
@BLTIME_300_CYCLES = common dso_local global i32 0, align 4
@ESR_GLUE_CTRL0_BLTIME_SHIFT = common dso_local global i32 0, align 4
@ESR_INT_SIGNALS = common dso_local global i32 0, align 4
@ESR_INT_SIGNALS_P0_BITS = common dso_local global i32 0, align 4
@ESR_INT_SRDY0_P0 = common dso_local global i32 0, align 4
@ESR_INT_DET0_P0 = common dso_local global i32 0, align 4
@ESR_INT_XSRDY_P0 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P0_CH3 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P0_CH2 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P0_CH1 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P0_CH0 = common dso_local global i32 0, align 4
@ESR_INT_SIGNALS_P1_BITS = common dso_local global i32 0, align 4
@ESR_INT_SRDY0_P1 = common dso_local global i32 0, align 4
@ESR_INT_DET0_P1 = common dso_local global i32 0, align 4
@ESR_INT_XSRDY_P1 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P1_CH3 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P1_CH2 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P1_CH1 = common dso_local global i32 0, align 4
@ESR_INT_XDP_P1_CH0 = common dso_local global i32 0, align 4
@NIU_FLAGS_HOTPLUG_PHY = common dso_local global i32 0, align 4
@NIU_FLAGS_HOTPLUG_PHY_PRESENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Port %u signal bits [%08x] are not [%08x]\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @serdes_init_10g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serdes_init_10g(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.niu_link_config*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %16 = load %struct.niu*, %struct.niu** %3, align 8
  %17 = getelementptr inbounds %struct.niu, %struct.niu* %16, i32 0, i32 3
  store %struct.niu_link_config* %17, %struct.niu_link_config** %4, align 8
  %18 = load %struct.niu*, %struct.niu** %3, align 8
  %19 = getelementptr inbounds %struct.niu, %struct.niu* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  switch i32 %20, label %27 [
    i32 0, label %21
    i32 1, label %24
  ]

21:                                               ; preds = %1
  %22 = load i64, i64* @ENET_SERDES_0_CTRL_CFG, align 8
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* @ENET_SERDES_0_TEST_CFG, align 8
  store i64 %23, i64* %6, align 8
  br label %30

24:                                               ; preds = %1
  %25 = load i64, i64* @ENET_SERDES_1_CTRL_CFG, align 8
  store i64 %25, i64* %5, align 8
  %26 = load i64, i64* @ENET_SERDES_1_TEST_CFG, align 8
  store i64 %26, i64* %6, align 8
  br label %30

27:                                               ; preds = %1
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %2, align 4
  br label %258

30:                                               ; preds = %24, %21
  %31 = load i32, i32* @ENET_SERDES_CTRL_SDET_0, align 4
  %32 = load i32, i32* @ENET_SERDES_CTRL_SDET_1, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* @ENET_SERDES_CTRL_SDET_2, align 4
  %35 = or i32 %33, %34
  %36 = load i32, i32* @ENET_SERDES_CTRL_SDET_3, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @ENET_SERDES_CTRL_EMPH_0_SHIFT, align 4
  %39 = shl i32 5, %38
  %40 = or i32 %37, %39
  %41 = load i32, i32* @ENET_SERDES_CTRL_EMPH_1_SHIFT, align 4
  %42 = shl i32 5, %41
  %43 = or i32 %40, %42
  %44 = load i32, i32* @ENET_SERDES_CTRL_EMPH_2_SHIFT, align 4
  %45 = shl i32 5, %44
  %46 = or i32 %43, %45
  %47 = load i32, i32* @ENET_SERDES_CTRL_EMPH_3_SHIFT, align 4
  %48 = shl i32 5, %47
  %49 = or i32 %46, %48
  %50 = load i32, i32* @ENET_SERDES_CTRL_LADJ_0_SHIFT, align 4
  %51 = shl i32 1, %50
  %52 = or i32 %49, %51
  %53 = load i32, i32* @ENET_SERDES_CTRL_LADJ_1_SHIFT, align 4
  %54 = shl i32 1, %53
  %55 = or i32 %52, %54
  %56 = load i32, i32* @ENET_SERDES_CTRL_LADJ_2_SHIFT, align 4
  %57 = shl i32 1, %56
  %58 = or i32 %55, %57
  %59 = load i32, i32* @ENET_SERDES_CTRL_LADJ_3_SHIFT, align 4
  %60 = shl i32 1, %59
  %61 = or i32 %58, %60
  store i32 %61, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %62 = load %struct.niu_link_config*, %struct.niu_link_config** %4, align 8
  %63 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @LOOPBACK_PHY, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %30
  %68 = load i32, i32* @ENET_TEST_MD_PAD_LOOPBACK, align 4
  %69 = load i32, i32* @ENET_SERDES_TEST_MD_0_SHIFT, align 4
  %70 = shl i32 %68, %69
  %71 = load i32, i32* @ENET_TEST_MD_PAD_LOOPBACK, align 4
  %72 = load i32, i32* @ENET_SERDES_TEST_MD_1_SHIFT, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %70, %73
  %75 = load i32, i32* @ENET_TEST_MD_PAD_LOOPBACK, align 4
  %76 = load i32, i32* @ENET_SERDES_TEST_MD_2_SHIFT, align 4
  %77 = shl i32 %75, %76
  %78 = or i32 %74, %77
  %79 = load i32, i32* @ENET_TEST_MD_PAD_LOOPBACK, align 4
  %80 = load i32, i32* @ENET_SERDES_TEST_MD_3_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %67, %30
  %86 = load i64, i64* %5, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @nw64(i64 %86, i32 %87)
  %89 = load i64, i64* %6, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @nw64(i64 %89, i32 %90)
  store i64 0, i64* %7, align 8
  br label %92

92:                                               ; preds = %161, %85
  %93 = load i64, i64* %7, align 8
  %94 = icmp ult i64 %93, 4
  br i1 %94, label %95, label %164

95:                                               ; preds = %92
  %96 = load %struct.niu*, %struct.niu** %3, align 8
  %97 = load i64, i64* %7, align 8
  %98 = call i32 @esr_read_rxtx_ctrl(%struct.niu* %96, i64 %97, i32* %14)
  store i32 %98, i32* %13, align 4
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %95
  %102 = load i32, i32* %13, align 4
  store i32 %102, i32* %2, align 4
  br label %258

103:                                              ; preds = %95
  %104 = load %struct.niu*, %struct.niu** %3, align 8
  %105 = load i64, i64* %7, align 8
  %106 = call i32 @esr_read_glue0(%struct.niu* %104, i64 %105, i32* %15)
  store i32 %106, i32* %13, align 4
  %107 = load i32, i32* %13, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %103
  %110 = load i32, i32* %13, align 4
  store i32 %110, i32* %2, align 4
  br label %258

111:                                              ; preds = %103
  %112 = load i32, i32* @ESR_RXTX_CTRL_VMUXLO, align 4
  %113 = xor i32 %112, -1
  %114 = load i32, i32* %14, align 4
  %115 = and i32 %114, %113
  store i32 %115, i32* %14, align 4
  %116 = load i32, i32* @ESR_RXTX_CTRL_ENSTRETCH, align 4
  %117 = load i32, i32* @ESR_RXTX_CTRL_VMUXLO_SHIFT, align 4
  %118 = shl i32 2, %117
  %119 = or i32 %116, %118
  %120 = load i32, i32* %14, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* @ESR_GLUE_CTRL0_SRATE, align 4
  %123 = load i32, i32* @ESR_GLUE_CTRL0_THCNT, align 4
  %124 = or i32 %122, %123
  %125 = load i32, i32* @ESR_GLUE_CTRL0_BLTIME, align 4
  %126 = or i32 %124, %125
  %127 = xor i32 %126, -1
  %128 = load i32, i32* %15, align 4
  %129 = and i32 %128, %127
  store i32 %129, i32* %15, align 4
  %130 = load i32, i32* @ESR_GLUE_CTRL0_RXLOSENAB, align 4
  %131 = load i32, i32* @ESR_GLUE_CTRL0_SRATE_SHIFT, align 4
  %132 = shl i32 15, %131
  %133 = or i32 %130, %132
  %134 = load i32, i32* @ESR_GLUE_CTRL0_THCNT_SHIFT, align 4
  %135 = shl i32 255, %134
  %136 = or i32 %133, %135
  %137 = load i32, i32* @BLTIME_300_CYCLES, align 4
  %138 = load i32, i32* @ESR_GLUE_CTRL0_BLTIME_SHIFT, align 4
  %139 = shl i32 %137, %138
  %140 = or i32 %136, %139
  %141 = load i32, i32* %15, align 4
  %142 = or i32 %141, %140
  store i32 %142, i32* %15, align 4
  %143 = load %struct.niu*, %struct.niu** %3, align 8
  %144 = load i64, i64* %7, align 8
  %145 = load i32, i32* %14, align 4
  %146 = call i32 @esr_write_rxtx_ctrl(%struct.niu* %143, i64 %144, i32 %145)
  store i32 %146, i32* %13, align 4
  %147 = load i32, i32* %13, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %151

149:                                              ; preds = %111
  %150 = load i32, i32* %13, align 4
  store i32 %150, i32* %2, align 4
  br label %258

151:                                              ; preds = %111
  %152 = load %struct.niu*, %struct.niu** %3, align 8
  %153 = load i64, i64* %7, align 8
  %154 = load i32, i32* %15, align 4
  %155 = call i32 @esr_write_glue0(%struct.niu* %152, i64 %153, i32 %154)
  store i32 %155, i32* %13, align 4
  %156 = load i32, i32* %13, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %160

158:                                              ; preds = %151
  %159 = load i32, i32* %13, align 4
  store i32 %159, i32* %2, align 4
  br label %258

160:                                              ; preds = %151
  br label %161

161:                                              ; preds = %160
  %162 = load i64, i64* %7, align 8
  %163 = add i64 %162, 1
  store i64 %163, i64* %7, align 8
  br label %92

164:                                              ; preds = %92
  %165 = load %struct.niu*, %struct.niu** %3, align 8
  %166 = call i32 @esr_reset(%struct.niu* %165)
  store i32 %166, i32* %13, align 4
  %167 = load i32, i32* %13, align 4
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %171

169:                                              ; preds = %164
  %170 = load i32, i32* %13, align 4
  store i32 %170, i32* %2, align 4
  br label %258

171:                                              ; preds = %164
  %172 = load i32, i32* @ESR_INT_SIGNALS, align 4
  %173 = call i32 @nr64(i32 %172)
  store i32 %173, i32* %10, align 4
  %174 = load %struct.niu*, %struct.niu** %3, align 8
  %175 = getelementptr inbounds %struct.niu, %struct.niu* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  switch i32 %176, label %207 [
    i32 0, label %177
    i32 1, label %192
  ]

177:                                              ; preds = %171
  %178 = load i32, i32* @ESR_INT_SIGNALS_P0_BITS, align 4
  store i32 %178, i32* %11, align 4
  %179 = load i32, i32* @ESR_INT_SRDY0_P0, align 4
  %180 = load i32, i32* @ESR_INT_DET0_P0, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @ESR_INT_XSRDY_P0, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @ESR_INT_XDP_P0_CH3, align 4
  %185 = or i32 %183, %184
  %186 = load i32, i32* @ESR_INT_XDP_P0_CH2, align 4
  %187 = or i32 %185, %186
  %188 = load i32, i32* @ESR_INT_XDP_P0_CH1, align 4
  %189 = or i32 %187, %188
  %190 = load i32, i32* @ESR_INT_XDP_P0_CH0, align 4
  %191 = or i32 %189, %190
  store i32 %191, i32* %12, align 4
  br label %210

192:                                              ; preds = %171
  %193 = load i32, i32* @ESR_INT_SIGNALS_P1_BITS, align 4
  store i32 %193, i32* %11, align 4
  %194 = load i32, i32* @ESR_INT_SRDY0_P1, align 4
  %195 = load i32, i32* @ESR_INT_DET0_P1, align 4
  %196 = or i32 %194, %195
  %197 = load i32, i32* @ESR_INT_XSRDY_P1, align 4
  %198 = or i32 %196, %197
  %199 = load i32, i32* @ESR_INT_XDP_P1_CH3, align 4
  %200 = or i32 %198, %199
  %201 = load i32, i32* @ESR_INT_XDP_P1_CH2, align 4
  %202 = or i32 %200, %201
  %203 = load i32, i32* @ESR_INT_XDP_P1_CH1, align 4
  %204 = or i32 %202, %203
  %205 = load i32, i32* @ESR_INT_XDP_P1_CH0, align 4
  %206 = or i32 %204, %205
  store i32 %206, i32* %12, align 4
  br label %210

207:                                              ; preds = %171
  %208 = load i32, i32* @EINVAL, align 4
  %209 = sub nsw i32 0, %208
  store i32 %209, i32* %2, align 4
  br label %258

210:                                              ; preds = %192, %177
  %211 = load i32, i32* %10, align 4
  %212 = load i32, i32* %11, align 4
  %213 = and i32 %211, %212
  %214 = load i32, i32* %12, align 4
  %215 = icmp ne i32 %213, %214
  br i1 %215, label %216, label %244

216:                                              ; preds = %210
  %217 = load %struct.niu*, %struct.niu** %3, align 8
  %218 = getelementptr inbounds %struct.niu, %struct.niu* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 4
  %220 = load i32, i32* @NIU_FLAGS_HOTPLUG_PHY, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %216
  %224 = load i32, i32* @NIU_FLAGS_HOTPLUG_PHY_PRESENT, align 4
  %225 = xor i32 %224, -1
  %226 = load %struct.niu*, %struct.niu** %3, align 8
  %227 = getelementptr inbounds %struct.niu, %struct.niu* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = and i32 %228, %225
  store i32 %229, i32* %227, align 4
  store i32 0, i32* %2, align 4
  br label %258

230:                                              ; preds = %216
  %231 = load %struct.niu*, %struct.niu** %3, align 8
  %232 = getelementptr inbounds %struct.niu, %struct.niu* %231, i32 0, i32 2
  %233 = load i32, i32* %232, align 8
  %234 = load %struct.niu*, %struct.niu** %3, align 8
  %235 = getelementptr inbounds %struct.niu, %struct.niu* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = load i32, i32* %10, align 4
  %238 = load i32, i32* %11, align 4
  %239 = and i32 %237, %238
  %240 = load i32, i32* %12, align 4
  %241 = call i32 @netdev_err(i32 %233, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %236, i32 %239, i32 %240)
  %242 = load i32, i32* @ENODEV, align 4
  %243 = sub nsw i32 0, %242
  store i32 %243, i32* %2, align 4
  br label %258

244:                                              ; preds = %210
  %245 = load %struct.niu*, %struct.niu** %3, align 8
  %246 = getelementptr inbounds %struct.niu, %struct.niu* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* @NIU_FLAGS_HOTPLUG_PHY, align 4
  %249 = and i32 %247, %248
  %250 = icmp ne i32 %249, 0
  br i1 %250, label %251, label %257

251:                                              ; preds = %244
  %252 = load i32, i32* @NIU_FLAGS_HOTPLUG_PHY_PRESENT, align 4
  %253 = load %struct.niu*, %struct.niu** %3, align 8
  %254 = getelementptr inbounds %struct.niu, %struct.niu* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 4
  %256 = or i32 %255, %252
  store i32 %256, i32* %254, align 4
  br label %257

257:                                              ; preds = %251, %244
  store i32 0, i32* %2, align 4
  br label %258

258:                                              ; preds = %257, %230, %223, %207, %169, %158, %149, %109, %101, %27
  %259 = load i32, i32* %2, align 4
  ret i32 %259
}

declare dso_local i32 @nw64(i64, i32) #1

declare dso_local i32 @esr_read_rxtx_ctrl(%struct.niu*, i64, i32*) #1

declare dso_local i32 @esr_read_glue0(%struct.niu*, i64, i32*) #1

declare dso_local i32 @esr_write_rxtx_ctrl(%struct.niu*, i64, i32) #1

declare dso_local i32 @esr_write_glue0(%struct.niu*, i64, i32) #1

declare dso_local i32 @esr_reset(%struct.niu*) #1

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
