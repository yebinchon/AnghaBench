; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_read16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_radio.c_b43legacy_radio_read16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.b43legacy_phy }
%struct.b43legacy_phy = type { i32, i32 }

@B43legacy_MMIO_RADIO_CONTROL = common dso_local global i32 0, align 4
@B43legacy_MMIO_RADIO_DATA_LOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_radio_read16(%struct.b43legacy_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43legacy_phy*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %7 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %6, i32 0, i32 0
  store %struct.b43legacy_phy* %7, %struct.b43legacy_phy** %5, align 8
  %8 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %9 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  switch i32 %10, label %45 [
    i32 129, label %11
    i32 128, label %42
  ]

11:                                               ; preds = %2
  %12 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %13 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 8275
  br i1 %15, label %16, label %30

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 112
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = add nsw i32 %20, 128
  store i32 %21, i32* %4, align 4
  br label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 128
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* %4, align 4
  %27 = add nsw i32 %26, 112
  store i32 %27, i32* %4, align 4
  br label %28

28:                                               ; preds = %25, %22
  br label %29

29:                                               ; preds = %28, %19
  br label %41

30:                                               ; preds = %11
  %31 = load %struct.b43legacy_phy*, %struct.b43legacy_phy** %5, align 8
  %32 = getelementptr inbounds %struct.b43legacy_phy, %struct.b43legacy_phy* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 8272
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, 128
  store i32 %37, i32* %4, align 4
  br label %40

38:                                               ; preds = %30
  %39 = call i32 @B43legacy_WARN_ON(i32 1)
  br label %40

40:                                               ; preds = %38, %35
  br label %41

41:                                               ; preds = %40, %29
  br label %47

42:                                               ; preds = %2
  %43 = load i32, i32* %4, align 4
  %44 = or i32 %43, 128
  store i32 %44, i32* %4, align 4
  br label %47

45:                                               ; preds = %2
  %46 = call i32 @B43legacy_BUG_ON(i32 1)
  br label %47

47:                                               ; preds = %45, %42, %41
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %49 = load i32, i32* @B43legacy_MMIO_RADIO_CONTROL, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @b43legacy_write16(%struct.b43legacy_wldev* %48, i32 %49, i32 %50)
  %52 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %53 = load i32, i32* @B43legacy_MMIO_RADIO_DATA_LOW, align 4
  %54 = call i32 @b43legacy_read16(%struct.b43legacy_wldev* %52, i32 %53)
  ret i32 %54
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @B43legacy_BUG_ON(i32) #1

declare dso_local i32 @b43legacy_write16(%struct.b43legacy_wldev*, i32, i32) #1

declare dso_local i32 @b43legacy_read16(%struct.b43legacy_wldev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
