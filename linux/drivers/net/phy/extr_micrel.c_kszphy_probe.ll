; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_micrel.c_kszphy_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, %struct.TYPE_6__, %struct.kszphy_priv*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.kszphy_priv = type { i32, i32, i32, %struct.kszphy_type* }
%struct.kszphy_type = type { i32, i64 }
%struct.TYPE_5__ = type { %struct.kszphy_type* }
%struct.clk = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"micrel,led-mode\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"invalid led mode: 0x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"rmii-ref\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"micrel,rmii-reference-clock-select-25-mhz\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Clock rate out of range: %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MICREL_PHY_50MHZ_CLK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*)* @kszphy_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kszphy_probe(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca %struct.kszphy_type*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.kszphy_priv*, align 8
  %7 = alloca %struct.clk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  %11 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %12 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %11, i32 0, i32 3
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load %struct.kszphy_type*, %struct.kszphy_type** %14, align 8
  store %struct.kszphy_type* %15, %struct.kszphy_type** %4, align 8
  %16 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %17 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load %struct.device_node*, %struct.device_node** %19, align 8
  store %struct.device_node* %20, %struct.device_node** %5, align 8
  %21 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %22 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call %struct.kszphy_priv* @devm_kzalloc(%struct.TYPE_7__* %23, i32 24, i32 %24)
  store %struct.kszphy_priv* %25, %struct.kszphy_priv** %6, align 8
  %26 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %27 = icmp ne %struct.kszphy_priv* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %131

31:                                               ; preds = %1
  %32 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %33 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %34 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %33, i32 0, i32 2
  store %struct.kszphy_priv* %32, %struct.kszphy_priv** %34, align 8
  %35 = load %struct.kszphy_type*, %struct.kszphy_type** %4, align 8
  %36 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %37 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %36, i32 0, i32 3
  store %struct.kszphy_type* %35, %struct.kszphy_type** %37, align 8
  %38 = load %struct.kszphy_type*, %struct.kszphy_type** %4, align 8
  %39 = getelementptr inbounds %struct.kszphy_type, %struct.kszphy_type* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %67

42:                                               ; preds = %31
  %43 = load %struct.device_node*, %struct.device_node** %5, align 8
  %44 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %45 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %44, i32 0, i32 0
  %46 = call i32 @of_property_read_u32(%struct.device_node* %43, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %45)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %42
  %50 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %51 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %50, i32 0, i32 0
  store i32 -1, i32* %51, align 8
  br label %52

52:                                               ; preds = %49, %42
  %53 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %54 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 3
  br i1 %56, label %57, label %66

57:                                               ; preds = %52
  %58 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %59 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %60 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = sext i32 %61 to i64
  %63 = call i32 @phydev_err(%struct.phy_device* %58, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i64 %62)
  %64 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %65 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %64, i32 0, i32 0
  store i32 -1, i32* %65, align 8
  br label %66

66:                                               ; preds = %57, %52
  br label %70

67:                                               ; preds = %31
  %68 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %69 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %68, i32 0, i32 0
  store i32 -1, i32* %69, align 8
  br label %70

70:                                               ; preds = %67, %66
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = call %struct.clk* @devm_clk_get(%struct.TYPE_7__* %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0))
  store %struct.clk* %74, %struct.clk** %7, align 8
  %75 = load %struct.clk*, %struct.clk** %7, align 8
  %76 = call i32 @IS_ERR_OR_NULL(%struct.clk* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %118, label %78

78:                                               ; preds = %70
  %79 = load %struct.clk*, %struct.clk** %7, align 8
  %80 = call i64 @clk_get_rate(%struct.clk* %79)
  store i64 %80, i64* %9, align 8
  %81 = load %struct.kszphy_type*, %struct.kszphy_type** %4, align 8
  %82 = getelementptr inbounds %struct.kszphy_type, %struct.kszphy_type* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %85 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load %struct.device_node*, %struct.device_node** %5, align 8
  %87 = call i32 @of_property_read_bool(%struct.device_node* %86, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  store i32 %87, i32* %10, align 4
  %88 = load i64, i64* %9, align 8
  %89 = icmp ugt i64 %88, 24500000
  br i1 %89, label %90, label %97

90:                                               ; preds = %78
  %91 = load i64, i64* %9, align 8
  %92 = icmp ult i64 %91, 25500000
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = load i32, i32* %10, align 4
  %95 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %96 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %95, i32 0, i32 2
  store i32 %94, i32* %96, align 8
  br label %117

97:                                               ; preds = %90, %78
  %98 = load i64, i64* %9, align 8
  %99 = icmp ugt i64 %98, 49500000
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i64, i64* %9, align 8
  %102 = icmp ult i64 %101, 50500000
  br i1 %102, label %103, label %110

103:                                              ; preds = %100
  %104 = load i32, i32* %10, align 4
  %105 = icmp ne i32 %104, 0
  %106 = xor i1 %105, true
  %107 = zext i1 %106 to i32
  %108 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %109 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %108, i32 0, i32 2
  store i32 %107, i32* %109, align 8
  br label %116

110:                                              ; preds = %100, %97
  %111 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %112 = load i64, i64* %9, align 8
  %113 = call i32 @phydev_err(%struct.phy_device* %111, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i64 %112)
  %114 = load i32, i32* @EINVAL, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %131

116:                                              ; preds = %103
  br label %117

117:                                              ; preds = %116, %93
  br label %118

118:                                              ; preds = %117, %70
  %119 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %120 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load i32, i32* @MICREL_PHY_50MHZ_CLK, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %118
  %126 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %127 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %126, i32 0, i32 1
  store i32 1, i32* %127, align 4
  %128 = load %struct.kszphy_priv*, %struct.kszphy_priv** %6, align 8
  %129 = getelementptr inbounds %struct.kszphy_priv, %struct.kszphy_priv* %128, i32 0, i32 2
  store i32 1, i32* %129, align 8
  br label %130

130:                                              ; preds = %125, %118
  store i32 0, i32* %2, align 4
  br label %131

131:                                              ; preds = %130, %110, %28
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.kszphy_priv* @devm_kzalloc(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*, i64) #1

declare dso_local %struct.clk* @devm_clk_get(%struct.TYPE_7__*, i8*) #1

declare dso_local i32 @IS_ERR_OR_NULL(%struct.clk*) #1

declare dso_local i64 @clk_get_rate(%struct.clk*) #1

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
