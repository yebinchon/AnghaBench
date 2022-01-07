; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_gphy_fw_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_gphy_fw_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gswip_priv = type { %struct.TYPE_2__*, %struct.device* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.gswip_gphy_fw = type { i32, i32, i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"gphy%d\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to lookup gate clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"lantiq,gphy-mode\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Unknown GPHY mode %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to lookup gphy reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gswip_priv*, %struct.gswip_gphy_fw*, %struct.device_node*, i32)* @gswip_gphy_fw_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_gphy_fw_probe(%struct.gswip_priv* %0, %struct.gswip_gphy_fw* %1, %struct.device_node* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gswip_priv*, align 8
  %7 = alloca %struct.gswip_gphy_fw*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [10 x i8], align 1
  store %struct.gswip_priv* %0, %struct.gswip_priv** %6, align 8
  store %struct.gswip_gphy_fw* %1, %struct.gswip_gphy_fw** %7, align 8
  store %struct.device_node* %2, %struct.device_node** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %15 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %14, i32 0, i32 1
  %16 = load %struct.device*, %struct.device** %15, align 8
  store %struct.device* %16, %struct.device** %10, align 8
  %17 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %18 = load i32, i32* %9, align 4
  %19 = call i32 @snprintf(i8* %17, i32 10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct.device*, %struct.device** %10, align 8
  %21 = getelementptr inbounds [10 x i8], [10 x i8]* %13, i64 0, i64 0
  %22 = call i32 @devm_clk_get(%struct.device* %20, i8* %21)
  %23 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %24 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %26 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @IS_ERR(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %4
  %31 = load %struct.device*, %struct.device** %10, align 8
  %32 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %31, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %33 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %34 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @PTR_ERR(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %106

37:                                               ; preds = %4
  %38 = load %struct.device_node*, %struct.device_node** %8, align 8
  %39 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %40 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %39, i32 0, i32 0
  %41 = call i32 @of_property_read_u32(%struct.device_node* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = load i32, i32* %12, align 4
  store i32 %45, i32* %5, align 4
  br label %106

46:                                               ; preds = %37
  %47 = load %struct.device_node*, %struct.device_node** %8, align 8
  %48 = call i32 @of_property_read_u32(%struct.device_node* %47, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32* %11)
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %12, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  store i32 128, i32* %11, align 4
  br label %52

52:                                               ; preds = %51, %46
  %53 = load i32, i32* %11, align 4
  switch i32 %53, label %70 [
    i32 129, label %54
    i32 128, label %62
  ]

54:                                               ; preds = %52
  %55 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %56 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %61 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  br label %76

62:                                               ; preds = %52
  %63 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %64 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %69 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %68, i32 0, i32 2
  store i32 %67, i32* %69, align 4
  br label %76

70:                                               ; preds = %52
  %71 = load %struct.device*, %struct.device** %10, align 8
  %72 = load i32, i32* %11, align 4
  %73 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %5, align 4
  br label %106

76:                                               ; preds = %62, %54
  %77 = load %struct.device_node*, %struct.device_node** %8, align 8
  %78 = call i32 @of_reset_control_array_get_exclusive(%struct.device_node* %77)
  %79 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %80 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %82 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i64 @IS_ERR(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %76
  %87 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %88 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @PTR_ERR(i32 %89)
  %91 = load i32, i32* @EPROBE_DEFER, align 4
  %92 = sub nsw i32 0, %91
  %93 = icmp ne i32 %90, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %86
  %95 = load %struct.device*, %struct.device** %10, align 8
  %96 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %95, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %97

97:                                               ; preds = %94, %86
  %98 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %99 = getelementptr inbounds %struct.gswip_gphy_fw, %struct.gswip_gphy_fw* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @PTR_ERR(i32 %100)
  store i32 %101, i32* %5, align 4
  br label %106

102:                                              ; preds = %76
  %103 = load %struct.gswip_priv*, %struct.gswip_priv** %6, align 8
  %104 = load %struct.gswip_gphy_fw*, %struct.gswip_gphy_fw** %7, align 8
  %105 = call i32 @gswip_gphy_fw_load(%struct.gswip_priv* %103, %struct.gswip_gphy_fw* %104)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %102, %97, %70, %44, %30
  %107 = load i32, i32* %5, align 4
  ret i32 %107
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @devm_clk_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_reset_control_array_get_exclusive(%struct.device_node*) #1

declare dso_local i32 @gswip_gphy_fw_load(%struct.gswip_priv*, %struct.gswip_gphy_fw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
