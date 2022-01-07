; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_config_advert.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_config_advert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32 }

@MII_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISE_1000HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @genphy_config_advert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @genphy_config_advert(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %6, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %9 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @linkmode_and(i32 %10, i32 %13, i32 %16)
  %18 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %19 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @linkmode_adv_to_mii_adv_t(i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = load i32, i32* @MII_ADVERTISE, align 4
  %24 = load i32, i32* @ADVERTISE_ALL, align 4
  %25 = load i32, i32* @ADVERTISE_100BASE4, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @phy_modify_changed(%struct.phy_device* %22, i32 %23, i32 %30, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %78

37:                                               ; preds = %1
  %38 = load i32, i32* %4, align 4
  %39 = icmp sgt i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  store i32 1, i32* %6, align 4
  br label %41

41:                                               ; preds = %40, %37
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = load i32, i32* @MII_BMSR, align 4
  %44 = call i32 @phy_read(%struct.phy_device* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %41
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %78

49:                                               ; preds = %41
  %50 = load i32, i32* %5, align 4
  %51 = load i32, i32* @BMSR_ESTATEN, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %6, align 4
  store i32 %55, i32* %2, align 4
  br label %78

56:                                               ; preds = %49
  %57 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %58 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @linkmode_adv_to_mii_ctrl1000_t(i32 %59)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = load i32, i32* @MII_CTRL1000, align 4
  %63 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %64 = load i32, i32* @ADVERTISE_1000HALF, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @phy_modify_changed(%struct.phy_device* %61, i32 %62, i32 %65, i32 %66)
  store i32 %67, i32* %4, align 4
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %56
  %71 = load i32, i32* %4, align 4
  store i32 %71, i32* %2, align 4
  br label %78

72:                                               ; preds = %56
  %73 = load i32, i32* %4, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store i32 1, i32* %6, align 4
  br label %76

76:                                               ; preds = %75, %72
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %2, align 4
  br label %78

78:                                               ; preds = %76, %70, %54, %47, %35
  %79 = load i32, i32* %2, align 4
  ret i32 %79
}

declare dso_local i32 @linkmode_and(i32, i32, i32) #1

declare dso_local i32 @linkmode_adv_to_mii_adv_t(i32) #1

declare dso_local i32 @phy_modify_changed(%struct.phy_device*, i32, i32, i32) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @linkmode_adv_to_mii_ctrl1000_t(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
