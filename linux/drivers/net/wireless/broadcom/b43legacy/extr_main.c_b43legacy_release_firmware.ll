; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_release_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_main.c_b43legacy_release_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_wldev*)* @b43legacy_release_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43legacy_release_firmware(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca %struct.b43legacy_wldev*, align 8
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %2, align 8
  %3 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %4 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = call i32 @release_firmware(i32* %6)
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  store i32* null, i32** %10, align 8
  %11 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %12 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @release_firmware(i32* %14)
  %16 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %17 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  store i32* null, i32** %18, align 8
  %19 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %20 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @release_firmware(i32* %22)
  %24 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %25 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* null, i32** %26, align 8
  %27 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %28 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i32 @release_firmware(i32* %30)
  %32 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %2, align 8
  %33 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  store i32* null, i32** %34, align 8
  ret void
}

declare dso_local i32 @release_firmware(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
