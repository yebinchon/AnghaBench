; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_pci_o2_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-pci-o2micro.c_sdhci_pci_o2_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_pci_chip = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@O2_SD_LOCK_WP = common dso_local global i32 0, align 4
@O2_SD_MULTI_VCC3V = common dso_local global i32 0, align 4
@O2_SD_CLKREQ = common dso_local global i32 0, align 4
@O2_SD_CAPS = common dso_local global i32 0, align 4
@O2_SD_ADMA1 = common dso_local global i32 0, align 4
@O2_SD_ADMA2 = common dso_local global i32 0, align 4
@O2_SD_INF_MOD = common dso_local global i32 0, align 4
@O2_SD_FUNC_REG0 = common dso_local global i32 0, align 4
@O2_SD_FUNC_REG4 = common dso_local global i32 0, align 4
@O2_SD_FREG4_ENABLE_CLK_SET = common dso_local global i32 0, align 4
@O2_SD_TUNING_CTRL = common dso_local global i32 0, align 4
@O2_SD_CLK_SETTING = common dso_local global i32 0, align 4
@O2_SD_PLL_SETTING = common dso_local global i32 0, align 4
@O2_SD_CAP_REG2 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_pci_o2_probe(%struct.sdhci_pci_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sdhci_pci_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sdhci_pci_chip* %0, %struct.sdhci_pci_chip** %3, align 8
  %7 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %8 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %379 [
    i32 136, label %12
    i32 135, label %12
    i32 134, label %12
    i32 133, label %12
    i32 131, label %123
    i32 130, label %123
    i32 132, label %123
    i32 129, label %293
    i32 128, label %293
  ]

12:                                               ; preds = %1, %1, %1, %1
  %13 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %14 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %17 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %15, i32 %16, i32* %5)
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %12
  %21 = load i32, i32* %4, align 4
  store i32 %21, i32* %2, align 4
  br label %380

22:                                               ; preds = %12
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, 127
  store i32 %24, i32* %5, align 4
  %25 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %26 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %25, i32 0, i32 0
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %26, align 8
  %28 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %27, i32 %28, i32 %29)
  %31 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %32 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %31, i32 0, i32 0
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load i32, i32* @O2_SD_MULTI_VCC3V, align 4
  %35 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %33, i32 %34, i32 8)
  %36 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %37 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %36, i32 0, i32 0
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* @O2_SD_CLKREQ, align 4
  %40 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %38, i32 %39, i32* %5)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %22
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %380

45:                                               ; preds = %22
  %46 = load i32, i32* %5, align 4
  %47 = or i32 %46, 32
  store i32 %47, i32* %5, align 4
  %48 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %49 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = load i32, i32* @O2_SD_CLKREQ, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %50, i32 %51, i32 %52)
  %54 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %55 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %54, i32 0, i32 0
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %55, align 8
  %57 = load i32, i32* @O2_SD_CAPS, align 4
  %58 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %56, i32 %57, i32* %5)
  store i32 %58, i32* %4, align 4
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %45
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %380

63:                                               ; preds = %45
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, 1
  store i32 %65, i32* %5, align 4
  %66 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %67 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* @O2_SD_CAPS, align 4
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %68, i32 %69, i32 %70)
  %72 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %73 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %72, i32 0, i32 0
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = load i32, i32* @O2_SD_CAPS, align 4
  %76 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %74, i32 %75, i32 115)
  %77 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %78 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %77, i32 0, i32 0
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %78, align 8
  %80 = load i32, i32* @O2_SD_ADMA1, align 4
  %81 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %79, i32 %80, i32 57)
  %82 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %83 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %82, i32 0, i32 0
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* @O2_SD_ADMA2, align 4
  %86 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %84, i32 %85, i32 8)
  %87 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %88 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %87, i32 0, i32 0
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = load i32, i32* @O2_SD_INF_MOD, align 4
  %91 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %89, i32 %90, i32* %5)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %63
  %95 = load i32, i32* %4, align 4
  store i32 %95, i32* %2, align 4
  br label %380

96:                                               ; preds = %63
  %97 = load i32, i32* %5, align 4
  %98 = or i32 %97, 8
  store i32 %98, i32* %5, align 4
  %99 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %100 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %99, i32 0, i32 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %100, align 8
  %102 = load i32, i32* @O2_SD_INF_MOD, align 4
  %103 = load i32, i32* %5, align 4
  %104 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %101, i32 %102, i32 %103)
  %105 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %106 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %105, i32 0, i32 0
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %106, align 8
  %108 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %109 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %107, i32 %108, i32* %5)
  store i32 %109, i32* %4, align 4
  %110 = load i32, i32* %4, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %114

112:                                              ; preds = %96
  %113 = load i32, i32* %4, align 4
  store i32 %113, i32* %2, align 4
  br label %380

