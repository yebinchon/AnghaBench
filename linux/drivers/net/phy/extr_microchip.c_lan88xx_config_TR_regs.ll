; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_config_TR_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_microchip.c_lan88xx_config_TR_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x0F82]\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x168C]\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x17A2]\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x16A0]\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x16A6]\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x16A4]\0A\00", align 1
@.str.6 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x16A8]\0A\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x0FE8]\0A\00", align 1
@.str.8 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x0FFC]\0A\00", align 1
@.str.9 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x0FEA]\0A\00", align 1
@.str.10 = private unnamed_addr constant [32 x i8] c"Failed to Set Register[0x1686]\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phy_device*)* @lan88xx_config_TR_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan88xx_config_TR_regs(%struct.phy_device* %0) #0 {
  %2 = alloca %struct.phy_device*, align 8
  %3 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %2, align 8
  %4 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %5 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %4, i32 3970, i32 1224714)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %10 = call i32 @phydev_warn(%struct.phy_device* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %11

11:                                               ; preds = %8, %1
  %12 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %13 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %12, i32 5772, i32 13812847)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %11
  %17 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %18 = call i32 @phydev_warn(%struct.phy_device* %17, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %11
  %20 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %21 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %20, i32 6050, i32 1568)
  store i32 %21, i32* %3, align 4
  %22 = load i32, i32* %3, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %26 = call i32 @phydev_warn(%struct.phy_device* %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %19
  %28 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %29 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %28, i32 5792, i32 15663069)
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %34 = call i32 @phydev_warn(%struct.phy_device* %33, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %27
  %36 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %37 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %36, i32 5798, i32 463944)
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* %3, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %42 = call i32 @phydev_warn(%struct.phy_device* %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %45 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %44, i32 5796, i32 1250095)
  store i32 %45, i32* %3, align 4
  %46 = load i32, i32* %3, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %43
  %49 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %50 = call i32 @phydev_warn(%struct.phy_device* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %51

51:                                               ; preds = %48, %43
  %52 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %53 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %52, i32 5800, i32 0)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %58 = call i32 @phydev_warn(%struct.phy_device* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.6, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %61 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %60, i32 4072, i32 9547884)
  store i32 %61, i32* %3, align 4
  %62 = load i32, i32* %3, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %59
  %65 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %66 = call i32 @phydev_warn(%struct.phy_device* %65, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.7, i64 0, i64 0))
  br label %67

67:                                               ; preds = %64, %59
  %68 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %69 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %68, i32 4092, i32 12623912)
  store i32 %69, i32* %3, align 4
  %70 = load i32, i32* %3, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %74 = call i32 @phydev_warn(%struct.phy_device* %73, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.8, i64 0, i64 0))
  br label %75

75:                                               ; preds = %72, %67
  %76 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %77 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %76, i32 4074, i32 267776)
  store i32 %77, i32* %3, align 4
  %78 = load i32, i32* %3, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %75
  %81 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %82 = call i32 @phydev_warn(%struct.phy_device* %81, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.9, i64 0, i64 0))
  br label %83

83:                                               ; preds = %80, %75
  %84 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %85 = call i32 @lan88xx_TR_reg_set(%struct.phy_device* %84, i32 5766, i32 4)
  store i32 %85, i32* %3, align 4
  %86 = load i32, i32* %3, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %83
  %89 = load %struct.phy_device*, %struct.phy_device** %2, align 8
  %90 = call i32 @phydev_warn(%struct.phy_device* %89, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.10, i64 0, i64 0))
  br label %91

91:                                               ; preds = %88, %83
  ret void
}

declare dso_local i32 @lan88xx_TR_reg_set(%struct.phy_device*, i32, i32) #1

declare dso_local i32 @phydev_warn(%struct.phy_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
