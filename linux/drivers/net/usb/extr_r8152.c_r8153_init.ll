; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_r8152.c_r8153_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r8152 = type { i64, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@RTL8152_UNPLUG = common dso_local global i32 0, align 4
@MCU_TYPE_PLA = common dso_local global i32 0, align 4
@PLA_BOOT_CTRL = common dso_local global i32 0, align 4
@AUTOLOAD_DONE = common dso_local global i32 0, align 4
@RTL_VER_03 = common dso_local global i64 0, align 8
@RTL_VER_04 = common dso_local global i64 0, align 8
@RTL_VER_05 = common dso_local global i64 0, align 8
@OCP_ADC_CFG = common dso_local global i32 0, align 4
@CKADSEL_L = common dso_local global i32 0, align 4
@ADC_EN = common dso_local global i32 0, align 4
@EN_EMI_L = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_PDOWN = common dso_local global i32 0, align 4
@PHY_STAT_LAN_ON = common dso_local global i32 0, align 4
@MCU_TYPE_USB = common dso_local global i32 0, align 4
@USB_SSPHYLINK2 = common dso_local global i32 0, align 4
@pwd_dn_scale_mask = common dso_local global i32 0, align 4
@USB_USB2PHY = common dso_local global i32 0, align 4
@USB2PHY_L1 = common dso_local global i32 0, align 4
@USB2PHY_SUSPEND = common dso_local global i32 0, align 4
@PLA_DMY_REG0 = common dso_local global i32 0, align 4
@ECM_ALDPS = common dso_local global i32 0, align 4
@USB_CSR_DUMMY1 = common dso_local global i32 0, align 4
@USB_BURST_SIZE = common dso_local global i32 0, align 4
@DYNAMIC_BURST = common dso_local global i32 0, align 4
@RTL_VER_06 = common dso_local global i64 0, align 8
@USB_CSR_DUMMY2 = common dso_local global i32 0, align 4
@EP4_FULL_FC = common dso_local global i32 0, align 4
@USB_WDT11_CTRL = common dso_local global i32 0, align 4
@TIMER11_EN = common dso_local global i32 0, align 4
@PLA_LED_FEATURE = common dso_local global i32 0, align 4
@LED_MODE_MASK = common dso_local global i32 0, align 4
@FIFO_EMPTY_1FB = common dso_local global i32 0, align 4
@ROK_EXIT_LPM = common dso_local global i32 0, align 4
@LPM_TIMER_500MS = common dso_local global i32 0, align 4
@LPM_TIMER_500US = common dso_local global i32 0, align 4
@USB_LPM_CTRL = common dso_local global i32 0, align 4
@USB_AFE_CTRL2 = common dso_local global i32 0, align 4
@SEN_VAL_MASK = common dso_local global i32 0, align 4
@SEN_VAL_NORMAL = common dso_local global i32 0, align 4
@SEL_RXIDLE = common dso_local global i32 0, align 4
@USB_CONNECT_TIMER = common dso_local global i32 0, align 4
@USB_USB_CTRL = common dso_local global i32 0, align 4
@RX_AGG_DISABLE = common dso_local global i32 0, align 4
@RX_ZERO_EN = common dso_local global i32 0, align 4
@DELL_TB_RX_AGG_BUG = common dso_local global i32 0, align 4
@COALESCE_SUPER = common dso_local global i32 0, align 4
@COALESCE_HIGH = common dso_local global i32 0, align 4
@COALESCE_SLOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r8152*)* @r8153_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r8153_init(%struct.r8152* %0) #0 {
  %2 = alloca %struct.r8152*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.r8152* %0, %struct.r8152** %2, align 8
  %6 = load i32, i32* @RTL8152_UNPLUG, align 4
  %7 = load %struct.r8152*, %struct.r8152** %2, align 8
  %8 = getelementptr inbounds %struct.r8152, %struct.r8152* %7, i32 0, i32 3
  %9 = call i64 @test_bit(i32 %6, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %341

12:                                               ; preds = %1
  %13 = load %struct.r8152*, %struct.r8152** %2, align 8
  %14 = call i32 @r8153_u1u2en(%struct.r8152* %13, i32 0)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %29, %12
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 500
  br i1 %17, label %18, label %32

18:                                               ; preds = %15
  %19 = load %struct.r8152*, %struct.r8152** %2, align 8
  %20 = load i32, i32* @MCU_TYPE_PLA, align 4
  %21 = load i32, i32* @PLA_BOOT_CTRL, align 4
  %22 = call i32 @ocp_read_word(%struct.r8152* %19, i32 %20, i32 %21)
  %23 = load i32, i32* @AUTOLOAD_DONE, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  br label %32

27:                                               ; preds = %18
  %28 = call i32 @msleep(i32 20)
  br label %29

29:                                               ; preds = %27
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %5, align 4
  br label %15

32:                                               ; preds = %26, %15
  %33 = load %struct.r8152*, %struct.r8152** %2, align 8
  %34 = call i32 @r8153_phy_status(%struct.r8152* %33, i32 0)
  store i32 %34, i32* %4, align 4
  %35 = load %struct.r8152*, %struct.r8152** %2, align 8
  %36 = getelementptr inbounds %struct.r8152, %struct.r8152* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @RTL_VER_03, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %52, label %40

40:                                               ; preds = %32
  %41 = load %struct.r8152*, %struct.r8152** %2, align 8
  %42 = getelementptr inbounds %struct.r8152, %struct.r8152* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @RTL_VER_04, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load %struct.r8152*, %struct.r8152** %2, align 8
  %48 = getelementptr inbounds %struct.r8152, %struct.r8152* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @RTL_VER_05, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %61

52:                                               ; preds = %46, %40, %32
  %53 = load %struct.r8152*, %struct.r8152** %2, align 8
  %54 = load i32, i32* @OCP_ADC_CFG, align 4
  %55 = load i32, i32* @CKADSEL_L, align 4
  %56 = load i32, i32* @ADC_EN, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @EN_EMI_L, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @ocp_reg_write(%struct.r8152* %53, i32 %54, i32 %59)
  br label %61

61:                                               ; preds = %52, %46
  %62 = load %struct.r8152*, %struct.r8152** %2, align 8
  %63 = load i32, i32* @MII_BMCR, align 4
  %64 = call i32 @r8152_mdio_read(%struct.r8152* %62, i32 %63)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @BMCR_PDOWN, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %61
  %70 = load i32, i32* @BMCR_PDOWN, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.r8152*, %struct.r8152** %2, align 8
  %75 = load i32, i32* @MII_BMCR, align 4
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @r8152_mdio_write(%struct.r8152* %74, i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %69, %61
  %79 = load %struct.r8152*, %struct.r8152** %2, align 8
  %80 = load i32, i32* @PHY_STAT_LAN_ON, align 4
  %81 = call i32 @r8153_phy_status(%struct.r8152* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.r8152*, %struct.r8152** %2, align 8
  %83 = call i32 @r8153_u2p3en(%struct.r8152* %82, i32 0)
  %84 = load %struct.r8152*, %struct.r8152** %2, align 8
  %85 = getelementptr inbounds %struct.r8152, %struct.r8152* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @RTL_VER_04, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %120

89:                                               ; preds = %78
  %90 = load %struct.r8152*, %struct.r8152** %2, align 8
  %91 = load i32, i32* @MCU_TYPE_USB, align 4
  %92 = load i32, i32* @USB_SSPHYLINK2, align 4
  %93 = call i32 @ocp_read_word(%struct.r8152* %90, i32 %91, i32 %92)
  store i32 %93, i32* %3, align 4
  %94 = load i32, i32* @pwd_dn_scale_mask, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %3, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %3, align 4
  %98 = call i32 @pwd_dn_scale(i32 96)
  %99 = load i32, i32* %3, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %3, align 4
  %101 = load %struct.r8152*, %struct.r8152** %2, align 8
  %102 = load i32, i32* @MCU_TYPE_USB, align 4
  %103 = load i32, i32* @USB_SSPHYLINK2, align 4
  %104 = load i32, i32* %3, align 4
  %105 = call i32 @ocp_write_word(%struct.r8152* %101, i32 %102, i32 %103, i32 %104)
  %106 = load %struct.r8152*, %struct.r8152** %2, align 8
  %107 = load i32, i32* @MCU_TYPE_USB, align 4
  %108 = load i32, i32* @USB_USB2PHY, align 4
  %109 = call i32 @ocp_read_byte(%struct.r8152* %106, i32 %107, i32 %108)
  store i32 %109, i32* %3, align 4
  %110 = load i32, i32* @USB2PHY_L1, align 4
  %111 = load i32, i32* @USB2PHY_SUSPEND, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  %115 = load %struct.r8152*, %struct.r8152** %2, align 8
  %116 = load i32, i32* @MCU_TYPE_USB, align 4
  %117 = load i32, i32* @USB_USB2PHY, align 4
  %118 = load i32, i32* %3, align 4
  %119 = call i32 @ocp_write_byte(%struct.r8152* %115, i32 %116, i32 %117, i32 %118)
  br label %197

120:                                              ; preds = %78
  %121 = load %struct.r8152*, %struct.r8152** %2, align 8
  %122 = getelementptr inbounds %struct.r8152, %struct.r8152* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @RTL_VER_05, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %164

126:                                              ; preds = %120
  %127 = load %struct.r8152*, %struct.r8152** %2, align 8
  %128 = load i32, i32* @MCU_TYPE_PLA, align 4
  %129 = load i32, i32* @PLA_DMY_REG0, align 4
  %130 = call i32 @ocp_read_byte(%struct.r8152* %127, i32 %128, i32 %129)
  store i32 %130, i32* %3, align 4
  %131 = load i32, i32* @ECM_ALDPS, align 4
  %132 = xor i32 %131, -1
  %133 = load i32, i32* %3, align 4
  %134 = and i32 %133, %132
  store i32 %134, i32* %3, align 4
  %135 = load %struct.r8152*, %struct.r8152** %2, align 8
  %136 = load i32, i32* @MCU_TYPE_PLA, align 4
  %137 = load i32, i32* @PLA_DMY_REG0, align 4
  %138 = load i32, i32* %3, align 4
  %139 = call i32 @ocp_write_byte(%struct.r8152* %135, i32 %136, i32 %137, i32 %138)
  %140 = load %struct.r8152*, %struct.r8152** %2, align 8
  %141 = load i32, i32* @MCU_TYPE_USB, align 4
  %142 = load i32, i32* @USB_CSR_DUMMY1, align 4
  %143 = call i32 @ocp_read_byte(%struct.r8152* %140, i32 %141, i32 %142)
  store i32 %143, i32* %3, align 4
  %144 = load %struct.r8152*, %struct.r8152** %2, align 8
  %145 = load i32, i32* @MCU_TYPE_USB, align 4
  %146 = load i32, i32* @USB_BURST_SIZE, align 4
  %147 = call i32 @ocp_read_word(%struct.r8152* %144, i32 %145, i32 %146)
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %126
  %150 = load i32, i32* @DYNAMIC_BURST, align 4
  %151 = xor i32 %150, -1
  %152 = load i32, i32* %3, align 4
  %153 = and i32 %152, %151
  store i32 %153, i32* %3, align 4
  br label %158

154:                                              ; preds = %126
  %155 = load i32, i32* @DYNAMIC_BURST, align 4
  %156 = load i32, i32* %3, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %154, %149
  %159 = load %struct.r8152*, %struct.r8152** %2, align 8
  %160 = load i32, i32* @MCU_TYPE_USB, align 4
  %161 = load i32, i32* @USB_CSR_DUMMY1, align 4
  %162 = load i32, i32* %3, align 4
  %163 = call i32 @ocp_write_byte(%struct.r8152* %159, i32 %160, i32 %161, i32 %162)
  br label %196

164:                                              ; preds = %120
  %165 = load %struct.r8152*, %struct.r8152** %2, align 8
  %166 = getelementptr inbounds %struct.r8152, %struct.r8152* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = load i64, i64* @RTL_VER_06, align 8
  %169 = icmp eq i64 %167, %168
  br i1 %169, label %170, label %195

170:                                              ; preds = %164
  %171 = load %struct.r8152*, %struct.r8152** %2, align 8
  %172 = load i32, i32* @MCU_TYPE_USB, align 4
  %173 = load i32, i32* @USB_CSR_DUMMY1, align 4
  %174 = call i32 @ocp_read_byte(%struct.r8152* %171, i32 %172, i32 %173)
  store i32 %174, i32* %3, align 4
  %175 = load %struct.r8152*, %struct.r8152** %2, align 8
  %176 = load i32, i32* @MCU_TYPE_USB, align 4
  %177 = load i32, i32* @USB_BURST_SIZE, align 4
  %178 = call i32 @ocp_read_word(%struct.r8152* %175, i32 %176, i32 %177)
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %170
  %181 = load i32, i32* @DYNAMIC_BURST, align 4
  %182 = xor i32 %181, -1
  %183 = load i32, i32* %3, align 4
  %184 = and i32 %183, %182
  store i32 %184, i32* %3, align 4
  br label %189

185:                                              ; preds = %170
  %186 = load i32, i32* @DYNAMIC_BURST, align 4
  %187 = load i32, i32* %3, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %3, align 4
  br label %189

189:                                              ; preds = %185, %180
  %190 = load %struct.r8152*, %struct.r8152** %2, align 8
  %191 = load i32, i32* @MCU_TYPE_USB, align 4
  %192 = load i32, i32* @USB_CSR_DUMMY1, align 4
  %193 = load i32, i32* %3, align 4
  %194 = call i32 @ocp_write_byte(%struct.r8152* %190, i32 %191, i32 %192, i32 %193)
  br label %195

195:                                              ; preds = %189, %164
  br label %196

196:                                              ; preds = %195, %158
  br label %197

197:                                              ; preds = %196, %89
  %198 = load %struct.r8152*, %struct.r8152** %2, align 8
  %199 = load i32, i32* @MCU_TYPE_USB, align 4
  %200 = load i32, i32* @USB_CSR_DUMMY2, align 4
  %201 = call i32 @ocp_read_byte(%struct.r8152* %198, i32 %199, i32 %200)
  store i32 %201, i32* %3, align 4
  %202 = load i32, i32* @EP4_FULL_FC, align 4
  %203 = load i32, i32* %3, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %3, align 4
  %205 = load %struct.r8152*, %struct.r8152** %2, align 8
  %206 = load i32, i32* @MCU_TYPE_USB, align 4
  %207 = load i32, i32* @USB_CSR_DUMMY2, align 4
  %208 = load i32, i32* %3, align 4
  %209 = call i32 @ocp_write_byte(%struct.r8152* %205, i32 %206, i32 %207, i32 %208)
  %210 = load %struct.r8152*, %struct.r8152** %2, align 8
  %211 = load i32, i32* @MCU_TYPE_USB, align 4
  %212 = load i32, i32* @USB_WDT11_CTRL, align 4
  %213 = call i32 @ocp_read_word(%struct.r8152* %210, i32 %211, i32 %212)
  store i32 %213, i32* %3, align 4
  %214 = load i32, i32* @TIMER11_EN, align 4
  %215 = xor i32 %214, -1
  %216 = load i32, i32* %3, align 4
  %217 = and i32 %216, %215
  store i32 %217, i32* %3, align 4
  %218 = load %struct.r8152*, %struct.r8152** %2, align 8
  %219 = load i32, i32* @MCU_TYPE_USB, align 4
  %220 = load i32, i32* @USB_WDT11_CTRL, align 4
  %221 = load i32, i32* %3, align 4
  %222 = call i32 @ocp_write_word(%struct.r8152* %218, i32 %219, i32 %220, i32 %221)
  %223 = load %struct.r8152*, %struct.r8152** %2, align 8
  %224 = load i32, i32* @MCU_TYPE_PLA, align 4
  %225 = load i32, i32* @PLA_LED_FEATURE, align 4
  %226 = call i32 @ocp_read_word(%struct.r8152* %223, i32 %224, i32 %225)
  store i32 %226, i32* %3, align 4
  %227 = load i32, i32* @LED_MODE_MASK, align 4
  %228 = xor i32 %227, -1
  %229 = load i32, i32* %3, align 4
  %230 = and i32 %229, %228
  store i32 %230, i32* %3, align 4
  %231 = load %struct.r8152*, %struct.r8152** %2, align 8
  %232 = load i32, i32* @MCU_TYPE_PLA, align 4
  %233 = load i32, i32* @PLA_LED_FEATURE, align 4
  %234 = load i32, i32* %3, align 4
  %235 = call i32 @ocp_write_word(%struct.r8152* %231, i32 %232, i32 %233, i32 %234)
  %236 = load i32, i32* @FIFO_EMPTY_1FB, align 4
  %237 = load i32, i32* @ROK_EXIT_LPM, align 4
  %238 = or i32 %236, %237
  store i32 %238, i32* %3, align 4
  %239 = load %struct.r8152*, %struct.r8152** %2, align 8
  %240 = getelementptr inbounds %struct.r8152, %struct.r8152* %239, i32 0, i32 0
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @RTL_VER_04, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %255

244:                                              ; preds = %197
  %245 = load %struct.r8152*, %struct.r8152** %2, align 8
  %246 = getelementptr inbounds %struct.r8152, %struct.r8152* %245, i32 0, i32 2
  %247 = load %struct.TYPE_2__*, %struct.TYPE_2__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = icmp slt i32 %249, 129
  br i1 %250, label %251, label %255

251:                                              ; preds = %244
  %252 = load i32, i32* @LPM_TIMER_500MS, align 4
  %253 = load i32, i32* %3, align 4
  %254 = or i32 %253, %252
  store i32 %254, i32* %3, align 4
  br label %259

255:                                              ; preds = %244, %197
  %256 = load i32, i32* @LPM_TIMER_500US, align 4
  %257 = load i32, i32* %3, align 4
  %258 = or i32 %257, %256
  store i32 %258, i32* %3, align 4
  br label %259

259:                                              ; preds = %255, %251
  %260 = load %struct.r8152*, %struct.r8152** %2, align 8
  %261 = load i32, i32* @MCU_TYPE_USB, align 4
  %262 = load i32, i32* @USB_LPM_CTRL, align 4
  %263 = load i32, i32* %3, align 4
  %264 = call i32 @ocp_write_byte(%struct.r8152* %260, i32 %261, i32 %262, i32 %263)
  %265 = load %struct.r8152*, %struct.r8152** %2, align 8
  %266 = load i32, i32* @MCU_TYPE_USB, align 4
  %267 = load i32, i32* @USB_AFE_CTRL2, align 4
  %268 = call i32 @ocp_read_word(%struct.r8152* %265, i32 %266, i32 %267)
  store i32 %268, i32* %3, align 4
  %269 = load i32, i32* @SEN_VAL_MASK, align 4
  %270 = xor i32 %269, -1
  %271 = load i32, i32* %3, align 4
  %272 = and i32 %271, %270
  store i32 %272, i32* %3, align 4
  %273 = load i32, i32* @SEN_VAL_NORMAL, align 4
  %274 = load i32, i32* @SEL_RXIDLE, align 4
  %275 = or i32 %273, %274
  %276 = load i32, i32* %3, align 4
  %277 = or i32 %276, %275
  store i32 %277, i32* %3, align 4
  %278 = load %struct.r8152*, %struct.r8152** %2, align 8
  %279 = load i32, i32* @MCU_TYPE_USB, align 4
  %280 = load i32, i32* @USB_AFE_CTRL2, align 4
  %281 = load i32, i32* %3, align 4
  %282 = call i32 @ocp_write_word(%struct.r8152* %278, i32 %279, i32 %280, i32 %281)
  %283 = load %struct.r8152*, %struct.r8152** %2, align 8
  %284 = load i32, i32* @MCU_TYPE_USB, align 4
  %285 = load i32, i32* @USB_CONNECT_TIMER, align 4
  %286 = call i32 @ocp_write_word(%struct.r8152* %283, i32 %284, i32 %285, i32 1)
  %287 = load %struct.r8152*, %struct.r8152** %2, align 8
  %288 = call i32 @r8153_power_cut_en(%struct.r8152* %287, i32 0)
  %289 = load %struct.r8152*, %struct.r8152** %2, align 8
  %290 = call i32 @r8153_u1u2en(%struct.r8152* %289, i32 1)
  %291 = load %struct.r8152*, %struct.r8152** %2, align 8
  %292 = call i32 @r8153_mac_clk_spd(%struct.r8152* %291, i32 0)
  %293 = load %struct.r8152*, %struct.r8152** %2, align 8
  %294 = getelementptr inbounds %struct.r8152, %struct.r8152* %293, i32 0, i32 2
  %295 = load %struct.TYPE_2__*, %struct.TYPE_2__** %294, align 8
  %296 = call i32 @usb_enable_lpm(%struct.TYPE_2__* %295)
  %297 = load %struct.r8152*, %struct.r8152** %2, align 8
  %298 = load i32, i32* @MCU_TYPE_USB, align 4
  %299 = load i32, i32* @USB_USB_CTRL, align 4
  %300 = call i32 @ocp_read_word(%struct.r8152* %297, i32 %298, i32 %299)
  store i32 %300, i32* %3, align 4
  %301 = load i32, i32* @RX_AGG_DISABLE, align 4
  %302 = load i32, i32* @RX_ZERO_EN, align 4
  %303 = or i32 %301, %302
  %304 = xor i32 %303, -1
  %305 = load i32, i32* %3, align 4
  %306 = and i32 %305, %304
  store i32 %306, i32* %3, align 4
  %307 = load i32, i32* @DELL_TB_RX_AGG_BUG, align 4
  %308 = load %struct.r8152*, %struct.r8152** %2, align 8
  %309 = getelementptr inbounds %struct.r8152, %struct.r8152* %308, i32 0, i32 3
  %310 = call i64 @test_bit(i32 %307, i32* %309)
  %311 = icmp ne i64 %310, 0
  br i1 %311, label %312, label %316

312:                                              ; preds = %259
  %313 = load i32, i32* @RX_AGG_DISABLE, align 4
  %314 = load i32, i32* %3, align 4
  %315 = or i32 %314, %313
  store i32 %315, i32* %3, align 4
  br label %316

316:                                              ; preds = %312, %259
  %317 = load %struct.r8152*, %struct.r8152** %2, align 8
  %318 = load i32, i32* @MCU_TYPE_USB, align 4
  %319 = load i32, i32* @USB_USB_CTRL, align 4
  %320 = load i32, i32* %3, align 4
  %321 = call i32 @ocp_write_word(%struct.r8152* %317, i32 %318, i32 %319, i32 %320)
  %322 = load %struct.r8152*, %struct.r8152** %2, align 8
  %323 = call i32 @rtl_tally_reset(%struct.r8152* %322)
  %324 = load %struct.r8152*, %struct.r8152** %2, align 8
  %325 = getelementptr inbounds %struct.r8152, %struct.r8152* %324, i32 0, i32 2
  %326 = load %struct.TYPE_2__*, %struct.TYPE_2__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %326, i32 0, i32 0
  %328 = load i32, i32* %327, align 4
  switch i32 %328, label %337 [
    i32 129, label %329
    i32 128, label %329
    i32 130, label %333
  ]

329:                                              ; preds = %316, %316
  %330 = load i32, i32* @COALESCE_SUPER, align 4
  %331 = load %struct.r8152*, %struct.r8152** %2, align 8
  %332 = getelementptr inbounds %struct.r8152, %struct.r8152* %331, i32 0, i32 1
  store i32 %330, i32* %332, align 8
  br label %341

333:                                              ; preds = %316
  %334 = load i32, i32* @COALESCE_HIGH, align 4
  %335 = load %struct.r8152*, %struct.r8152** %2, align 8
  %336 = getelementptr inbounds %struct.r8152, %struct.r8152* %335, i32 0, i32 1
  store i32 %334, i32* %336, align 8
  br label %341

337:                                              ; preds = %316
  %338 = load i32, i32* @COALESCE_SLOW, align 4
  %339 = load %struct.r8152*, %struct.r8152** %2, align 8
  %340 = getelementptr inbounds %struct.r8152, %struct.r8152* %339, i32 0, i32 1
  store i32 %338, i32* %340, align 8
  br label %341

341:                                              ; preds = %11, %337, %333, %329
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @r8153_u1u2en(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_read_word(%struct.r8152*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @r8153_phy_status(%struct.r8152*, i32) #1

declare dso_local i32 @ocp_reg_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @r8152_mdio_read(%struct.r8152*, i32) #1

declare dso_local i32 @r8152_mdio_write(%struct.r8152*, i32, i32) #1

declare dso_local i32 @r8153_u2p3en(%struct.r8152*, i32) #1

declare dso_local i32 @pwd_dn_scale(i32) #1

declare dso_local i32 @ocp_write_word(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @ocp_read_byte(%struct.r8152*, i32, i32) #1

declare dso_local i32 @ocp_write_byte(%struct.r8152*, i32, i32, i32) #1

declare dso_local i32 @r8153_power_cut_en(%struct.r8152*, i32) #1

declare dso_local i32 @r8153_mac_clk_spd(%struct.r8152*, i32) #1

declare dso_local i32 @usb_enable_lpm(%struct.TYPE_2__*) #1

declare dso_local i32 @rtl_tally_reset(%struct.r8152*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
