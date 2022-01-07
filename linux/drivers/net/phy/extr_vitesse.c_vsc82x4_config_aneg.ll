; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc82x4_config_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc82x4_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc82x4_config_aneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc82x4_config_aneg(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AUTONEG_ENABLE, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPEED_100, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %10
  %17 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %18 = call i32 @genphy_setup_forced(%struct.phy_device* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %16
  %22 = load i32, i32* %4, align 4
  store i32 %22, i32* %2, align 4
  br label %29

23:                                               ; preds = %16
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = call i32 @vsc82x4_config_autocross_enable(%struct.phy_device* %24)
  store i32 %25, i32* %2, align 4
  br label %29

26:                                               ; preds = %10, %1
  %27 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %28 = call i32 @genphy_config_aneg(%struct.phy_device* %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %26, %23, %21
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @genphy_setup_forced(%struct.phy_device*) #1

declare dso_local i32 @vsc82x4_config_autocross_enable(%struct.phy_device*) #1

declare dso_local i32 @genphy_config_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
