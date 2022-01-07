; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_phy_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_common.c_b43_phy_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

@B43_MAX_WRITES_IN_ROW = common dso_local global i64 0, align 8
@B43_MMIO_PHY_VER = common dso_local global i32 0, align 4
@B43_MMIO_PHY_CONTROL = common dso_local global i32 0, align 4
@B43_MMIO_PHY_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @b43_phy_write(%struct.b43_wldev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %8 = call i32 @assert_mac_suspended(%struct.b43_wldev* %7)
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i64 @b43_bus_host_is_pci(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %29

14:                                               ; preds = %3
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %16 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, 1
  store i64 %19, i64* %17, align 8
  %20 = load i64, i64* @B43_MAX_WRITES_IN_ROW, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %29

22:                                               ; preds = %14
  %23 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %24 = load i32, i32* @B43_MMIO_PHY_VER, align 4
  %25 = call i32 @b43_read16(%struct.b43_wldev* %23, i32 %24)
  %26 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %27 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i64 1, i64* %28, align 8
  br label %29

29:                                               ; preds = %22, %14, %3
  %30 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %31 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = bitcast {}** %34 to void (%struct.b43_wldev*, i32, i32)**
  %36 = load void (%struct.b43_wldev*, i32, i32)*, void (%struct.b43_wldev*, i32, i32)** %35, align 8
  %37 = icmp ne void (%struct.b43_wldev*, i32, i32)* %36, null
  br i1 %37, label %38, label %49

38:                                               ; preds = %29
  %39 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %40 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = bitcast {}** %43 to void (%struct.b43_wldev*, i32, i32)**
  %45 = load void (%struct.b43_wldev*, i32, i32)*, void (%struct.b43_wldev*, i32, i32)** %44, align 8
  %46 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  call void %45(%struct.b43_wldev* %46, i32 %47, i32 %48)
  br label %58

49:                                               ; preds = %29
  %50 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %51 = load i32, i32* @B43_MMIO_PHY_CONTROL, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @b43_write16f(%struct.b43_wldev* %50, i32 %51, i32 %52)
  %54 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %55 = load i32, i32* @B43_MMIO_PHY_DATA, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @b43_write16(%struct.b43_wldev* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %49, %38
  ret void
}

declare dso_local i32 @assert_mac_suspended(%struct.b43_wldev*) #1

declare dso_local i64 @b43_bus_host_is_pci(i32) #1

declare dso_local i32 @b43_read16(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_write16f(%struct.b43_wldev*, i32, i32) #1

declare dso_local i32 @b43_write16(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
