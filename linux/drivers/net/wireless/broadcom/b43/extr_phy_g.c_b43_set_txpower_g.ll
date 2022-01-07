; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_set_txpower_g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_g.c_b43_set_txpower_g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.b43_phy }
%struct.b43_phy = type { i32, i32, %struct.b43_phy_g* }
%struct.b43_phy_g = type { i32, %struct.TYPE_2__, %struct.TYPE_2__, %struct.b43_txpower_lo_control* }
%struct.TYPE_2__ = type { i32 }
%struct.b43_txpower_lo_control = type { i32, i32 }
%struct.b43_bbatt = type { i32 }
%struct.b43_rfatt = type { i32 }

@B43_TXCTL_TXMIX = common dso_local global i32 0, align 4
@B43_DBG_XMITPOWER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [95 x i8] c"Tuning TX-power to bbatt(%u), rfatt(%u), tx_control(0x%02X), tx_bias(0x%02X), tx_magn(0x%02X)\0A\00", align 1
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_SHM_SH_RFATT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*, %struct.b43_bbatt*, %struct.b43_rfatt*, i32)* @b43_set_txpower_g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_set_txpower_g(%struct.b43_wldev* %0, %struct.b43_bbatt* %1, %struct.b43_rfatt* %2, i32 %3) #0 {
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca %struct.b43_bbatt*, align 8
  %7 = alloca %struct.b43_rfatt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.b43_phy*, align 8
  %10 = alloca %struct.b43_phy_g*, align 8
  %11 = alloca %struct.b43_txpower_lo_control*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store %struct.b43_bbatt* %1, %struct.b43_bbatt** %6, align 8
  store %struct.b43_rfatt* %2, %struct.b43_rfatt** %7, align 8
  store i32 %3, i32* %8, align 4
  %16 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %17 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %16, i32 0, i32 1
  store %struct.b43_phy* %17, %struct.b43_phy** %9, align 8
  %18 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %19 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %18, i32 0, i32 2
  %20 = load %struct.b43_phy_g*, %struct.b43_phy_g** %19, align 8
  store %struct.b43_phy_g* %20, %struct.b43_phy_g** %10, align 8
  %21 = load %struct.b43_phy_g*, %struct.b43_phy_g** %10, align 8
  %22 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %21, i32 0, i32 3
  %23 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %22, align 8
  store %struct.b43_txpower_lo_control* %23, %struct.b43_txpower_lo_control** %11, align 8
  %24 = load %struct.b43_bbatt*, %struct.b43_bbatt** %6, align 8
  %25 = getelementptr inbounds %struct.b43_bbatt, %struct.b43_bbatt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %12, align 4
  %27 = load %struct.b43_rfatt*, %struct.b43_rfatt** %7, align 8
  %28 = getelementptr inbounds %struct.b43_rfatt, %struct.b43_rfatt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  store i32 %29, i32* %13, align 4
  %30 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %11, align 8
  %31 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %14, align 4
  %33 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %11, align 8
  %34 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp eq i32 %36, 255
  %38 = zext i1 %37 to i32
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %4
  store i32 0, i32* %14, align 4
  br label %42

42:                                               ; preds = %41, %4
  %43 = load i32, i32* %8, align 4
  %44 = load %struct.b43_phy_g*, %struct.b43_phy_g** %10, align 8
  %45 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.b43_phy_g*, %struct.b43_phy_g** %10, align 8
  %47 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %46, i32 0, i32 2
  %48 = load %struct.b43_rfatt*, %struct.b43_rfatt** %7, align 8
  %49 = call i32 @memmove(%struct.TYPE_2__* %47, %struct.b43_rfatt* %48, i32 4)
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @B43_TXCTL_TXMIX, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  %54 = xor i1 %53, true
  %55 = xor i1 %54, true
  %56 = zext i1 %55 to i32
  %57 = load %struct.b43_phy_g*, %struct.b43_phy_g** %10, align 8
  %58 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 8
  %60 = load %struct.b43_phy_g*, %struct.b43_phy_g** %10, align 8
  %61 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %60, i32 0, i32 1
  %62 = load %struct.b43_bbatt*, %struct.b43_bbatt** %6, align 8
  %63 = bitcast %struct.b43_bbatt* %62 to %struct.b43_rfatt*
  %64 = call i32 @memmove(%struct.TYPE_2__* %61, %struct.b43_rfatt* %63, i32 4)
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %66 = load i32, i32* @B43_DBG_XMITPOWER, align 4
  %67 = call i64 @b43_debug(%struct.b43_wldev* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %79

69:                                               ; preds = %42
  %70 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %71 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %8, align 4
  %76 = load i32, i32* %14, align 4
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @b43dbg(i32 %72, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %73, i32 %74, i32 %75, i32 %76, i32 %77)
  br label %79

79:                                               ; preds = %69, %42
  %80 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @b43_gphy_set_baseband_attenuation(%struct.b43_wldev* %80, i32 %81)
  %83 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %84 = load i32, i32* @B43_SHM_SHARED, align 4
  %85 = load i32, i32* @B43_SHM_SH_RFATT, align 4
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @b43_shm_write16(%struct.b43_wldev* %83, i32 %84, i32 %85, i32 %86)
  %88 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %89 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = icmp eq i32 %90, 8272
  br i1 %91, label %92, label %105

92:                                               ; preds = %79
  %93 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %94 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 8
  br i1 %96, label %97, label %105

97:                                               ; preds = %92
  %98 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %99 = load i32, i32* %13, align 4
  %100 = and i32 %99, 15
  %101 = load i32, i32* %8, align 4
  %102 = and i32 %101, 112
  %103 = or i32 %100, %102
  %104 = call i32 @b43_radio_write16(%struct.b43_wldev* %98, i32 67, i32 %103)
  br label %114

105:                                              ; preds = %92, %79
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %107 = load i32, i32* %13, align 4
  %108 = and i32 %107, 15
  %109 = call i32 @b43_radio_maskset(%struct.b43_wldev* %106, i32 67, i32 65520, i32 %108)
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %111 = load i32, i32* %8, align 4
  %112 = and i32 %111, 112
  %113 = call i32 @b43_radio_maskset(%struct.b43_wldev* %110, i32 82, i32 -113, i32 %112)
  br label %114

114:                                              ; preds = %105, %97
  %115 = load %struct.b43_phy*, %struct.b43_phy** %9, align 8
  %116 = call i64 @has_tx_magnification(%struct.b43_phy* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %120 = load i32, i32* %15, align 4
  %121 = load i32, i32* %14, align 4
  %122 = or i32 %120, %121
  %123 = call i32 @b43_radio_write16(%struct.b43_wldev* %119, i32 82, i32 %122)
  br label %129

124:                                              ; preds = %114
  %125 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %126 = load i32, i32* %14, align 4
  %127 = and i32 %126, 15
  %128 = call i32 @b43_radio_maskset(%struct.b43_wldev* %125, i32 82, i32 65520, i32 %127)
  br label %129

129:                                              ; preds = %124, %118
  %130 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %131 = call i32 @b43_lo_g_adjust(%struct.b43_wldev* %130)
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memmove(%struct.TYPE_2__*, %struct.b43_rfatt*, i32) #1

declare dso_local i64 @b43_debug(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @b43_gphy_set_baseband_attenuation(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_shm_write16(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43_radio_write16(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_radio_maskset(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i64 @has_tx_magnification(%struct.b43_phy*) #1

declare dso_local i32 @b43_lo_g_adjust(%struct.b43_wldev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
