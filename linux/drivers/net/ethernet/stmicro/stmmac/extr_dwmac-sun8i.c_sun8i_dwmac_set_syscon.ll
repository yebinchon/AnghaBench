; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_set_syscon.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac-sun8i.c_sun8i_dwmac_set_syscon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { %struct.TYPE_8__*, %struct.TYPE_9__* }
%struct.TYPE_8__ = type { i32, i32, %struct.sunxi_priv_data* }
%struct.sunxi_priv_data = type { i32, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i64, i64 }
%struct.TYPE_9__ = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"Fail to read from regmap field.\0A\00", align 1
@.str.1 = private unnamed_addr constant [56 x i8] c"Current syscon value is not the default %x (expect %x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"allwinner,leds-active-low\00", align 1
@H3_EPHY_LED_POL = common dso_local global i32 0, align 4
@H3_EPHY_CLK_SEL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Could not parse MDIO addr\0A\00", align 1
@H3_EPHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@H3_EPHY_SELECT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [22 x i8] c"allwinner,tx-delay-ps\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"tx-delay must be a multiple of 100\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [20 x i8] c"set tx-delay to %x\0A\00", align 1
@SYSCON_ETXDC_SHIFT = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Invalid TX clock delay: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"allwinner,rx-delay-ps\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"rx-delay must be a multiple of 100\0A\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"set rx-delay to %x\0A\00", align 1
@SYSCON_ERXDC_SHIFT = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [28 x i8] c"Invalid RX clock delay: %d\0A\00", align 1
@SYSCON_ETCS_MASK = common dso_local global i32 0, align 4
@SYSCON_EPIT = common dso_local global i32 0, align 4
@SYSCON_RMII_EN = common dso_local global i32 0, align 4
@SYSCON_ETCS_INT_GMII = common dso_local global i32 0, align 4
@SYSCON_ETCS_EXT_GMII = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [31 x i8] c"Unsupported interface mode: %s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @sun8i_dwmac_set_syscon to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sun8i_dwmac_set_syscon(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca %struct.sunxi_priv_data*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %9 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %10 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 2
  %13 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %12, align 8
  store %struct.sunxi_priv_data* %13, %struct.sunxi_priv_data** %4, align 8
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 1
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load %struct.device_node*, %struct.device_node** %17, align 8
  store %struct.device_node* %18, %struct.device_node** %5, align 8
  %19 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %20 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @regmap_field_read(i32 %21, i32* %8)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %1
  %26 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %27 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %27, align 8
  %29 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %28, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %2, align 4
  br label %264

31:                                               ; preds = %1
  %32 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %33 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %47