114:                                              ; preds = %96
  %115 = load i32, i32* %5, align 4
  %116 = or i32 %115, 128
  store i32 %116, i32* %5, align 4
  %117 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %118 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %117, i32 0, i32 0
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %119, i32 %120, i32 %121)
  br label %379

123:                                              ; preds = %1, %1, %1
  %124 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %125 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %124, i32 0, i32 0
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %125, align 8
  %127 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %128 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %126, i32 %127, i32* %5)
  store i32 %128, i32* %4, align 4
  %129 = load i32, i32* %4, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %123
  %132 = load i32, i32* %4, align 4
  store i32 %132, i32* %2, align 4
  br label %380

133:                                              ; preds = %123
  %134 = load i32, i32* %5, align 4
  %135 = and i32 %134, 127
  store i32 %135, i32* %5, align 4
  %136 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %137 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %136, i32 0, i32 0
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %137, align 8
  %139 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %140 = load i32, i32* %5, align 4
  %141 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %138, i32 %139, i32 %140)
  %142 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %143 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %142, i32 0, i32 0
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = icmp eq i32 %146, 132
  br i1 %147, label %148, label %186

148:                                              ; preds = %133
  %149 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %150 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %149, i32 0, i32 0
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %150, align 8
  %152 = load i32, i32* @O2_SD_FUNC_REG0, align 4
  %153 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %151, i32 %152, i32* %6)
  store i32 %153, i32* %4, align 4
  %154 = load i32, i32* %6, align 4
  %155 = and i32 %154, -16777216
  %156 = lshr i32 %155, 24
  store i32 %156, i32* %6, align 4
  %157 = load i32, i32* %6, align 4
  %158 = icmp eq i32 %157, 17
  br i1 %158, label %162, label %159

159:                                              ; preds = %148
  %160 = load i32, i32* %6, align 4
  %161 = icmp eq i32 %160, 18
  br i1 %161, label %162, label %185

162:                                              ; preds = %159, %148
  store i32 621805568, i32* %6, align 4
  %163 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %164 = load i32, i32* %6, align 4
  %165 = call i32 @o2_pci_set_baseclk(%struct.sdhci_pci_chip* %163, i32 %164)
  %166 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %167 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %166, i32 0, i32 0
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = load i32, i32* @O2_SD_FUNC_REG4, align 4
  %170 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %168, i32 %169, i32* %6)
  store i32 %170, i32* %4, align 4
  %171 = load i32, i32* @O2_SD_FREG4_ENABLE_CLK_SET, align 4
  %172 = load i32, i32* %6, align 4
  %173 = or i32 %172, %171
  store i32 %173, i32* %6, align 4
  %174 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %175 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %174, i32 0, i32 0
  %176 = load %struct.TYPE_5__*, %struct.TYPE_5__** %175, align 8
  %177 = load i32, i32* @O2_SD_FUNC_REG4, align 4
  %178 = load i32, i32* %6, align 4
  %179 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %176, i32 %177, i32 %178)
  %180 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %181 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %180, i32 0, i32 0
  %182 = load %struct.TYPE_5__*, %struct.TYPE_5__** %181, align 8
  %183 = load i32, i32* @O2_SD_TUNING_CTRL, align 4
  %184 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %182, i32 %183, i32 68)
  br label %379

185:                                              ; preds = %159
  br label %186

186:                                              ; preds = %185, %133
  %187 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %188 = call i32 @o2_pci_led_enable(%struct.sdhci_pci_chip* %187)
  %189 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %190 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %189, i32 0, i32 0
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %190, align 8
  %192 = load i32, i32* @O2_SD_CLK_SETTING, align 4
  %193 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %191, i32 %192, i32* %6)
  store i32 %193, i32* %4, align 4
  %194 = load i32, i32* %4, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %198

196:                                              ; preds = %186
  %197 = load i32, i32* %4, align 4
  store i32 %197, i32* %2, align 4
  br label %380

198:                                              ; preds = %186
  %199 = load i32, i32* %6, align 4
  %200 = and i32 %199, -65281
  store i32 %200, i32* %6, align 4
  %201 = load i32, i32* %6, align 4
  %202 = or i32 %201, 132171776
  store i32 %202, i32* %6, align 4
  %203 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %204 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %203, i32 0, i32 0
  %205 = load %struct.TYPE_5__*, %struct.TYPE_5__** %204, align 8
  %206 = load i32, i32* @O2_SD_CLK_SETTING, align 4
  %207 = load i32, i32* %6, align 4
  %208 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %205, i32 %206, i32 %207)
  %209 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %210 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %209, i32 0, i32 0
  %211 = load %struct.TYPE_5__*, %struct.TYPE_5__** %210, align 8
  %212 = load i32, i32* @O2_SD_CLKREQ, align 4
  %213 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %211, i32 %212, i32* %6)
  store i32 %213, i32* %4, align 4
  %214 = load i32, i32* %4, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %218

