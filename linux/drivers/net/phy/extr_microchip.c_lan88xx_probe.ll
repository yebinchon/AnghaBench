; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { %struct.lan88xx_priv*, %struct.TYPE_2__ }
%struct.lan88xx_priv = type { i8*, i8*, i64 }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"microchip,led-modes\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@LAN78XX_FORCE_LED_OFF = common dso_local global i32 0, align 4
@LAN78XX_PHY_LED_MODE_SELECT = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@LAN88XX_MMD3_CHIP_ID = common dso_local global i32 0, align 4
@LAN88XX_MMD3_CHIP_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @lan88xx_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan88xx_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.lan88xx_priv*, align 8
  %6 = alloca [4 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %10 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %11 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.device* %12, %struct.device** %4, align 8
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.lan88xx_priv* @devm_kzalloc(%struct.device* %13, i32 24, i32 %14)
  store %struct.lan88xx_priv* %15, %struct.lan88xx_priv** %5, align 8
  %16 = load %struct.lan88xx_priv*, %struct.lan88xx_priv** %5, align 8
  %17 = icmp ne %struct.lan88xx_priv* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %104

21:                                               ; preds = %1
  %22 = load %struct.lan88xx_priv*, %struct.lan88xx_priv** %5, align 8
  %23 = getelementptr inbounds %struct.lan88xx_priv, %struct.lan88xx_priv* %22, i32 0, i32 2
  store i64 0, i64* %23, align 8
  %24 = load %struct.device*, %struct.device** %4, align 8
  %25 = getelementptr inbounds %struct.device, %struct.device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %29 = call i32 @ARRAY_SIZE(i32* %28)
  %30 = call i32 @of_property_read_variable_u32_array(i32 %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32* %27, i32 0, i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp sge i32 %31, 0
  br i1 %32, label %33, label %81

33:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %57, %33
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %60

38:                                               ; preds = %34
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = icmp sgt i32 %42, 15
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %104

47:                                               ; preds = %38
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %9, align 4
  %53 = mul nsw i32 %52, 4
  %54 = shl i32 %51, %53
  %55 = load i32, i32* %8, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %8, align 4
  br label %57

57:                                               ; preds = %47
  %58 = load i32, i32* %9, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %9, align 4
  br label %34

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %73, %60
  %62 = load i32, i32* %9, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %64 = call i32 @ARRAY_SIZE(i32* %63)
  %65 = icmp slt i32 %62, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load i32, i32* @LAN78XX_FORCE_LED_OFF, align 4
  %68 = load i32, i32* %9, align 4
  %69 = mul nsw i32 %68, 4
  %70 = shl i32 %67, %69
  %71 = load i32, i32* %8, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %8, align 4
  br label %73

73:                                               ; preds = %66
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %61

76:                                               ; preds = %61
  %77 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %78 = load i32, i32* @LAN78XX_PHY_LED_MODE_SELECT, align 4
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @phy_write(%struct.phy_device* %77, i32 %78, i32 %79)
  br label %90

81:                                               ; preds = %21
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @EOVERFLOW, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp eq i32 %82, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %2, align 4
  br label %104

89:                                               ; preds = %81
  br label %90

90:                                               ; preds = %89, %76
  %91 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %92 = load i32, i32* @LAN88XX_MMD3_CHIP_ID, align 4
  %93 = call i8* @phy_read_mmd(%struct.phy_device* %91, i32 3, i32 %92)
  %94 = load %struct.lan88xx_priv*, %struct.lan88xx_priv** %5, align 8
  %95 = getelementptr inbounds %struct.lan88xx_priv, %struct.lan88xx_priv* %94, i32 0, i32 1
  store i8* %93, i8** %95, align 8
  %96 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %97 = load i32, i32* @LAN88XX_MMD3_CHIP_REV, align 4
  %98 = call i8* @phy_read_mmd(%struct.phy_device* %96, i32 3, i32 %97)
  %99 = load %struct.lan88xx_priv*, %struct.lan88xx_priv** %5, align 8
  %100 = getelementptr inbounds %struct.lan88xx_priv, %struct.lan88xx_priv* %99, i32 0, i32 0
  store i8* %98, i8** %100, align 8
  %101 = load %struct.lan88xx_priv*, %struct.lan88xx_priv** %5, align 8
  %102 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %103 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %102, i32 0, i32 0
  store %struct.lan88xx_priv* %101, %struct.lan88xx_priv** %103, align 8
  store i32 0, i32* %2, align 4
  br label %104

104:                                              ; preds = %90, %86, %44, %18
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.lan88xx_priv* @devm_kzalloc(%struct.device*, i32, i32) #1

declare dso_local i32 @of_property_read_variable_u32_array(i32, i8*, i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @phy_write(%struct.phy_device*, i32, i32) #1

declare dso_local i8* @phy_read_mmd(%struct.phy_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
