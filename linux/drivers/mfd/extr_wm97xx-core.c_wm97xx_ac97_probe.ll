; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm97xx-core.c_wm97xx_ac97_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm97xx-core.c_wm97xx_ac97_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regmap_config = type { i32 }
%struct.mfd_cell = type { i32, %struct.wm97xx_platform_data* }
%struct.wm97xx_platform_data = type { i32, i32*, i32 }
%struct.ac97_codec_device = type { i32 }
%struct.wm97xx_priv = type { i32, i32, %struct.wm97xx_platform_data }
%struct.wm97xx_pdata = type { i32* }

@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wm97xx core found, id=0x%x\0A\00", align 1
@wm9705_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@wm9705_cells = common dso_local global %struct.mfd_cell* null, align 8
@wm9712_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@wm9712_cells = common dso_local global %struct.mfd_cell* null, align 8
@wm9713_regmap_config = common dso_local global %struct.regmap_config zeroinitializer, align 4
@wm9713_cells = common dso_local global %struct.mfd_cell* null, align 8
@PLATFORM_DEVID_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ac97_codec_device*)* @wm97xx_ac97_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm97xx_ac97_probe(%struct.ac97_codec_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ac97_codec_device*, align 8
  %4 = alloca %struct.wm97xx_priv*, align 8
  %5 = alloca %struct.regmap_config*, align 8
  %6 = alloca %struct.wm97xx_platform_data*, align 8
  %7 = alloca %struct.mfd_cell*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.wm97xx_pdata*, align 8
  store %struct.ac97_codec_device* %0, %struct.ac97_codec_device** %3, align 8
  %12 = load i32, i32* @ENODEV, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %8, align 4
  %14 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %15 = call %struct.wm97xx_pdata* @snd_ac97_codec_get_platdata(%struct.ac97_codec_device* %14)
  store %struct.wm97xx_pdata* %15, %struct.wm97xx_pdata** %11, align 8
  %16 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %17 = call i32 @ac97_codec_dev2dev(%struct.ac97_codec_device* %16)
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.wm97xx_priv* @devm_kzalloc(i32 %17, i32 32, i32 %18)
  store %struct.wm97xx_priv* %19, %struct.wm97xx_priv** %4, align 8
  %20 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %21 = icmp ne %struct.wm97xx_priv* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %146

25:                                               ; preds = %1
  %26 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %27 = call i32 @ac97_codec_dev2dev(%struct.ac97_codec_device* %26)
  %28 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %29 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %31 = call i32 @snd_ac97_compat_alloc(%struct.ac97_codec_device* %30)
  %32 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %33 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %35 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i64 @IS_ERR(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %41 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @PTR_ERR(i32 %42)
  store i32 %43, i32* %2, align 4
  br label %146

44:                                               ; preds = %25
  %45 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %46 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %47 = call i32 @ac97_set_drvdata(%struct.ac97_codec_device* %45, %struct.wm97xx_priv* %46)
  %48 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %49 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %52 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @dev_info(i32 %50, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %53)
  %55 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %56 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %55, i32 0, i32 2
  store %struct.wm97xx_platform_data* %56, %struct.wm97xx_platform_data** %6, align 8
  %57 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %58 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.wm97xx_platform_data*, %struct.wm97xx_platform_data** %6, align 8
  %61 = getelementptr inbounds %struct.wm97xx_platform_data, %struct.wm97xx_platform_data* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 8
  %62 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %11, align 8
  %63 = icmp ne %struct.wm97xx_pdata* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %44
  %65 = load %struct.wm97xx_pdata*, %struct.wm97xx_pdata** %11, align 8
  %66 = getelementptr inbounds %struct.wm97xx_pdata, %struct.wm97xx_pdata* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  br label %69

68:                                               ; preds = %44
  br label %69

69:                                               ; preds = %68, %64
  %70 = phi i32* [ %67, %64 ], [ null, %68 ]
  %71 = load %struct.wm97xx_platform_data*, %struct.wm97xx_platform_data** %6, align 8
  %72 = getelementptr inbounds %struct.wm97xx_platform_data, %struct.wm97xx_platform_data* %71, i32 0, i32 1
  store i32* %70, i32** %72, align 8
  %73 = load %struct.ac97_codec_device*, %struct.ac97_codec_device** %3, align 8
  %74 = getelementptr inbounds %struct.ac97_codec_device, %struct.ac97_codec_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %88 [
    i32 130, label %76
    i32 129, label %80
    i32 128, label %84
  ]

76:                                               ; preds = %69
  store %struct.regmap_config* @wm9705_regmap_config, %struct.regmap_config** %5, align 8
  %77 = load %struct.mfd_cell*, %struct.mfd_cell** @wm9705_cells, align 8
  store %struct.mfd_cell* %77, %struct.mfd_cell** %7, align 8
  %78 = load %struct.mfd_cell*, %struct.mfd_cell** @wm9705_cells, align 8
  %79 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %78)
  store i32 %79, i32* %9, align 4
  br label %89

80:                                               ; preds = %69
  store %struct.regmap_config* @wm9712_regmap_config, %struct.regmap_config** %5, align 8
  %81 = load %struct.mfd_cell*, %struct.mfd_cell** @wm9712_cells, align 8
  store %struct.mfd_cell* %81, %struct.mfd_cell** %7, align 8
  %82 = load %struct.mfd_cell*, %struct.mfd_cell** @wm9712_cells, align 8
  %83 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %82)
  store i32 %83, i32* %9, align 4
  br label %89