216:                                              ; preds = %198
  %217 = load i32, i32* %4, align 4
  store i32 %217, i32* %2, align 4
  br label %380

218:                                              ; preds = %198
  %219 = load i32, i32* %6, align 4
  %220 = or i32 %219, 3
  store i32 %220, i32* %6, align 4
  %221 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %222 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %221, i32 0, i32 0
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i32, i32* @O2_SD_CLKREQ, align 4
  %225 = load i32, i32* %6, align 4
  %226 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %223, i32 %224, i32 %225)
  %227 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %228 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %227, i32 0, i32 0
  %229 = load %struct.TYPE_5__*, %struct.TYPE_5__** %228, align 8
  %230 = load i32, i32* @O2_SD_PLL_SETTING, align 4
  %231 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %229, i32 %230, i32* %6)
  store i32 %231, i32* %4, align 4
  %232 = load i32, i32* %4, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %236

234:                                              ; preds = %218
  %235 = load i32, i32* %4, align 4
  store i32 %235, i32* %2, align 4
  br label %380

236:                                              ; preds = %218
  %237 = load i32, i32* %6, align 4
  %238 = and i32 %237, -524224271
  store i32 %238, i32* %6, align 4
  %239 = load i32, i32* %6, align 4
  %240 = or i32 %239, 405209350
  store i32 %240, i32* %6, align 4
  %241 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %242 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %241, i32 0, i32 0
  %243 = load %struct.TYPE_5__*, %struct.TYPE_5__** %242, align 8
  %244 = load i32, i32* @O2_SD_PLL_SETTING, align 4
  %245 = load i32, i32* %6, align 4
  %246 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %243, i32 %244, i32 %245)
  %247 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %248 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %247, i32 0, i32 0
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %248, align 8
  %250 = load i32, i32* @O2_SD_CAP_REG2, align 4
  %251 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %249, i32 %250, i32* %6)
  store i32 %251, i32* %4, align 4
  %252 = load i32, i32* %4, align 4
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %254, label %256

254:                                              ; preds = %236
  %255 = load i32, i32* %4, align 4
  store i32 %255, i32* %2, align 4
  br label %380

256:                                              ; preds = %236
  %257 = load i32, i32* %6, align 4
  %258 = and i32 %257, -225
  store i32 %258, i32* %6, align 4
  %259 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %260 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %259, i32 0, i32 0
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %260, align 8
  %262 = load i32, i32* @O2_SD_CAP_REG2, align 4
  %263 = load i32, i32* %6, align 4
  %264 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %261, i32 %262, i32 %263)
  %265 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %266 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %265, i32 0, i32 0
  %267 = load %struct.TYPE_5__*, %struct.TYPE_5__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = icmp eq i32 %269, 132
  br i1 %270, label %271, label %274

271:                                              ; preds = %256
  %272 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %273 = call i32 @sdhci_pci_o2_fujin2_pci_init(%struct.sdhci_pci_chip* %272)
  br label %274

274:                                              ; preds = %271, %256
  %275 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %276 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %275, i32 0, i32 0
  %277 = load %struct.TYPE_5__*, %struct.TYPE_5__** %276, align 8
  %278 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %279 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %277, i32 %278, i32* %5)
  store i32 %279, i32* %4, align 4
  %280 = load i32, i32* %4, align 4
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %282, label %284

282:                                              ; preds = %274
  %283 = load i32, i32* %4, align 4
  store i32 %283, i32* %2, align 4
  br label %380

284:                                              ; preds = %274
  %285 = load i32, i32* %5, align 4
  %286 = or i32 %285, 128
  store i32 %286, i32* %5, align 4
  %287 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %288 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %287, i32 0, i32 0
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %288, align 8
  %290 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %291 = load i32, i32* %5, align 4
  %292 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %289, i32 %290, i32 %291)
  br label %379

293:                                              ; preds = %1, %1
  %294 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %295 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %294, i32 0, i32 0
  %296 = load %struct.TYPE_5__*, %struct.TYPE_5__** %295, align 8
  %297 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %298 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %296, i32 %297, i32* %5)
  store i32 %298, i32* %4, align 4
  %299 = load i32, i32* %4, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %303

301:                                              ; preds = %293
  %302 = load i32, i32* %4, align 4
  store i32 %302, i32* %2, align 4
  br label %380

