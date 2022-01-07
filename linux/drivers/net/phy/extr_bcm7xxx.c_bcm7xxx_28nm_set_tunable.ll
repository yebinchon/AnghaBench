; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_set_tunable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_bcm7xxx.c_bcm7xxx_28nm_set_tunable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }
%struct.ethtool_tunable = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@DOWNSHIFT_DEV_DISABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, %struct.ethtool_tunable*, i8*)* @bcm7xxx_28nm_set_tunable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm7xxx_28nm_set_tunable(%struct.phy_device* %0, %struct.ethtool_tunable* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca %struct.ethtool_tunable*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store %struct.ethtool_tunable* %1, %struct.ethtool_tunable** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to i64*
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %8, align 8
  %13 = load %struct.ethtool_tunable*, %struct.ethtool_tunable** %6, align 8
  %14 = getelementptr inbounds %struct.ethtool_tunable, %struct.ethtool_tunable* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %20 [
    i32 128, label %16
  ]

16:                                               ; preds = %3
  %17 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %18 = load i64, i64* %8, align 8
  %19 = call i32 @bcm_phy_downshift_set(%struct.phy_device* %17, i64 %18)
  store i32 %19, i32* %9, align 4
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* @EOPNOTSUPP, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %42

23:                                               ; preds = %16
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %23
  %27 = load i32, i32* %9, align 4
  store i32 %27, i32* %4, align 4
  br label %42

28:                                               ; preds = %23
  %29 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @DOWNSHIFT_DEV_DISABLE, align 8
  %32 = icmp eq i64 %30, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @bcm_phy_set_eee(%struct.phy_device* %29, i32 %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %28
  %38 = load i32, i32* %9, align 4
  store i32 %38, i32* %4, align 4
  br label %42

39:                                               ; preds = %28
  %40 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %41 = call i32 @genphy_restart_aneg(%struct.phy_device* %40)
  store i32 %41, i32* %4, align 4
  br label %42

42:                                               ; preds = %39, %37, %26, %20
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @bcm_phy_downshift_set(%struct.phy_device*, i64) #1

declare dso_local i32 @bcm_phy_set_eee(%struct.phy_device*, i32) #1

declare dso_local i32 @genphy_restart_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
