; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_wireless_core_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_wireless_core_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_3__*, %struct.TYPE_4__*, %struct.b43legacy_phy }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32* }
%struct.b43legacy_phy = type { i32*, i32*, i64 }

@B43legacy_STAT_INITIALIZED = common dso_local global i64 0, align 8
@B43legacy_STAT_UNINIT = common dso_local global i32 0, align 4
@B43legacy_MMIO_MACCTL = common dso_local global i32 0, align 4
@B43legacy_MACCTL_PSM_RUN = common dso_local global i32 0, align 4
@B43legacy_MACCTL_PSM_JMP0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_wireless_core_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_wireless_core_exit(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  %3 = alloca %struct.b43legacy_phy*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %5 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %6 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %5, i32 0, i32 2
  store %struct.b43legacy_phy* %6, %struct.b43legacy_phy** %3, align 8
  %7 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %8 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %7)
  %9 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %10 = icmp sgt i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @B43legacy_WARN_ON(i32 %11)
  %13 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %14 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %13)
  %15 = load i64, i64* @B43legacy_STAT_INITIALIZED, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %96

18:                                               ; preds = %1
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %20 = load i32, i32* @B43legacy_STAT_UNINIT, align 4
  %21 = call i32 @b43legacy_set_status(%struct.b43legacy_wldev* %19, i32 %20)
  %22 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %23 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %24 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %22, i32 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @B43legacy_MACCTL_PSM_RUN, align 4
  %26 = xor i32 %25, -1
  %27 = load i32, i32* %4, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* @B43legacy_MACCTL_PSM_JMP0, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = load i32, i32* @B43legacy_MMIO_MACCTL, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @b43legacy_write32(%struct.b43legacy_wldev* %32, i32 %33, i32 %34)
  %36 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %37 = call i32 @b43legacy_leds_exit(%struct.b43legacy_wldev* %36)
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %39 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 @b43legacy_rng_exit(%struct.TYPE_4__* %40)
  %42 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %43 = call i32 @b43legacy_pio_free(%struct.b43legacy_wldev* %42)
  %44 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %45 = call i32 @b43legacy_dma_free(%struct.b43legacy_wldev* %44)
  %46 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %47 = call i32 @b43legacy_chip_exit(%struct.b43legacy_wldev* %46)
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %49 = call i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev* %48, i32 1)
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %51 = call i32 @b43legacy_switch_analog(%struct.b43legacy_wldev* %50, i32 0)
  %52 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %53 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %18
  %57 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %58 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @kfree(i32* %59)
  br label %61

61:                                               ; preds = %56, %18
  %62 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %63 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @kfree(i32* %64)
  %66 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %3, align 8
  %67 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %69 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %68, i32 0, i32 1
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %85

74:                                               ; preds = %61
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %76 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @dev_kfree_skb_any(i32* %79)
  %81 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %82 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store i32* null, i32** %84, align 8
  br label %85

85:                                               ; preds = %74, %61
  %86 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %87 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = call i32 @ssb_device_disable(%struct.TYPE_3__* %88, i32 0)
  %90 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %91 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @ssb_bus_may_powerdown(i32 %94)
  br label %96

96:                                               ; preds = %85, %17
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_set_status(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_leds_exit(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_rng_exit(%struct.TYPE_4__*) #1

declare dso_local i32 @b43legacy_pio_free(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_dma_free(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_chip_exit(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_radio_turn_off(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_switch_analog(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_kfree_skb_any(i32*) #1

declare dso_local i32 @ssb_device_disable(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @ssb_bus_may_powerdown(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