303:                                              ; preds = %293
  %304 = load i32, i32* %5, align 4
  %305 = and i32 %304, 127
  store i32 %305, i32* %5, align 4
  %306 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %307 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %306, i32 0, i32 0
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %307, align 8
  %309 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %310 = load i32, i32* %5, align 4
  %311 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %308, i32 %309, i32 %310)
  %312 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %313 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %312, i32 0, i32 0
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %313, align 8
  %315 = load i32, i32* @O2_SD_PLL_SETTING, align 4
  %316 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %314, i32 %315, i32* %6)
  store i32 %316, i32* %4, align 4
  %317 = load i32, i32* %6, align 4
  %318 = and i32 %317, -16777216
  %319 = icmp eq i32 %318, 16777216
  br i1 %319, label %320, label %331

320:                                              ; preds = %303
  %321 = load i32, i32* %6, align 4
  %322 = and i32 %321, 65535
  store i32 %322, i32* %6, align 4
  %323 = load i32, i32* %6, align 4
  %324 = or i32 %323, 523501568
  store i32 %324, i32* %6, align 4
  %325 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %326 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %325, i32 0, i32 0
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %326, align 8
  %328 = load i32, i32* @O2_SD_PLL_SETTING, align 4
  %329 = load i32, i32* %6, align 4
  %330 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %327, i32 %328, i32 %329)
  br label %355

331:                                              ; preds = %303
  %332 = load i32, i32* %6, align 4
  %333 = and i32 %332, 65535
  store i32 %333, i32* %6, align 4
  %334 = load i32, i32* %6, align 4
  %335 = or i32 %334, 621805568
  store i32 %335, i32* %6, align 4
  %336 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %337 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %336, i32 0, i32 0
  %338 = load %struct.TYPE_5__*, %struct.TYPE_5__** %337, align 8
  %339 = load i32, i32* @O2_SD_PLL_SETTING, align 4
  %340 = load i32, i32* %6, align 4
  %341 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %338, i32 %339, i32 %340)
  %342 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %343 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %342, i32 0, i32 0
  %344 = load %struct.TYPE_5__*, %struct.TYPE_5__** %343, align 8
  %345 = load i32, i32* @O2_SD_FUNC_REG4, align 4
  %346 = call i32 @pci_read_config_dword(%struct.TYPE_5__* %344, i32 %345, i32* %6)
  store i32 %346, i32* %4, align 4
  %347 = load i32, i32* %6, align 4
  %348 = or i32 %347, 4194304
  store i32 %348, i32* %6, align 4
  %349 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %350 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %349, i32 0, i32 0
  %351 = load %struct.TYPE_5__*, %struct.TYPE_5__** %350, align 8
  %352 = load i32, i32* @O2_SD_FUNC_REG4, align 4
  %353 = load i32, i32* %6, align 4
  %354 = call i32 @pci_write_config_dword(%struct.TYPE_5__* %351, i32 %352, i32 %353)
  br label %355

355:                                              ; preds = %331, %320
  %356 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %357 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %356, i32 0, i32 0
  %358 = load %struct.TYPE_5__*, %struct.TYPE_5__** %357, align 8
  %359 = load i32, i32* @O2_SD_TUNING_CTRL, align 4
  %360 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %358, i32 %359, i32 85)
  %361 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %362 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %361, i32 0, i32 0
  %363 = load %struct.TYPE_5__*, %struct.TYPE_5__** %362, align 8
  %364 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %365 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %363, i32 %364, i32* %5)
  store i32 %365, i32* %4, align 4
  %366 = load i32, i32* %4, align 4
  %367 = icmp ne i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %355
  %369 = load i32, i32* %4, align 4
  store i32 %369, i32* %2, align 4
  br label %380

370:                                              ; preds = %355
  %371 = load i32, i32* %5, align 4
  %372 = or i32 %371, 128
  store i32 %372, i32* %5, align 4
  %373 = load %struct.sdhci_pci_chip*, %struct.sdhci_pci_chip** %3, align 8
  %374 = getelementptr inbounds %struct.sdhci_pci_chip, %struct.sdhci_pci_chip* %373, i32 0, i32 0
  %375 = load %struct.TYPE_5__*, %struct.TYPE_5__** %374, align 8
  %376 = load i32, i32* @O2_SD_LOCK_WP, align 4
  %377 = load i32, i32* %5, align 4
  %378 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %375, i32 %376, i32 %377)
  br label %379

379:                                              ; preds = %1, %370, %284, %162, %114
  store i32 0, i32* %2, align 4
  br label %380

380:                                              ; preds = %379, %368, %301, %282, %254, %234, %216, %196, %131, %112, %94, %61, %43, %20
  %381 = load i32, i32* %2, align 4
  ret i32 %381
}

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @o2_pci_set_baseclk(%struct.sdhci_pci_chip*, i32) #1

declare dso_local i32 @pci_write_config_dword(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @o2_pci_led_enable(%struct.sdhci_pci_chip*) #1

declare dso_local i32 @sdhci_pci_o2_fujin2_pci_init(%struct.sdhci_pci_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