40:                                               ; preds = %31
  %41 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %42 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %41, i32 0, i32 1
  %43 = load %struct.TYPE_9__*, %struct.TYPE_9__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_warn(%struct.TYPE_9__* %43, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %40, %31
  %48 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %49 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %93

54:                                               ; preds = %47
  %55 = load %struct.device_node*, %struct.device_node** %5, align 8
  %56 = call i64 @of_property_read_bool(%struct.device_node* %55, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = load i32, i32* @H3_EPHY_LED_POL, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %7, align 4
  br label %67

62:                                               ; preds = %54
  %63 = load i32, i32* @H3_EPHY_LED_POL, align 4
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %62, %58
  %68 = load i32, i32* @H3_EPHY_CLK_SEL, align 4
  %69 = load i32, i32* %7, align 4
  %70 = or i32 %69, %68
  store i32 %70, i32* %7, align 4
  %71 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %72 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %71, i32 0, i32 1
  %73 = load %struct.TYPE_9__*, %struct.TYPE_9__** %72, align 8
  %74 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %75 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %74, i32 0, i32 0
  %76 = load %struct.TYPE_8__*, %struct.TYPE_8__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @of_mdio_parse_addr(%struct.TYPE_9__* %73, i32 %78)
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %88

82:                                               ; preds = %67
  %83 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %84 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %83, i32 0, i32 1
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %85, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %2, align 4
  br label %264

88:                                               ; preds = %67
  %89 = load i32, i32* @H3_EPHY_ADDR_SHIFT, align 4
  %90 = shl i32 1, %89
  %91 = load i32, i32* %7, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %7, align 4
  br label %98

93:                                               ; preds = %47
  %94 = load i32, i32* @H3_EPHY_SELECT, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %7, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %7, align 4
  br label %98

98:                                               ; preds = %93, %88
  %99 = load %struct.device_node*, %struct.device_node** %5, align 8
  %100 = call i32 @of_property_read_u32(%struct.device_node* %99, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32* %8)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %153, label %102

102:                                              ; preds = %98
  %103 = load i32, i32* %8, align 4
  %104 = srem i32 %103, 100
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %113

106:                                              ; preds = %102
  %107 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %108 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %107, i32 0, i32 1
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %108, align 8
  %110 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %109, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %2, align 4
  br label %264

113:                                              ; preds = %102
  %114 = load i32, i32* %8, align 4
  %115 = sdiv i32 %114, 100
  store i32 %115, i32* %8, align 4
  %116 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %117 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %116, i32 0, i32 1
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %117, align 8
  %119 = load i32, i32* %8, align 4
  %120 = call i32 @dev_dbg(%struct.TYPE_9__* %118, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* %8, align 4
  %122 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %123 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %122, i32 0, i32 1
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp sle i32 %121, %126
  br i1 %127, label %128, label %144

128:                                              ; preds = %113
  %129 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %130 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %129, i32 0, i32 1
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = load i32, i32* @SYSCON_ETXDC_SHIFT, align 4
  %135 = shl i32 %133, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %7, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %8, align 4
  %140 = load i32, i32* @SYSCON_ETXDC_SHIFT, align 4
  %141 = shl i32 %139, %140
  %142 = load i32, i32* %7, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %7, align 4
  br label %152

144:                                              ; preds = %113
  %145 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %146 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %145, i32 0, i32 1
  %147 = load %struct.TYPE_9__*, %struct.TYPE_9__** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %147, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i32 %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %2, align 4
  br label %264

152:                                              ; preds = %128
  br label %153

153:                                              ; preds = %152, %98
  %154 = load %struct.device_node*, %struct.device_node** %5, align 8
  %155 = call i32 @of_property_read_u32(%struct.device_node* %154, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i64 0, i64 0), i32* %8)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %208, label %157

157:                                              ; preds = %153
  %158 = load i32, i32* %8, align 4
  %159 = srem i32 %158, 100
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %168

161:                                              ; preds = %157
  %162 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %163 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %162, i32 0, i32 1
  %164 = load %struct.TYPE_9__*, %struct.TYPE_9__** %163, align 8
  %165 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %164, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  %166 = load i32, i32* @EINVAL, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %2, align 4
  br label %264

168:                                              ; preds = %157
  %169 = load i32, i32* %8, align 4
  %170 = sdiv i32 %169, 100
  store i32 %170, i32* %8, align 4
  %171 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %172 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %171, i32 0, i32 1
  %173 = load %struct.TYPE_9__*, %struct.TYPE_9__** %172, align 8
  %174 = load i32, i32* %8, align 4
  %175 = call i32 @dev_dbg(%struct.TYPE_9__* %173, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0), i32 %174)
  %176 = load i32, i32* %8, align 4
  %177 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %178 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %177, i32 0, i32 1
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 8
  %182 = icmp sle i32 %176, %181
  br i1 %182, label %183, label %199

183:                                              ; preds = %168
  %184 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %185 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %184, i32 0, i32 1
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %185, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @SYSCON_ERXDC_SHIFT, align 4
  %190 = shl i32 %188, %189
  %191 = xor i32 %190, -1
  %192 = load i32, i32* %7, align 4
  %193 = and i32 %192, %191
  store i32 %193, i32* %7, align 4
  %194 = load i32, i32* %8, align 4
  %195 = load i32, i32* @SYSCON_ERXDC_SHIFT, align 4
  %196 = shl i32 %194, %195
  %197 = load i32, i32* %7, align 4
  %198 = or i32 %197, %196
  store i32 %198, i32* %7, align 4
  br label %207

199:                                              ; preds = %168
  %200 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %201 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %200, i32 0, i32 1
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %201, align 8
  %203 = load i32, i32* %8, align 4
  %204 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %202, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0), i32 %203)
  %205 = load i32, i32* @EINVAL, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %2, align 4
  br label %264

