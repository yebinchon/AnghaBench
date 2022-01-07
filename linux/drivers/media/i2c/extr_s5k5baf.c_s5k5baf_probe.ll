; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.s5k5baf = type { %struct.TYPE_3__, %struct.TYPE_4__, i32, i8*, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@s5k5baf_cis_rect = common dso_local global i8* null, align 8
@S5K5BAF_CLK_NAME = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @s5k5baf_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k5baf_probe(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.s5k5baf*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %6, i32 0, i32 0
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.s5k5baf* @devm_kzalloc(i32* %7, i32 56, i32 %8)
  store %struct.s5k5baf* %9, %struct.s5k5baf** %4, align 8
  %10 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %11 = icmp ne %struct.s5k5baf* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %121

15:                                               ; preds = %1
  %16 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %17 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %16, i32 0, i32 6
  %18 = call i32 @mutex_init(i32* %17)
  %19 = load i8*, i8** @s5k5baf_cis_rect, align 8
  %20 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %21 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %20, i32 0, i32 5
  store i8* %19, i8** %21, align 8
  %22 = load i8*, i8** @s5k5baf_cis_rect, align 8
  %23 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %24 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %23, i32 0, i32 4
  store i8* %22, i8** %24, align 8
  %25 = load i8*, i8** @s5k5baf_cis_rect, align 8
  %26 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %27 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %26, i32 0, i32 3
  store i8* %25, i8** %27, align 8
  %28 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = call i32 @s5k5baf_parse_device_node(%struct.s5k5baf* %28, i32* %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp slt i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %15
  %35 = load i32, i32* %5, align 4
  store i32 %35, i32* %2, align 4
  br label %121

36:                                               ; preds = %15
  %37 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %38 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %39 = call i32 @s5k5baf_configure_subdevs(%struct.s5k5baf* %37, %struct.i2c_client* %38)
  store i32 %39, i32* %5, align 4
  %40 = load i32, i32* %5, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* %5, align 4
  store i32 %43, i32* %2, align 4
  br label %121

44:                                               ; preds = %36
  %45 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %46 = call i32 @s5k5baf_configure_gpios(%struct.s5k5baf* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %111

50:                                               ; preds = %44
  %51 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %52 = call i32 @s5k5baf_configure_regulators(%struct.s5k5baf* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %50
  br label %111

56:                                               ; preds = %50
  %57 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %58 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @S5K5BAF_CLK_NAME, align 4
  %62 = call i32 @devm_clk_get(i32 %60, i32 %61)
  %63 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %64 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %66 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %56
  %71 = load i32, i32* @EPROBE_DEFER, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %111

73:                                               ; preds = %56
  %74 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %75 = call i32 @s5k5baf_power_on(%struct.s5k5baf* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @EPROBE_DEFER, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %111

81:                                               ; preds = %73
  %82 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %83 = call i32 @s5k5baf_hw_init(%struct.s5k5baf* %82)
  %84 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %85 = call i32 @s5k5baf_check_fw_revision(%struct.s5k5baf* %84)
  store i32 %85, i32* %5, align 4
  %86 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %87 = call i32 @s5k5baf_power_off(%struct.s5k5baf* %86)
  %88 = load i32, i32* %5, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %81
  br label %111

91:                                               ; preds = %81
  %92 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %93 = call i32 @s5k5baf_initialize_ctrls(%struct.s5k5baf* %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %111

97:                                               ; preds = %91
  %98 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %99 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %98, i32 0, i32 1
  %100 = call i32 @v4l2_async_register_subdev(%struct.TYPE_4__* %99)
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = icmp slt i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %97
  br label %105

104:                                              ; preds = %97
  store i32 0, i32* %2, align 4
  br label %121

105:                                              ; preds = %103
  %106 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %107 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @v4l2_ctrl_handler_free(i32 %109)
  br label %111

111:                                              ; preds = %105, %96, %90, %78, %70, %55, %49
  %112 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %113 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 @media_entity_cleanup(i32* %114)
  %116 = load %struct.s5k5baf*, %struct.s5k5baf** %4, align 8
  %117 = getelementptr inbounds %struct.s5k5baf, %struct.s5k5baf* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = call i32 @media_entity_cleanup(i32* %118)
  %120 = load i32, i32* %5, align 4
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %111, %104, %42, %34, %12
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local %struct.s5k5baf* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @s5k5baf_parse_device_node(%struct.s5k5baf*, i32*) #1

declare dso_local i32 @s5k5baf_configure_subdevs(%struct.s5k5baf*, %struct.i2c_client*) #1

declare dso_local i32 @s5k5baf_configure_gpios(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_configure_regulators(%struct.s5k5baf*) #1

declare dso_local i32 @devm_clk_get(i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @s5k5baf_power_on(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_hw_init(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_check_fw_revision(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_power_off(%struct.s5k5baf*) #1

declare dso_local i32 @s5k5baf_initialize_ctrls(%struct.s5k5baf*) #1

declare dso_local i32 @v4l2_async_register_subdev(%struct.TYPE_4__*) #1

declare dso_local i32 @v4l2_ctrl_handler_free(i32) #1

declare dso_local i32 @media_entity_cleanup(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
