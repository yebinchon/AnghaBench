; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_phy_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i64, %struct.net_device*, %struct.TYPE_4__ }
%struct.net_device = type { i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.phy_driver = type { i32 (%struct.phy_device.0*)* }
%struct.phy_device.0 = type opaque
%struct.ethtool_wolinfo = type { i64, i32 }

@ETHTOOL_GWOL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @phy_suspend(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.phy_driver*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_wolinfo, align 8
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.phy_driver* @to_phy_driver(i32 %12)
  store %struct.phy_driver* %13, %struct.phy_driver** %4, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 2
  %16 = load %struct.net_device*, %struct.net_device** %15, align 8
  store %struct.net_device* %16, %struct.net_device** %5, align 8
  %17 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %6, i32 0, i32 0
  store i64 0, i64* %17, align 8
  %18 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %6, i32 0, i32 1
  %19 = load i32, i32* @ETHTOOL_GWOL, align 4
  store i32 %19, i32* %18, align 8
  store i32 0, i32* %7, align 4
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = call i32 @phy_ethtool_get_wol(%struct.phy_device* %20, %struct.ethtool_wolinfo* %6)
  %22 = getelementptr inbounds %struct.ethtool_wolinfo, %struct.ethtool_wolinfo* %6, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %1
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = icmp ne %struct.net_device* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.net_device*, %struct.net_device** %5, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %28, %1
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %62

36:                                               ; preds = %28, %25
  %37 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %38 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %36
  %42 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %43 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %42, i32 0, i32 0
  %44 = load i32 (%struct.phy_device.0*)*, i32 (%struct.phy_device.0*)** %43, align 8
  %45 = icmp ne i32 (%struct.phy_device.0*)* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load %struct.phy_driver*, %struct.phy_driver** %4, align 8
  %48 = getelementptr inbounds %struct.phy_driver, %struct.phy_driver* %47, i32 0, i32 0
  %49 = load i32 (%struct.phy_device.0*)*, i32 (%struct.phy_device.0*)** %48, align 8
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = bitcast %struct.phy_device* %50 to %struct.phy_device.0*
  %52 = call i32 %49(%struct.phy_device.0* %51)
  store i32 %52, i32* %7, align 4
  br label %53

53:                                               ; preds = %46, %41, %36
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %62

58:                                               ; preds = %53
  %59 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %60 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %59, i32 0, i32 0
  store i32 1, i32* %60, align 8
  %61 = load i32, i32* %7, align 4
  store i32 %61, i32* %2, align 4
  br label %62

62:                                               ; preds = %58, %56, %33
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.phy_driver* @to_phy_driver(i32) #1

declare dso_local i32 @phy_ethtool_get_wol(%struct.phy_device*, %struct.ethtool_wolinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
