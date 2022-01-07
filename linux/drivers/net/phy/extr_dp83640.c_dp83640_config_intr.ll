; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_config_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_dp83640.c_dp83640_config_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i64 }

@PHY_INTERRUPT_ENABLED = common dso_local global i64 0, align 8
@MII_DP83640_MISR = common dso_local global i32 0, align 4
@MII_DP83640_MISR_ANC_INT_EN = common dso_local global i32 0, align 4
@MII_DP83640_MISR_DUP_INT_EN = common dso_local global i32 0, align 4
@MII_DP83640_MISR_SPD_INT_EN = common dso_local global i32 0, align 4
@MII_DP83640_MISR_LINK_INT_EN = common dso_local global i32 0, align 4
@MII_DP83640_MICR = common dso_local global i32 0, align 4
@MII_DP83640_MICR_OE = common dso_local global i32 0, align 4
@MII_DP83640_MICR_IE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @dp83640_config_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp83640_config_intr(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %7 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %8 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @PHY_INTERRUPT_ENABLED, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %56

12:                                               ; preds = %1
  %13 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %14 = load i32, i32* @MII_DP83640_MISR, align 4
  %15 = call i32 @phy_read(%struct.phy_device* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i32, i32* %5, align 4
  store i32 %19, i32* %2, align 4
  br label %102

20:                                               ; preds = %12
  %21 = load i32, i32* @MII_DP83640_MISR_ANC_INT_EN, align 4
  %22 = load i32, i32* @MII_DP83640_MISR_DUP_INT_EN, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MII_DP83640_MISR_SPD_INT_EN, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @MII_DP83640_MISR_LINK_INT_EN, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %31 = load i32, i32* @MII_DP83640_MISR, align 4
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @phy_write(%struct.phy_device* %30, i32 %31, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %20
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %102

38:                                               ; preds = %20
  %39 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %40 = load i32, i32* @MII_DP83640_MICR, align 4
  %41 = call i32 @phy_read(%struct.phy_device* %39, i32 %40)
  store i32 %41, i32* %4, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %38
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %102

46:                                               ; preds = %38
  %47 = load i32, i32* @MII_DP83640_MICR_OE, align 4
  %48 = load i32, i32* @MII_DP83640_MICR_IE, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* %4, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %4, align 4
  %52 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %53 = load i32, i32* @MII_DP83640_MICR, align 4
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @phy_write(%struct.phy_device* %52, i32 %53, i32 %54)
  store i32 %55, i32* %2, align 4
  br label %102

56:                                               ; preds = %1
  %57 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %58 = load i32, i32* @MII_DP83640_MICR, align 4
  %59 = call i32 @phy_read(%struct.phy_device* %57, i32 %58)
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  store i32 %63, i32* %2, align 4
  br label %102

64:                                               ; preds = %56
  %65 = load i32, i32* @MII_DP83640_MICR_OE, align 4
  %66 = load i32, i32* @MII_DP83640_MICR_IE, align 4
  %67 = or i32 %65, %66
  %68 = xor i32 %67, -1
  %69 = load i32, i32* %4, align 4
  %70 = and i32 %69, %68
  store i32 %70, i32* %4, align 4
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = load i32, i32* @MII_DP83640_MICR, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 @phy_write(%struct.phy_device* %71, i32 %72, i32 %73)
  store i32 %74, i32* %6, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %2, align 4
  br label %102

79:                                               ; preds = %64
  %80 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %81 = load i32, i32* @MII_DP83640_MISR, align 4
  %82 = call i32 @phy_read(%struct.phy_device* %80, i32 %81)
  store i32 %82, i32* %5, align 4
  %83 = load i32, i32* %5, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %102

87:                                               ; preds = %79
  %88 = load i32, i32* @MII_DP83640_MISR_ANC_INT_EN, align 4
  %89 = load i32, i32* @MII_DP83640_MISR_DUP_INT_EN, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @MII_DP83640_MISR_SPD_INT_EN, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @MII_DP83640_MISR_LINK_INT_EN, align 4
  %94 = or i32 %92, %93
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %5, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %5, align 4
  %98 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %99 = load i32, i32* @MII_DP83640_MISR, align 4
  %100 = load i32, i32* %5, align 4
  %101 = call i32 @phy_write(%struct.phy_device* %98, i32 %99, i32 %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %87, %85, %77, %62, %46, %44, %36, %18
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