207:                                              ; preds = %183
  br label %208

208:                                              ; preds = %207, %153
  %209 = load i32, i32* @SYSCON_ETCS_MASK, align 4
  %210 = load i32, i32* @SYSCON_EPIT, align 4
  %211 = or i32 %209, %210
  %212 = xor i32 %211, -1
  %213 = load i32, i32* %7, align 4
  %214 = and i32 %213, %212
  store i32 %214, i32* %7, align 4
  %215 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %216 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %215, i32 0, i32 1
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 3
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %208
  %222 = load i32, i32* @SYSCON_RMII_EN, align 4
  %223 = xor i32 %222, -1
  %224 = load i32, i32* %7, align 4
  %225 = and i32 %224, %223
  store i32 %225, i32* %7, align 4
  br label %226

226:                                              ; preds = %221, %208
  %227 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %228 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %227, i32 0, i32 0
  %229 = load %struct.TYPE_8__*, %struct.TYPE_8__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  switch i32 %231, label %245 [
    i32 130, label %232
    i32 129, label %233
    i32 128, label %239
  ]

232:                                              ; preds = %226
  br label %258

233:                                              ; preds = %226
  %234 = load i32, i32* @SYSCON_EPIT, align 4
  %235 = load i32, i32* @SYSCON_ETCS_INT_GMII, align 4
  %236 = or i32 %234, %235
  %237 = load i32, i32* %7, align 4
  %238 = or i32 %237, %236
  store i32 %238, i32* %7, align 4
  br label %258

239:                                              ; preds = %226
  %240 = load i32, i32* @SYSCON_RMII_EN, align 4
  %241 = load i32, i32* @SYSCON_ETCS_EXT_GMII, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* %7, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %7, align 4
  br label %258

245:                                              ; preds = %226
  %246 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %247 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %246, i32 0, i32 1
  %248 = load %struct.TYPE_9__*, %struct.TYPE_9__** %247, align 8
  %249 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %250 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %249, i32 0, i32 0
  %251 = load %struct.TYPE_8__*, %struct.TYPE_8__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = call i32 @phy_modes(i32 %253)
  %255 = call i32 (%struct.TYPE_9__*, i8*, ...) @dev_err(%struct.TYPE_9__* %248, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i64 0, i64 0), i32 %254)
  %256 = load i32, i32* @EINVAL, align 4
  %257 = sub nsw i32 0, %256
  store i32 %257, i32* %2, align 4
  br label %264

258:                                              ; preds = %239, %233, %232
  %259 = load %struct.sunxi_priv_data*, %struct.sunxi_priv_data** %4, align 8
  %260 = getelementptr inbounds %struct.sunxi_priv_data, %struct.sunxi_priv_data* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = load i32, i32* %7, align 4
  %263 = call i32 @regmap_field_write(i32 %261, i32 %262)
  store i32 0, i32* %2, align 4
  br label %264

264:                                              ; preds = %258, %245, %199, %161, %144, %106, %82, %25
  %265 = load i32, i32* %2, align 4
  ret i32 %265
}

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local i32 @dev_warn(%struct.TYPE_9__*, i8*, i32, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @of_mdio_parse_addr(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @phy_modes(i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
