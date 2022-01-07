; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc82x4_config_autocross_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_vitesse.c_vsc82x4_config_autocross_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64, i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@MII_VSC82X4_EXT_PAGE_ACCESS = common dso_local global i32 0, align 4
@MII_VSC82X4_EXT_PAGE_18E = common dso_local global i32 0, align 4
@MII_VSC82X4_EXT_PAGE_17E = common dso_local global i32 0, align 4
@MII_VSC82X4_EXT_PAGE_16E = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @vsc82x4_config_autocross_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc82x4_config_autocross_enable(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @AUTONEG_ENABLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SPEED_100, align 8
  %15 = icmp sgt i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  store i32 0, i32* %2, align 4
  br label %54

17:                                               ; preds = %10
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = load i32, i32* @MII_VSC82X4_EXT_PAGE_ACCESS, align 4
  %20 = call i32 @phy_write(%struct.phy_device* %18, i32 %19, i32 21173)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp sge i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = load i32, i32* @MII_VSC82X4_EXT_PAGE_18E, align 4
  %26 = call i32 @phy_write(%struct.phy_device* %24, i32 %25, i32 18)
  store i32 %26, i32* %4, align 4
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i32, i32* %4, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = load i32, i32* @MII_VSC82X4_EXT_PAGE_17E, align 4
  %33 = call i32 @phy_write(%struct.phy_device* %31, i32 %32, i32 10243)
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %30, %27
  %35 = load i32, i32* %4, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = load i32, i32* @MII_VSC82X4_EXT_PAGE_16E, align 4
  %40 = call i32 @phy_write(%struct.phy_device* %38, i32 %39, i32 34810)
  store i32 %40, i32* %4, align 4
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %4, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %46 = load i32, i32* @MII_VSC82X4_EXT_PAGE_ACCESS, align 4
  %47 = call i32 @phy_write(%struct.phy_device* %45, i32 %46, i32 0)
  store i32 %47, i32* %4, align 4
  br label %52

48:                                               ; preds = %41
  %49 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %50 = load i32, i32* @MII_VSC82X4_EXT_PAGE_ACCESS, align 4
  %51 = call i32 @phy_write(%struct.phy_device* %49, i32 %50, i32 0)
  br label %52

52:                                               ; preds = %48, %44
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %16
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
