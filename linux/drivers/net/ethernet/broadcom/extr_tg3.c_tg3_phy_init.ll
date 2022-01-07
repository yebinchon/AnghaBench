; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_tg3.c_tg3_phy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tg3 = type { i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.phy_device = type { i32 }

@TG3_PHYFLG_IS_CONNECTED = common dso_local global i32 0, align 4
@tg3_adjust_link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not attach to PHY\0A\00", align 1
@TG3_PHYFLG_10_100_ONLY = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tg3*)* @tg3_phy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tg3_phy_init(%struct.tg3* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tg3*, align 8
  %4 = alloca %struct.phy_device*, align 8
  store %struct.tg3* %0, %struct.tg3** %3, align 8
  %5 = load %struct.tg3*, %struct.tg3** %3, align 8
  %6 = getelementptr inbounds %struct.tg3, %struct.tg3* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @TG3_PHYFLG_IS_CONNECTED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %86

12:                                               ; preds = %1
  %13 = load %struct.tg3*, %struct.tg3** %3, align 8
  %14 = call i32 @tg3_bmcr_reset(%struct.tg3* %13)
  %15 = load %struct.tg3*, %struct.tg3** %3, align 8
  %16 = getelementptr inbounds %struct.tg3, %struct.tg3* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.tg3*, %struct.tg3** %3, align 8
  %19 = getelementptr inbounds %struct.tg3, %struct.tg3* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call %struct.phy_device* @mdiobus_get_phy(i32 %17, i32 %20)
  store %struct.phy_device* %21, %struct.phy_device** %4, align 8
  %22 = load %struct.tg3*, %struct.tg3** %3, align 8
  %23 = getelementptr inbounds %struct.tg3, %struct.tg3* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %26 = call i32 @phydev_name(%struct.phy_device* %25)
  %27 = load i32, i32* @tg3_adjust_link, align 4
  %28 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %29 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.phy_device* @phy_connect(i32 %24, i32 %26, i32 %27, i32 %30)
  store %struct.phy_device* %31, %struct.phy_device** %4, align 8
  %32 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %33 = call i64 @IS_ERR(%struct.phy_device* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %12
  %36 = load %struct.tg3*, %struct.tg3** %3, align 8
  %37 = getelementptr inbounds %struct.tg3, %struct.tg3* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %42 = call i32 @PTR_ERR(%struct.phy_device* %41)
  store i32 %42, i32* %2, align 4
  br label %86

43:                                               ; preds = %12
  %44 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %45 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %67 [
    i32 130, label %47
    i32 128, label %47
    i32 129, label %61
  ]

47:                                               ; preds = %43, %43
  %48 = load %struct.tg3*, %struct.tg3** %3, align 8
  %49 = getelementptr inbounds %struct.tg3, %struct.tg3* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @TG3_PHYFLG_10_100_ONLY, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %60, label %54

54:                                               ; preds = %47
  %55 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %56 = load i32, i32* @SPEED_1000, align 4
  %57 = call i32 @phy_set_max_speed(%struct.phy_device* %55, i32 %56)
  %58 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %59 = call i32 @phy_support_asym_pause(%struct.phy_device* %58)
  br label %78

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %43, %60
  %62 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %63 = load i32, i32* @SPEED_100, align 4
  %64 = call i32 @phy_set_max_speed(%struct.phy_device* %62, i32 %63)
  %65 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %66 = call i32 @phy_support_asym_pause(%struct.phy_device* %65)
  br label %78

67:                                               ; preds = %43
  %68 = load %struct.tg3*, %struct.tg3** %3, align 8
  %69 = getelementptr inbounds %struct.tg3, %struct.tg3* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.tg3*, %struct.tg3** %3, align 8
  %72 = getelementptr inbounds %struct.tg3, %struct.tg3* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call %struct.phy_device* @mdiobus_get_phy(i32 %70, i32 %73)
  %75 = call i32 @phy_disconnect(%struct.phy_device* %74)
  %76 = load i32, i32* @EINVAL, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %2, align 4
  br label %86

78:                                               ; preds = %61, %54
  %79 = load i32, i32* @TG3_PHYFLG_IS_CONNECTED, align 4
  %80 = load %struct.tg3*, %struct.tg3** %3, align 8
  %81 = getelementptr inbounds %struct.tg3, %struct.tg3* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  %84 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %85 = call i32 @phy_attached_info(%struct.phy_device* %84)
  store i32 0, i32* %2, align 4
  br label %86

86:                                               ; preds = %78, %67, %35, %11
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @tg3_bmcr_reset(%struct.tg3*) #1

declare dso_local %struct.phy_device* @mdiobus_get_phy(i32, i32) #1

declare dso_local %struct.phy_device* @phy_connect(i32, i32, i32, i32) #1

declare dso_local i32 @phydev_name(%struct.phy_device*) #1

declare dso_local i64 @IS_ERR(%struct.phy_device*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @PTR_ERR(%struct.phy_device*) #1

declare dso_local i32 @phy_set_max_speed(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_support_asym_pause(%struct.phy_device*) #1

declare dso_local i32 @phy_disconnect(%struct.phy_device*) #1

declare dso_local i32 @phy_attached_info(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
