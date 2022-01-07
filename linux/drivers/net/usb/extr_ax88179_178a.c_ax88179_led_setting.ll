; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_led_setting.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_ax88179_178a.c_ax88179_led_setting.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i32 }

@HZ = common dso_local global i32 0, align 4
@AX_ACCESS_MAC = common dso_local global i32 0, align 4
@GENERAL_STATUS = common dso_local global i32 0, align 4
@AX_SECLD = common dso_local global i32 0, align 4
@AX_GPIO_CTRL_GPIO3EN = common dso_local global i32 0, align 4
@AX_GPIO_CTRL_GPIO2EN = common dso_local global i32 0, align 4
@AX_GPIO_CTRL_GPIO1EN = common dso_local global i32 0, align 4
@AX_GPIO_CTRL = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AX_SROM_ADDR = common dso_local global i32 0, align 4
@EEP_RD = common dso_local global i32 0, align 4
@AX_SROM_CMD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@EEP_BUSY = common dso_local global i32 0, align 4
@AX_SROM_DATA_HIGH = common dso_local global i32 0, align 4
@AX_SROM_DATA_LOW = common dso_local global i32 0, align 4
@LED_VALID = common dso_local global i32 0, align 4
@GMII_PHY_PGSEL_EXT = common dso_local global i32 0, align 4
@AX_ACCESS_PHY = common dso_local global i32 0, align 4
@AX88179_PHY_ID = common dso_local global i32 0, align 4
@GMII_PHY_PAGE_SELECT = common dso_local global i32 0, align 4
@GMII_PHYPAGE = common dso_local global i32 0, align 4
@GMII_LED_ACT = common dso_local global i32 0, align 4
@GMII_LED_LINK = common dso_local global i32 0, align 4
@GMII_LED_ACTIVE_MASK = common dso_local global i32 0, align 4
@GMII_LED_LINK_MASK = common dso_local global i32 0, align 4
@LED0_ACTIVE = common dso_local global i32 0, align 4
@GMII_LED0_ACTIVE = common dso_local global i32 0, align 4
@LED1_ACTIVE = common dso_local global i32 0, align 4
@GMII_LED1_ACTIVE = common dso_local global i32 0, align 4
@LED2_ACTIVE = common dso_local global i32 0, align 4
@GMII_LED2_ACTIVE = common dso_local global i32 0, align 4
@LED0_LINK_10 = common dso_local global i32 0, align 4
@GMII_LED0_LINK_10 = common dso_local global i32 0, align 4
@LED1_LINK_10 = common dso_local global i32 0, align 4
@GMII_LED1_LINK_10 = common dso_local global i32 0, align 4
@LED2_LINK_10 = common dso_local global i32 0, align 4
@GMII_LED2_LINK_10 = common dso_local global i32 0, align 4
@LED0_LINK_100 = common dso_local global i32 0, align 4
@GMII_LED0_LINK_100 = common dso_local global i32 0, align 4
@LED1_LINK_100 = common dso_local global i32 0, align 4
@GMII_LED1_LINK_100 = common dso_local global i32 0, align 4
@LED2_LINK_100 = common dso_local global i32 0, align 4
@GMII_LED2_LINK_100 = common dso_local global i32 0, align 4
@LED0_LINK_1000 = common dso_local global i32 0, align 4
@GMII_LED0_LINK_1000 = common dso_local global i32 0, align 4
@LED1_LINK_1000 = common dso_local global i32 0, align 4
@GMII_LED1_LINK_1000 = common dso_local global i32 0, align 4
@LED2_LINK_1000 = common dso_local global i32 0, align 4
@GMII_LED2_LINK_1000 = common dso_local global i32 0, align 4
@GMII_PHY_PGSEL_PAGE0 = common dso_local global i32 0, align 4
@LED0_FD = common dso_local global i32 0, align 4
@LED0_USB3_MASK = common dso_local global i32 0, align 4
@LED1_FD = common dso_local global i32 0, align 4
@LED1_USB3_MASK = common dso_local global i32 0, align 4
@LED2_FD = common dso_local global i32 0, align 4
@LED2_USB3_MASK = common dso_local global i32 0, align 4
@AX_LEDCTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usbnet*)* @ax88179_led_setting to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ax88179_led_setting(%struct.usbnet* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usbnet*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %12 = load i32, i32* @HZ, align 4
  %13 = sdiv i32 %12, 10
  store i32 %13, i32* %10, align 4
  %14 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %15 = load i32, i32* @AX_ACCESS_MAC, align 4
  %16 = load i32, i32* @GENERAL_STATUS, align 4
  %17 = call i32 @ax88179_read_cmd(%struct.usbnet* %14, i32 %15, i32 %16, i32 1, i32 1, i32* %5)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @AX_SECLD, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %37, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @AX_GPIO_CTRL_GPIO3EN, align 4
  %24 = load i32, i32* @AX_GPIO_CTRL_GPIO2EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @AX_GPIO_CTRL_GPIO1EN, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %29 = load i32, i32* @AX_ACCESS_MAC, align 4
  %30 = load i32, i32* @AX_GPIO_CTRL, align 4
  %31 = call i64 @ax88179_write_cmd(%struct.usbnet* %28, i32 %29, i32 %30, i32 1, i32 1, i32* %5)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %337

36:                                               ; preds = %22
  br label %37

37:                                               ; preds = %36, %1
  %38 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %39 = call i32 @ax88179_check_eeprom(%struct.usbnet* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %108, label %41

41:                                               ; preds = %37
  store i32 66, i32* %5, align 4
  %42 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %43 = load i32, i32* @AX_ACCESS_MAC, align 4
  %44 = load i32, i32* @AX_SROM_ADDR, align 4
  %45 = call i64 @ax88179_write_cmd(%struct.usbnet* %42, i32 %43, i32 %44, i32 1, i32 1, i32* %5)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %337

50:                                               ; preds = %41
  %51 = load i32, i32* @EEP_RD, align 4
  store i32 %51, i32* %5, align 4
  %52 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %53 = load i32, i32* @AX_ACCESS_MAC, align 4
  %54 = load i32, i32* @AX_SROM_CMD, align 4
  %55 = call i64 @ax88179_write_cmd(%struct.usbnet* %52, i32 %53, i32 %54, i32 1, i32 1, i32* %5)
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %2, align 4
  br label %337

60:                                               ; preds = %50
  %61 = load i32, i32* @jiffies, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %11, align 8
  br label %65

65:                                               ; preds = %78, %60
  %66 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %67 = load i32, i32* @AX_ACCESS_MAC, align 4
  %68 = load i32, i32* @AX_SROM_CMD, align 4
  %69 = call i32 @ax88179_read_cmd(%struct.usbnet* %66, i32 %67, i32 %68, i32 1, i32 1, i32* %5)
  %70 = load i32, i32* @jiffies, align 4
  %71 = load i64, i64* %11, align 8
  %72 = call i64 @time_after(i32 %70, i64 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %65
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %2, align 4
  br label %337

77:                                               ; preds = %65
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @EEP_BUSY, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %65, label %83

83:                                               ; preds = %78
  %84 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %85 = load i32, i32* @AX_ACCESS_MAC, align 4
  %86 = load i32, i32* @AX_SROM_DATA_HIGH, align 4
  %87 = call i32 @ax88179_read_cmd(%struct.usbnet* %84, i32 %85, i32 %86, i32 1, i32 1, i32* %5)
  %88 = load i32, i32* %5, align 4
  %89 = shl i32 %88, 8
  store i32 %89, i32* %9, align 4
  %90 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %91 = load i32, i32* @AX_ACCESS_MAC, align 4
  %92 = load i32, i32* @AX_SROM_DATA_LOW, align 4
  %93 = call i32 @ax88179_read_cmd(%struct.usbnet* %90, i32 %91, i32 %92, i32 1, i32 1, i32* %5)
  %94 = load i32, i32* %5, align 4
  %95 = load i32, i32* %9, align 4
  %96 = or i32 %95, %94
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 65535
  br i1 %98, label %104, label %99

99:                                               ; preds = %83
  %100 = load i32, i32* %9, align 4
  %101 = load i32, i32* @LED_VALID, align 4
  %102 = and i32 %100, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %99, %83
  %105 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %106 = call i32 @ax88179_convert_old_led(%struct.usbnet* %105, i32* %9)
  br label %107

107:                                              ; preds = %104, %99
  br label %128

108:                                              ; preds = %37
  %109 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %110 = call i32 @ax88179_check_efuse(%struct.usbnet* %109, i32* %9)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %124, label %112

112:                                              ; preds = %108
  %113 = load i32, i32* %9, align 4
  %114 = icmp eq i32 %113, 65535
  br i1 %114, label %120, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* %9, align 4
  %117 = load i32, i32* @LED_VALID, align 4
  %118 = and i32 %116, %117
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115, %112
  %121 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %122 = call i32 @ax88179_convert_old_led(%struct.usbnet* %121, i32* %9)
  br label %123

123:                                              ; preds = %120, %115
  br label %127

124:                                              ; preds = %108
  %125 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %126 = call i32 @ax88179_convert_old_led(%struct.usbnet* %125, i32* %9)
  br label %127

127:                                              ; preds = %124, %123
  br label %128

128:                                              ; preds = %127, %107
  %129 = load i32, i32* @GMII_PHY_PGSEL_EXT, align 4
  store i32 %129, i32* %6, align 4
  %130 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %131 = load i32, i32* @AX_ACCESS_PHY, align 4
  %132 = load i32, i32* @AX88179_PHY_ID, align 4
  %133 = load i32, i32* @GMII_PHY_PAGE_SELECT, align 4
  %134 = call i64 @ax88179_write_cmd(%struct.usbnet* %130, i32 %131, i32 %132, i32 %133, i32 2, i32* %6)
  store i32 44, i32* %6, align 4
  %135 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %136 = load i32, i32* @AX_ACCESS_PHY, align 4
  %137 = load i32, i32* @AX88179_PHY_ID, align 4
  %138 = load i32, i32* @GMII_PHYPAGE, align 4
  %139 = call i64 @ax88179_write_cmd(%struct.usbnet* %135, i32 %136, i32 %137, i32 %138, i32 2, i32* %6)
  %140 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %141 = load i32, i32* @AX_ACCESS_PHY, align 4
  %142 = load i32, i32* @AX88179_PHY_ID, align 4
  %143 = load i32, i32* @GMII_LED_ACT, align 4
  %144 = call i32 @ax88179_read_cmd(%struct.usbnet* %140, i32 %141, i32 %142, i32 %143, i32 2, i32* %7)
  %145 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %146 = load i32, i32* @AX_ACCESS_PHY, align 4
  %147 = load i32, i32* @AX88179_PHY_ID, align 4
  %148 = load i32, i32* @GMII_LED_LINK, align 4
  %149 = call i32 @ax88179_read_cmd(%struct.usbnet* %145, i32 %146, i32 %147, i32 %148, i32 2, i32* %8)
  %150 = load i32, i32* @GMII_LED_ACTIVE_MASK, align 4
  %151 = load i32, i32* %7, align 4
  %152 = and i32 %151, %150
  store i32 %152, i32* %7, align 4
  %153 = load i32, i32* @GMII_LED_LINK_MASK, align 4
  %154 = load i32, i32* %8, align 4
  %155 = and i32 %154, %153
  store i32 %155, i32* %8, align 4
  %156 = load i32, i32* %9, align 4
  %157 = load i32, i32* @LED0_ACTIVE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %164

160:                                              ; preds = %128
  %161 = load i32, i32* @GMII_LED0_ACTIVE, align 4
  %162 = load i32, i32* %7, align 4
  %163 = or i32 %162, %161
  store i32 %163, i32* %7, align 4
  br label %164

164:                                              ; preds = %160, %128
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @LED1_ACTIVE, align 4
  %167 = and i32 %165, %166
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %169, label %173

169:                                              ; preds = %164
  %170 = load i32, i32* @GMII_LED1_ACTIVE, align 4
  %171 = load i32, i32* %7, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %7, align 4
  br label %173

173:                                              ; preds = %169, %164
  %174 = load i32, i32* %9, align 4
  %175 = load i32, i32* @LED2_ACTIVE, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %182

178:                                              ; preds = %173
  %179 = load i32, i32* @GMII_LED2_ACTIVE, align 4
  %180 = load i32, i32* %7, align 4
  %181 = or i32 %180, %179
  store i32 %181, i32* %7, align 4
  br label %182

182:                                              ; preds = %178, %173
  %183 = load i32, i32* %9, align 4
  %184 = load i32, i32* @LED0_LINK_10, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %191

187:                                              ; preds = %182
  %188 = load i32, i32* @GMII_LED0_LINK_10, align 4
  %189 = load i32, i32* %8, align 4
  %190 = or i32 %189, %188
  store i32 %190, i32* %8, align 4
  br label %191

191:                                              ; preds = %187, %182
  %192 = load i32, i32* %9, align 4
  %193 = load i32, i32* @LED1_LINK_10, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %200

196:                                              ; preds = %191
  %197 = load i32, i32* @GMII_LED1_LINK_10, align 4
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  br label %200

200:                                              ; preds = %196, %191
  %201 = load i32, i32* %9, align 4
  %202 = load i32, i32* @LED2_LINK_10, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %209

205:                                              ; preds = %200
  %206 = load i32, i32* @GMII_LED2_LINK_10, align 4
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %205, %200
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @LED0_LINK_100, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %209
  %215 = load i32, i32* @GMII_LED0_LINK_100, align 4
  %216 = load i32, i32* %8, align 4
  %217 = or i32 %216, %215
  store i32 %217, i32* %8, align 4
  br label %218

218:                                              ; preds = %214, %209
  %219 = load i32, i32* %9, align 4
  %220 = load i32, i32* @LED1_LINK_100, align 4
  %221 = and i32 %219, %220
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %223, label %227

223:                                              ; preds = %218
  %224 = load i32, i32* @GMII_LED1_LINK_100, align 4
  %225 = load i32, i32* %8, align 4
  %226 = or i32 %225, %224
  store i32 %226, i32* %8, align 4
  br label %227

227:                                              ; preds = %223, %218
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @LED2_LINK_100, align 4
  %230 = and i32 %228, %229
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %227
  %233 = load i32, i32* @GMII_LED2_LINK_100, align 4
  %234 = load i32, i32* %8, align 4
  %235 = or i32 %234, %233
  store i32 %235, i32* %8, align 4
  br label %236

236:                                              ; preds = %232, %227
  %237 = load i32, i32* %9, align 4
  %238 = load i32, i32* @LED0_LINK_1000, align 4
  %239 = and i32 %237, %238
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %236
  %242 = load i32, i32* @GMII_LED0_LINK_1000, align 4
  %243 = load i32, i32* %8, align 4
  %244 = or i32 %243, %242
  store i32 %244, i32* %8, align 4
  br label %245

245:                                              ; preds = %241, %236
  %246 = load i32, i32* %9, align 4
  %247 = load i32, i32* @LED1_LINK_1000, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %254

250:                                              ; preds = %245
  %251 = load i32, i32* @GMII_LED1_LINK_1000, align 4
  %252 = load i32, i32* %8, align 4
  %253 = or i32 %252, %251
  store i32 %253, i32* %8, align 4
  br label %254

254:                                              ; preds = %250, %245
  %255 = load i32, i32* %9, align 4
  %256 = load i32, i32* @LED2_LINK_1000, align 4
  %257 = and i32 %255, %256
  %258 = icmp ne i32 %257, 0
  br i1 %258, label %259, label %263

259:                                              ; preds = %254
  %260 = load i32, i32* @GMII_LED2_LINK_1000, align 4
  %261 = load i32, i32* %8, align 4
  %262 = or i32 %261, %260
  store i32 %262, i32* %8, align 4
  br label %263

263:                                              ; preds = %259, %254
  %264 = load i32, i32* %7, align 4
  store i32 %264, i32* %6, align 4
  %265 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %266 = load i32, i32* @AX_ACCESS_PHY, align 4
  %267 = load i32, i32* @AX88179_PHY_ID, align 4
  %268 = load i32, i32* @GMII_LED_ACT, align 4
  %269 = call i64 @ax88179_write_cmd(%struct.usbnet* %265, i32 %266, i32 %267, i32 %268, i32 2, i32* %6)
  %270 = load i32, i32* %8, align 4
  store i32 %270, i32* %6, align 4
  %271 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %272 = load i32, i32* @AX_ACCESS_PHY, align 4
  %273 = load i32, i32* @AX88179_PHY_ID, align 4
  %274 = load i32, i32* @GMII_LED_LINK, align 4
  %275 = call i64 @ax88179_write_cmd(%struct.usbnet* %271, i32 %272, i32 %273, i32 %274, i32 2, i32* %6)
  %276 = load i32, i32* @GMII_PHY_PGSEL_PAGE0, align 4
  store i32 %276, i32* %6, align 4
  %277 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %278 = load i32, i32* @AX_ACCESS_PHY, align 4
  %279 = load i32, i32* @AX88179_PHY_ID, align 4
  %280 = load i32, i32* @GMII_PHY_PAGE_SELECT, align 4
  %281 = call i64 @ax88179_write_cmd(%struct.usbnet* %277, i32 %278, i32 %279, i32 %280, i32 2, i32* %6)
  store i32 0, i32* %4, align 4
  %282 = load i32, i32* %9, align 4
  %283 = load i32, i32* @LED0_FD, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %289

286:                                              ; preds = %263
  %287 = load i32, i32* %4, align 4
  %288 = or i32 %287, 1
  store i32 %288, i32* %4, align 4
  br label %298

289:                                              ; preds = %263
  %290 = load i32, i32* %9, align 4
  %291 = load i32, i32* @LED0_USB3_MASK, align 4
  %292 = and i32 %290, %291
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %294, label %297

294:                                              ; preds = %289
  %295 = load i32, i32* %4, align 4
  %296 = or i32 %295, 2
  store i32 %296, i32* %4, align 4
  br label %297

297:                                              ; preds = %294, %289
  br label %298

298:                                              ; preds = %297, %286
  %299 = load i32, i32* %9, align 4
  %300 = load i32, i32* @LED1_FD, align 4
  %301 = and i32 %299, %300
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %303, label %306

303:                                              ; preds = %298
  %304 = load i32, i32* %4, align 4
  %305 = or i32 %304, 4
  store i32 %305, i32* %4, align 4
  br label %315

306:                                              ; preds = %298
  %307 = load i32, i32* %9, align 4
  %308 = load i32, i32* @LED1_USB3_MASK, align 4
  %309 = and i32 %307, %308
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %311, label %314

311:                                              ; preds = %306
  %312 = load i32, i32* %4, align 4
  %313 = or i32 %312, 8
  store i32 %313, i32* %4, align 4
  br label %314

314:                                              ; preds = %311, %306
  br label %315

315:                                              ; preds = %314, %303
  %316 = load i32, i32* %9, align 4
  %317 = load i32, i32* @LED2_FD, align 4
  %318 = and i32 %316, %317
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %323

320:                                              ; preds = %315
  %321 = load i32, i32* %4, align 4
  %322 = or i32 %321, 16
  store i32 %322, i32* %4, align 4
  br label %332

323:                                              ; preds = %315
  %324 = load i32, i32* %9, align 4
  %325 = load i32, i32* @LED2_USB3_MASK, align 4
  %326 = and i32 %324, %325
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %328, label %331

328:                                              ; preds = %323
  %329 = load i32, i32* %4, align 4
  %330 = or i32 %329, 32
  store i32 %330, i32* %4, align 4
  br label %331

331:                                              ; preds = %328, %323
  br label %332

332:                                              ; preds = %331, %320
  %333 = load %struct.usbnet*, %struct.usbnet** %3, align 8
  %334 = load i32, i32* @AX_ACCESS_MAC, align 4
  %335 = load i32, i32* @AX_LEDCTRL, align 4
  %336 = call i64 @ax88179_write_cmd(%struct.usbnet* %333, i32 %334, i32 %335, i32 1, i32 1, i32* %4)
  store i32 0, i32* %2, align 4
  br label %337

337:                                              ; preds = %332, %74, %57, %47, %33
  %338 = load i32, i32* %2, align 4
  ret i32 %338
}

declare dso_local i32 @ax88179_read_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i64 @ax88179_write_cmd(%struct.usbnet*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @ax88179_check_eeprom(%struct.usbnet*) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @ax88179_convert_old_led(%struct.usbnet*, i32*) #1

declare dso_local i32 @ax88179_check_efuse(%struct.usbnet*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
