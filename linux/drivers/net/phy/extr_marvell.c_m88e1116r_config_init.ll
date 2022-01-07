; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1116r_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1116r_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@MII_MARVELL_COPPER_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @m88e1116r_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1116r_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = call i32 @genphy_soft_reset(%struct.phy_device* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %59

11:                                               ; preds = %1
  %12 = call i32 @msleep(i32 500)
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = load i32, i32* @MII_MARVELL_COPPER_PAGE, align 4
  %15 = call i32 @marvell_set_page(%struct.phy_device* %13, i32 %14)
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %59

20:                                               ; preds = %11
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %23 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @marvell_set_polarity(%struct.phy_device* %21, i32 %24)
  store i32 %25, i32* %4, align 4
  %26 = load i32, i32* %4, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %20
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %2, align 4
  br label %59

30:                                               ; preds = %20
  %31 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %32 = call i32 @marvell_set_downshift(%struct.phy_device* %31, i32 1, i32 8)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %59

37:                                               ; preds = %30
  %38 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %39 = call i64 @phy_interface_is_rgmii(%struct.phy_device* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %49

41:                                               ; preds = %37
  %42 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %43 = call i32 @m88e1121_config_aneg_rgmii_delays(%struct.phy_device* %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %4, align 4
  store i32 %47, i32* %2, align 4
  br label %59

48:                                               ; preds = %41
  br label %49

49:                                               ; preds = %48, %37
  %50 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %51 = call i32 @genphy_soft_reset(%struct.phy_device* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %49
  %55 = load i32, i32* %4, align 4
  store i32 %55, i32* %2, align 4
  br label %59

56:                                               ; preds = %49
  %57 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %58 = call i32 @marvell_config_init(%struct.phy_device* %57)
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %56, %54, %46, %35, %28, %18, %9
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i32 @genphy_soft_reset(%struct.phy_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @marvell_set_page(%struct.phy_device*, i32) #1

declare dso_local i32 @marvell_set_polarity(%struct.phy_device*, i32) #1

declare dso_local i32 @marvell_set_downshift(%struct.phy_device*, i32, i32) #1

declare dso_local i64 @phy_interface_is_rgmii(%struct.phy_device*) #1

declare dso_local i32 @m88e1121_config_aneg_rgmii_delays(%struct.phy_device*) #1

declare dso_local i32 @marvell_config_init(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
