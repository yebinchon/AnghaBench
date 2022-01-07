; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_mt7530.c_mt7530_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_device = type { %struct.TYPE_12__, i32 }
%struct.TYPE_12__ = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.mt7530_priv = type { i32, %struct.TYPE_13__*, i32, %struct.TYPE_12__*, i32, i8*, i64, i8*, i8*, i8* }
%struct.TYPE_13__ = type { i32*, %struct.mt7530_priv* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DSA_MAX_PORTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"mediatek,mcm\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"MT7530 adapts as multi-chip module\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"mcm\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Couldn't get our reset line\0A\00", align 1
@ID_MT7530 = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"core\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"io\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@GPIOD_OUT_LOW = common dso_local global i32 0, align 4
@mt7530_switch_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_device*)* @mt7530_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt7530_probe(%struct.mdio_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mdio_device*, align 8
  %4 = alloca %struct.mt7530_priv*, align 8
  %5 = alloca %struct.device_node*, align 8
  store %struct.mdio_device* %0, %struct.mdio_device** %3, align 8
  %6 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %7 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 0
  %9 = load %struct.device_node*, %struct.device_node** %8, align 8
  store %struct.device_node* %9, %struct.device_node** %5, align 8
  %10 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %11 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %10, i32 0, i32 0
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.mt7530_priv* @devm_kzalloc(%struct.TYPE_12__* %11, i32 80, i32 %12)
  store %struct.mt7530_priv* %13, %struct.mt7530_priv** %4, align 8
  %14 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %15 = icmp ne %struct.mt7530_priv* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %166

19:                                               ; preds = %1
  %20 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %21 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %20, i32 0, i32 0
  %22 = load i32, i32* @DSA_MAX_PORTS, align 4
  %23 = call %struct.TYPE_13__* @dsa_switch_alloc(%struct.TYPE_12__* %21, i32 %22)
  %24 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %25 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %24, i32 0, i32 1
  store %struct.TYPE_13__* %23, %struct.TYPE_13__** %25, align 8
  %26 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %27 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %26, i32 0, i32 1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** %27, align 8
  %29 = icmp ne %struct.TYPE_13__* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %19
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %166

33:                                               ; preds = %19
  %34 = load %struct.device_node*, %struct.device_node** %5, align 8
  %35 = call i64 @of_property_read_bool(%struct.device_node* %34, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %37 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %36, i32 0, i32 6
  store i64 %35, i64* %37, align 8
  %38 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %39 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %38, i32 0, i32 6
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %65

42:                                               ; preds = %33
  %43 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %44 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %43, i32 0, i32 0
  %45 = call i32 @dev_info(%struct.TYPE_12__* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %46 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %47 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %46, i32 0, i32 0
  %48 = call i8* @devm_reset_control_get(%struct.TYPE_12__* %47, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %49 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %50 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %49, i32 0, i32 9
  store i8* %48, i8** %50, align 8
  %51 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %52 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %51, i32 0, i32 9
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @IS_ERR(i8* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %42
  %57 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %58 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %57, i32 0, i32 0
  %59 = call i32 @dev_err(%struct.TYPE_12__* %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %61 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %60, i32 0, i32 9
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 @PTR_ERR(i8* %62)
  store i32 %63, i32* %2, align 4
  br label %166

64:                                               ; preds = %42
  br label %65

65:                                               ; preds = %64, %33
  %66 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %67 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %66, i32 0, i32 0
  %68 = call i64 @of_device_get_match_data(%struct.TYPE_12__* %67)
  %69 = trunc i64 %68 to i32
  %70 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %71 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  %72 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %73 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @ID_MT7530, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %110

77:                                               ; preds = %65
  %78 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %79 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %78, i32 0, i32 0
  %80 = call i8* @devm_regulator_get(%struct.TYPE_12__* %79, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %81 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %82 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %81, i32 0, i32 8
  store i8* %80, i8** %82, align 8
  %83 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %84 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %83, i32 0, i32 8
  %85 = load i8*, i8** %84, align 8
  %86 = call i64 @IS_ERR(i8* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %77
  %89 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %90 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %89, i32 0, i32 8
  %91 = load i8*, i8** %90, align 8
  %92 = call i32 @PTR_ERR(i8* %91)
  store i32 %92, i32* %2, align 4
  br label %166

93:                                               ; preds = %77
  %94 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %95 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %94, i32 0, i32 0
  %96 = call i8* @devm_regulator_get(%struct.TYPE_12__* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %98 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %97, i32 0, i32 7
  store i8* %96, i8** %98, align 8
  %99 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %100 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %99, i32 0, i32 7
  %101 = load i8*, i8** %100, align 8
  %102 = call i64 @IS_ERR(i8* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %109

104:                                              ; preds = %93
  %105 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %106 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %105, i32 0, i32 7
  %107 = load i8*, i8** %106, align 8
  %108 = call i32 @PTR_ERR(i8* %107)
  store i32 %108, i32* %2, align 4
  br label %166

109:                                              ; preds = %93
  br label %110

110:                                              ; preds = %109, %65
  %111 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %112 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %111, i32 0, i32 6
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %136, label %115

115:                                              ; preds = %110
  %116 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %117 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %116, i32 0, i32 0
  %118 = load i32, i32* @GPIOD_OUT_LOW, align 4
  %119 = call i8* @devm_gpiod_get_optional(%struct.TYPE_12__* %117, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  %120 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %121 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %120, i32 0, i32 5
  store i8* %119, i8** %121, align 8
  %122 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %123 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %122, i32 0, i32 5
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @IS_ERR(i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %135

127:                                              ; preds = %115
  %128 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %129 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %128, i32 0, i32 0
  %130 = call i32 @dev_err(%struct.TYPE_12__* %129, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %131 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %132 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %131, i32 0, i32 5
  %133 = load i8*, i8** %132, align 8
  %134 = call i32 @PTR_ERR(i8* %133)
  store i32 %134, i32* %2, align 4
  br label %166

135:                                              ; preds = %115
  br label %136

136:                                              ; preds = %135, %110
  %137 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %138 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %141 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %140, i32 0, i32 4
  store i32 %139, i32* %141, align 8
  %142 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %143 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %142, i32 0, i32 0
  %144 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %145 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %144, i32 0, i32 3
  store %struct.TYPE_12__* %143, %struct.TYPE_12__** %145, align 8
  %146 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %147 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %148 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %147, i32 0, i32 1
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %149, i32 0, i32 1
  store %struct.mt7530_priv* %146, %struct.mt7530_priv** %150, align 8
  %151 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %152 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %151, i32 0, i32 1
  %153 = load %struct.TYPE_13__*, %struct.TYPE_13__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %153, i32 0, i32 0
  store i32* @mt7530_switch_ops, i32** %154, align 8
  %155 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %156 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %155, i32 0, i32 2
  %157 = call i32 @mutex_init(i32* %156)
  %158 = load %struct.mdio_device*, %struct.mdio_device** %3, align 8
  %159 = getelementptr inbounds %struct.mdio_device, %struct.mdio_device* %158, i32 0, i32 0
  %160 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %161 = call i32 @dev_set_drvdata(%struct.TYPE_12__* %159, %struct.mt7530_priv* %160)
  %162 = load %struct.mt7530_priv*, %struct.mt7530_priv** %4, align 8
  %163 = getelementptr inbounds %struct.mt7530_priv, %struct.mt7530_priv* %162, i32 0, i32 1
  %164 = load %struct.TYPE_13__*, %struct.TYPE_13__** %163, align 8
  %165 = call i32 @dsa_register_switch(%struct.TYPE_13__* %164)
  store i32 %165, i32* %2, align 4
  br label %166

166:                                              ; preds = %136, %127, %104, %88, %56, %30, %16
  %167 = load i32, i32* %2, align 4
  ret i32 %167
}

declare dso_local %struct.mt7530_priv* @devm_kzalloc(%struct.TYPE_12__*, i32, i32) #1

declare dso_local %struct.TYPE_13__* @dsa_switch_alloc(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local i32 @dev_info(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @devm_reset_control_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @dev_err(%struct.TYPE_12__*, i8*) #1

declare dso_local i32 @PTR_ERR(i8*) #1

declare dso_local i64 @of_device_get_match_data(%struct.TYPE_12__*) #1

declare dso_local i8* @devm_regulator_get(%struct.TYPE_12__*, i8*) #1

declare dso_local i8* @devm_gpiod_get_optional(%struct.TYPE_12__*, i8*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.TYPE_12__*, %struct.mt7530_priv*) #1

declare dso_local i32 @dsa_register_switch(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
