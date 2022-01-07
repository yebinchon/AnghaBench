; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_chip_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_main.c_b43_chip_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_10__*, %struct.b43_phy }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.b43_phy = type { i64, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)* }

@B43_MACCTL_IHR_ENABLED = common dso_local global i32 0, align 4
@B43_MACCTL_SHM_ENABLED = common dso_local global i32 0, align 4
@B43_MACCTL_GMODE = common dso_local global i32 0, align 4
@B43_MACCTL_INFRA = common dso_local global i32 0, align 4
@B43_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43_INTERFMODE_NONE = common dso_local global i32 0, align 4
@B43_ANTENNA_DEFAULT = common dso_local global i32 0, align 4
@B43_PHYTYPE_B = common dso_local global i64 0, align 8
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_PRMAXTIME = common dso_local global i32 0, align 4
@B43_MMIO_GEN_IRQ_REASON = common dso_local global i32 0, align 4
@B43_MMIO_DMA0_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA1_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA2_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA3_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA4_IRQ_MASK = common dso_local global i32 0, align 4
@B43_MMIO_DMA5_IRQ_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Chip initialized\0A\00", align 1
@B43_MMIO_POWERUP_DELAY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*)* @b43_chip_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_chip_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %8 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %8, i32 0, i32 2
  store %struct.b43_phy* %9, %struct.b43_phy** %4, align 8
  %10 = load i32, i32* @B43_MACCTL_IHR_ENABLED, align 4
  %11 = load i32, i32* @B43_MACCTL_SHM_ENABLED, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %14 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @B43_MACCTL_GMODE, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %22

