; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c___genphy_config_aneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c___genphy_config_aneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ISOLATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__genphy_config_aneg(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %9 = call i64 @genphy_config_eee_advert(%struct.phy_device* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 1, i32* %5, align 4
  br label %12

12:                                               ; preds = %11, %2
  %13 = load i64, i64* @AUTONEG_ENABLE, align 8
  %14 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %15 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %20 = call i32 @genphy_setup_forced(%struct.phy_device* %19)
  store i32 %20, i32* %3, align 4
  br label %65

21:                                               ; preds = %12
  %22 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %23 = call i32 @genphy_config_advert(%struct.phy_device* %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %5, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %56, label %36

36:                                               ; preds = %33
  %37 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %38 = load i32, i32* @MII_BMCR, align 4
  %39 = call i32 @phy_read(%struct.phy_device* %37, i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  store i32 %43, i32* %3, align 4
  br label %65

44:                                               ; preds = %36
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @BMCR_ANENABLE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @BMCR_ISOLATE, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %44
  store i32 1, i32* %5, align 4
  br label %55

55:                                               ; preds = %54, %49
  br label %56

56:                                               ; preds = %55, %33
  %57 = load i32, i32* %5, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %61 = call i32 @genphy_restart_aneg(%struct.phy_device* %60)
  br label %63

62:                                               ; preds = %56
  br label %63

63:                                               ; preds = %62, %59
  %64 = phi i32 [ %61, %59 ], [ 0, %62 ]
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %63, %42, %26, %18
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i64 @genphy_config_eee_advert(%struct.phy_device*) #1

declare dso_local i32 @genphy_setup_forced(%struct.phy_device*) #1

declare dso_local i32 @genphy_config_advert(%struct.phy_device*) #1

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @genphy_restart_aneg(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
