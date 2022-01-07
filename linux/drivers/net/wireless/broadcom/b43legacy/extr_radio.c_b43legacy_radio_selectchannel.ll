; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_selectchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_selectchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_6__*, %struct.b43legacy_phy }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.b43legacy_phy = type { i32, i32 }

@B43legacy_RADIO_DEFAULT_CHANNEL_BG = common dso_local global i32 0, align 4
@B43legacy_MMIO_CHANNEL = common dso_local global i32 0, align 4
@B43legacy_SHM_SHARED = common dso_local global i32 0, align 4
@B43legacy_UCODEFLAGS_OFFSET = common dso_local global i32 0, align 4
@B43legacy_MMIO_CHANNEL_EXT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_radio_selectchannel(%struct.b43legacy_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43legacy_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.b43legacy_phy*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 1
  store %struct.b43legacy_phy* %9, %struct.b43legacy_phy** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %10, 255
  br i1 %11, label %12, label %21

12:                                               ; preds = %3
  %13 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %7, align 8
  %14 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %18 [
    i32 129, label %16
    i32 128, label %16
  ]

16:                                               ; preds = %12, %12
  %17 = load i32, i32* @B43legacy_RADIO_DEFAULT_CHANNEL_BG, align 4
  store i32 %17, i32* %5, align 4
  br label %20

18:                                               ; preds = %12
  %19 = call i32 @B43legacy_WARN_ON(i32 1)
  br label %20

20:                                               ; preds = %18, %16
  br label %21

21:                                               ; preds = %20, %3
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @b43legacy_synth_pu_workaround(%struct.b43legacy_wldev* %25, i32 %26)
  br label %28

28:                                               ; preds = %24, %21
  %29 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %30 = load i32, i32* @B43legacy_MMIO_CHANNEL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @channel2freq_bg(i32 %31)
  %33 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %29, i32 %30, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = icmp eq i32 %34, 14
  br i1 %35, label %36, label %74

36:                                               ; preds = %28
  %37 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %38 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %44, 5
  br i1 %45, label %46, label %56

46:                                               ; preds = %36
  %47 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %48 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %49 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %50 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %51 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %52 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %53 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %50, i32 %51, i32 %52)
  %54 = and i32 %53, -129
  %55 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %47, i32 %48, i32 %49, i32 %54)
  br label %66

56:                                               ; preds = %36
  %57 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %58 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %59 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %60 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %61 = load i32, i32* @B43legacy_SHM_SHARED, align 4
  %62 = load i32, i32* @B43legacy_UCODEFLAGS_OFFSET, align 4
  %63 = call i32 @b43legacy_shm_read32(%struct.b43legacy_wldev* %60, i32 %61, i32 %62)
  %64 = or i32 %63, 128
  %65 = call i32 @b43legacy_shm_write32(%struct.b43legacy_wldev* %57, i32 %58, i32 %59, i32 %64)
  br label %66

66:                                               ; preds = %56, %46
  %67 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %68 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %69 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %70 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %71 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %69, i32 %70)
  %72 = or i32 %71, 2048
  %73 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %67, i32 %68, i32 %72)
  br label %82

74:                                               ; preds = %28
  %75 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %76 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %77 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %4, align 8
  %78 = load i32, i32* @B43legacy_MMIO_CHANNEL_EXT, align 4
  %79 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %77, i32 %78)
  %80 = and i32 %79, 63423
  %81 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %75, i32 %76, i32 %80)
  br label %82

82:                                               ; preds = %74, %66
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %7, align 8
  %85 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = call i32 @msleep(i32 8)
  ret i32 0
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @b43legacy_synth_pu_workaround(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @channel2freq_bg(i32) #1

declare dso_local i32 @b43legacy_shm_write32(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacy_shm_read32(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