22:                                               ; preds = %18, %1
  %23 = load i32, i32* @B43_MACCTL_INFRA, align 4
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %27 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @b43_write32(%struct.b43_wldev* %26, i32 %27, i32 %28)
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %31 = call i32 @b43_upload_microcode(%struct.b43_wldev* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %197

35:                                               ; preds = %22
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %37 = call i32 @b43_gpio_init(%struct.b43_wldev* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35
  br label %197

41:                                               ; preds = %35
  %42 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %43 = call i32 @b43_upload_initvals(%struct.b43_wldev* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %199

47:                                               ; preds = %41
  %48 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %49 = call i32 @b43_upload_initvals_band(%struct.b43_wldev* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %199

53:                                               ; preds = %47
  %54 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %55 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %54, i32 0, i32 1
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 2
  %58 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %57, align 8
  %59 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %60 = call i32 %58(%struct.b43_wldev* %59, i32 1)
  %61 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %62 = call i32 @b43_phy_init(%struct.b43_wldev* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %53
  br label %199

66:                                               ; preds = %53
  %67 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %68 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %67, i32 0, i32 1
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %70, align 8
  %72 = icmp ne i32 (%struct.b43_wldev*, i32)* %71, null
  br i1 %72, label %73, label %82

73:                                               ; preds = %66
  %74 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %75 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  %78 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %77, align 8
  %79 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %80 = load i32, i32* @B43_INTERFMODE_NONE, align 4
  %81 = call i32 %78(%struct.b43_wldev* %79, i32 %80)
  br label %82

82:                                               ; preds = %73, %66
  %83 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %84 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %83, i32 0, i32 1
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %86, align 8
  %88 = icmp ne i32 (%struct.b43_wldev*, i32)* %87, null
  br i1 %88, label %89, label %98

89:                                               ; preds = %82
  %90 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %91 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %90, i32 0, i32 1
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load i32 (%struct.b43_wldev*, i32)*, i32 (%struct.b43_wldev*, i32)** %93, align 8
  %95 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %96 = load i32, i32* @B43_ANTENNA_DEFAULT, align 4
  %97 = call i32 %94(%struct.b43_wldev* %95, i32 %96)
  br label %98

98:                                               ; preds = %89, %82
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %100 = load i32, i32* @B43_ANTENNA_DEFAULT, align 4
  %101 = call i32 @b43_mgmtframe_txantenna(%struct.b43_wldev* %99, i32 %100)
  %102 = load %struct.b43_phy*, %struct.b43_phy** %4, align 8
  %103 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @B43_PHYTYPE_B, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %115

107:                                              ; preds = %98
  %108 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %109 = call i32 @b43_read16(%struct.b43_wldev* %108, i32 94)
  store i32 %109, i32* %7, align 4
  %110 = load i32, i32* %7, align 4
  %111 = or i32 %110, 4
  store i32 %111, i32* %7, align 4
  %112 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @b43_write16(%struct.b43_wldev* %112, i32 94, i32 %113)
  br label %115

115:                                              ; preds = %107, %98
  %116 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %117 = call i32 @b43_write32(%struct.b43_wldev* %116, i32 256, i32 16777216)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %119 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %118, i32 0, i32 1
  %120 = load %struct.TYPE_10__*, %struct.TYPE_10__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %122, 5
  br i1 %123, label %124, label %127

124:                                              ; preds = %115
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %126 = call i32 @b43_write32(%struct.b43_wldev* %125, i32 268, i32 16777216)
  br label %127

127:                                              ; preds = %124, %115
  %128 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %129 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %130 = load i32, i32* @B43_MACCTL_INFRA, align 4
  %131 = xor i32 %130, -1
  %132 = call i32 @b43_maskset32(%struct.b43_wldev* %128, i32 %129, i32 %131, i32 0)
  %133 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %134 = load i32, i32* @B43_MMIO_MACCTL, align 4
  %135 = load i32, i32* @B43_MACCTL_INFRA, align 4
  %136 = call i32 @b43_maskset32(%struct.b43_wldev* %133, i32 %134, i32 -1, i32 %135)
  %137 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %138 = load i32, i32* @B43_SHM_SHARED, align 4
  %139 = load i32, i32* @B43_SHM_SH_PRMAXTIME, align 4
  %140 = call i32 @b43_shm_write16(%struct.b43_wldev* %137, i32 %138, i32 %139, i32 0)
  %141 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %142 = call i32 @b43_adjust_opmode(%struct.b43_wldev* %141)
  %143 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %144 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %143, i32 0, i32 1
  %145 = load %struct.TYPE_10__*, %struct.TYPE_10__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = icmp slt i32 %147, 3
  br i1 %148, label %149, label %158

149:                                              ; preds = %127
  %150 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %151 = call i32 @b43_write16(%struct.b43_wldev* %150, i32 1550, i32 0)
  %152 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %153 = call i32 @b43_write16(%struct.b43_wldev* %152, i32 1552, i32 32768)
  %154 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %155 = call i32 @b43_write16(%struct.b43_wldev* %154, i32 1540, i32 0)
  %156 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %157 = call i32 @b43_write16(%struct.b43_wldev* %156, i32 1542, i32 512)
  br label %163

158:                                              ; preds = %127
  %159 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %160 = call i32 @b43_write32(%struct.b43_wldev* %159, i32 392, i32 -2147483648)
  %161 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %162 = call i32 @b43_write32(%struct.b43_wldev* %161, i32 396, i32 33554432)
  br label %163

163:                                              ; preds = %158, %149
  %164 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %165 = load i32, i32* @B43_MMIO_GEN_IRQ_REASON, align 4
  %166 = call i32 @b43_write32(%struct.b43_wldev* %164, i32 %165, i32 16384)
  %167 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %168 = load i32, i32* @B43_MMIO_DMA0_IRQ_MASK, align 4
  %169 = call i32 @b43_write32(%struct.b43_wldev* %167, i32 %168, i32 130048)
  %170 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %171 = load i32, i32* @B43_MMIO_DMA1_IRQ_MASK, align 4
  %172 = call i32 @b43_write32(%struct.b43_wldev* %170, i32 %171, i32 56320)
  %173 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %174 = load i32, i32* @B43_MMIO_DMA2_IRQ_MASK, align 4
  %175 = call i32 @b43_write32(%struct.b43_wldev* %173, i32 %174, i32 56320)
  %176 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %177 = load i32, i32* @B43_MMIO_DMA3_IRQ_MASK, align 4
  %178 = call i32 @b43_write32(%struct.b43_wldev* %176, i32 %177, i32 121856)
  %179 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %180 = load i32, i32* @B43_MMIO_DMA4_IRQ_MASK, align 4
  %181 = call i32 @b43_write32(%struct.b43_wldev* %179, i32 %180, i32 56320)
  %182 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %183 = load i32, i32* @B43_MMIO_DMA5_IRQ_MASK, align 4
  %184 = call i32 @b43_write32(%struct.b43_wldev* %182, i32 %183, i32 56320)
  %185 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %186 = call i32 @b43_mac_phy_clock_set(%struct.b43_wldev* %185, i32 1)
  %187 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %188 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %187, i32 0, i32 1
  %189 = load %struct.TYPE_10__*, %struct.TYPE_10__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %189, i32 0, i32 1
  %191 = load i32, i32* %190, align 4
  switch i32 %191, label %192 [
  ]

192:                                              ; preds = %163
  store i32 0, i32* %5, align 4
  %193 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %194 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = call i32 @b43dbg(i32 %195, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %197

197:                                              ; preds = %192, %40, %34
  %198 = load i32, i32* %5, align 4
  store i32 %198, i32* %2, align 4
  br label %203

199:                                              ; preds = %65, %52, %46
  %200 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %201 = call i32 @b43_gpio_cleanup(%struct.b43_wldev* %200)
  %202 = load i32, i32* %5, align 4
  store i32 %202, i32* %2, align 4
  br label %203

203:                                              ; preds = %199, %197
  %204 = load i32, i32* %2, align 4
  ret i32 %204
}

declare dso_local i32 @b43_write32(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_upload_microcode(%struct.b43_wldev*) #1

declare dso_local i32 @b43_gpio_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_upload_initvals(%struct.b43_wldev*) #1

declare dso_local i32 @b43_upload_initvals_band(%struct.b43_wldev*) #1

declare dso_local i32 @b43_phy_init(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mgmtframe_txantenna(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_maskset32(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_adjust_opmode(%struct.b43_wldev*) #1

declare dso_local i32 @b43_mac_phy_clock_set(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*) #1

declare dso_local i32 @b43_gpio_cleanup(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
