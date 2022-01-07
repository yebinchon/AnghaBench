; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_rfkill.c_b43legacy_is_hw_radio_enabled.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_rfkill.c_b43legacy_is_hw_radio_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@B43legacy_MMIO_RADIO_HWENABLED_HI = common dso_local global i32 0, align 4
@B43legacy_MMIO_RADIO_HWENABLED_HI_MASK = common dso_local global i32 0, align 4
@B43legacy_STAT_STARTED = common dso_local global i64 0, align 8
@B43legacy_MMIO_RADIO_HWENABLED_LO = common dso_local global i32 0, align 4
@B43legacy_MMIO_RADIO_HWENABLED_LO_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_is_hw_radio_enabled(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %4 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %5 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 3
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %13 = load i32, i32* @B43legacy_MMIO_RADIO_HWENABLED_HI, align 4
  %14 = call i32 @b43legacy_read32(%struct.b43legacy_wldev* %12, i32 %13)
  %15 = load i32, i32* @B43legacy_MMIO_RADIO_HWENABLED_HI_MASK, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %36

19:                                               ; preds = %11
  br label %35

20:                                               ; preds = %1
  %21 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %22 = call i64 @b43legacy_status(%struct.b43legacy_wldev* %21)
  %23 = load i64, i64* @B43legacy_STAT_STARTED, align 8
  %24 = icmp slt i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20
  store i32 1, i32* %2, align 4
  br label %36

26:                                               ; preds = %20
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %28 = load i32, i32* @B43legacy_MMIO_RADIO_HWENABLED_LO, align 4
  %29 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %27, i32 %28)
  %30 = load i32, i32* @B43legacy_MMIO_RADIO_HWENABLED_LO_MASK, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i32 1, i32* %2, align 4
  br label %36

34:                                               ; preds = %26
  br label %35

35:                                               ; preds = %34, %19
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %33, %25, %18
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @b43legacy_read32(%struct.b43legacy_wldev*, i32) #1

declare dso_local i64 @b43legacy_status(%struct.b43legacy_wldev*) #1

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