84:                                               ; preds = %69
  store %struct.regmap_config* @wm9713_regmap_config, %struct.regmap_config** %5, align 8
  %85 = load %struct.mfd_cell*, %struct.mfd_cell** @wm9713_cells, align 8
  store %struct.mfd_cell* %85, %struct.mfd_cell** %7, align 8
  %86 = load %struct.mfd_cell*, %struct.mfd_cell** @wm9713_cells, align 8
  %87 = call i32 @ARRAY_SIZE(%struct.mfd_cell* %86)
  store i32 %87, i32* %9, align 4
  br label %89

88:                                               ; preds = %69
  br label %140

89:                                               ; preds = %84, %80, %76
  store i32 0, i32* %10, align 4
  br label %90

90:                                               ; preds = %106, %89
  %91 = load i32, i32* %10, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load %struct.wm97xx_platform_data*, %struct.wm97xx_platform_data** %6, align 8
  %96 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %96, i64 %98
  %100 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %99, i32 0, i32 1
  store %struct.wm97xx_platform_data* %95, %struct.wm97xx_platform_data** %100, align 8
  %101 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %102 = load i32, i32* %10, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %101, i64 %103
  %105 = getelementptr inbounds %struct.mfd_cell, %struct.mfd_cell* %104, i32 0, i32 0
  store i32 24, i32* %105, align 8
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %90

109:                                              ; preds = %90
  %110 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %111 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.regmap_config*, %struct.regmap_config** %5, align 8
  %114 = call i32 @devm_regmap_init_ac97(i32 %112, %struct.regmap_config* %113)
  %115 = load %struct.wm97xx_platform_data*, %struct.wm97xx_platform_data** %6, align 8
  %116 = getelementptr inbounds %struct.wm97xx_platform_data, %struct.wm97xx_platform_data* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 8
  %117 = load %struct.wm97xx_platform_data*, %struct.wm97xx_platform_data** %6, align 8
  %118 = getelementptr inbounds %struct.wm97xx_platform_data, %struct.wm97xx_platform_data* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i64 @IS_ERR(i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load %struct.wm97xx_platform_data*, %struct.wm97xx_platform_data** %6, align 8
  %124 = getelementptr inbounds %struct.wm97xx_platform_data, %struct.wm97xx_platform_data* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @PTR_ERR(i32 %125)
  store i32 %126, i32* %8, align 4
  br label %140

127:                                              ; preds = %109
  %128 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %129 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @PLATFORM_DEVID_NONE, align 4
  %132 = load %struct.mfd_cell*, %struct.mfd_cell** %7, align 8
  %133 = load i32, i32* %9, align 4
  %134 = call i32 @devm_mfd_add_devices(i32 %130, i32 %131, %struct.mfd_cell* %132, i32 %133, i32* null, i32 0, i32* null)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %138

137:                                              ; preds = %127
  br label %140

138:                                              ; preds = %127
  %139 = load i32, i32* %8, align 4
  store i32 %139, i32* %2, align 4
  br label %146

140:                                              ; preds = %137, %122, %88
  %141 = load %struct.wm97xx_priv*, %struct.wm97xx_priv** %4, align 8
  %142 = getelementptr inbounds %struct.wm97xx_priv, %struct.wm97xx_priv* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = call i32 @snd_ac97_compat_release(i32 %143)
  %145 = load i32, i32* %8, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %140, %138, %39, %22
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local %struct.wm97xx_pdata* @snd_ac97_codec_get_platdata(%struct.ac97_codec_device*) #1

declare dso_local %struct.wm97xx_priv* @devm_kzalloc(i32, i32, i32) #1

declare dso_local i32 @ac97_codec_dev2dev(%struct.ac97_codec_device*) #1

declare dso_local i32 @snd_ac97_compat_alloc(%struct.ac97_codec_device*) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @ac97_set_drvdata(%struct.ac97_codec_device*, %struct.wm97xx_priv*) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.mfd_cell*) #1

declare dso_local i32 @devm_regmap_init_ac97(i32, %struct.regmap_config*) #1

declare dso_local i32 @devm_mfd_add_devices(i32, i32, %struct.mfd_cell*, i32, i32*, i32, i32*) #1

declare dso_local i32 @snd_ac97_compat_release(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
