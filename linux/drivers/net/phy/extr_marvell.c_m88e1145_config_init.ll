; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1145_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_marvell.c_m88e1145_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERFACE_MODE_RGMII_ID = common dso_local global i64 0, align 8
@PHY_INTERFACE_MODE_SGMII = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @m88e1145_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m88e1145_config_init(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %5 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %6 = call i32 @phy_write(%struct.phy_device* %5, i32 29, i32 27)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %68

11:                                               ; preds = %1
  %12 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %13 = call i32 @phy_write(%struct.phy_device* %12, i32 30, i32 16783)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %68

18:                                               ; preds = %11
  %19 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %20 = call i32 @phy_write(%struct.phy_device* %19, i32 29, i32 22)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %68

25:                                               ; preds = %18
  %26 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %27 = call i32 @phy_write(%struct.phy_device* %26, i32 30, i32 41690)
  store i32 %27, i32* %4, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* %4, align 4
  store i32 %31, i32* %2, align 4
  br label %68

32:                                               ; preds = %25
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @PHY_INTERFACE_MODE_RGMII_ID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = call i32 @m88e1145_config_init_rgmii(%struct.phy_device* %39)
  store i32 %40, i32* %4, align 4
  %41 = load i32, i32* %4, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  store i32 %44, i32* %2, align 4
  br label %68

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %48 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @PHY_INTERFACE_MODE_SGMII, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %54 = call i32 @m88e1145_config_init_sgmii(%struct.phy_device* %53)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %68

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59, %46
  %61 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %62 = call i32 @marvell_of_reg_init(%struct.phy_device* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %68

67:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %68

68:                                               ; preds = %67, %65, %57, %43, %30, %23, %16, %9
  %69 = load i32, i32* %2, align 4
  ret i32 %69
}

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @m88e1145_config_init_rgmii(%struct.phy_device*) #1

declare dso_local i32 @m88e1145_config_init_sgmii(%struct.phy_device*) #1

declare dso_local i32 @marvell_of_reg_init(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
