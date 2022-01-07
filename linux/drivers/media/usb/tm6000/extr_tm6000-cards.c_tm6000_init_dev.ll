; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-cards.c_tm6000_init_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/tm6000/extr_tm6000-cards.c_tm6000_init_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_frequency = type { i32, i32, i64 }
%struct.tm6000_core = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_2__, %struct.v4l2_frequency*, i32 }
%struct.TYPE_2__ = type { i64 }

@V4L2_STD_NTSC_M = common dso_local global %struct.v4l2_frequency* null, align 8
@video = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@tuner = common dso_local global i32 0, align 4
@s_frequency = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"tvaudio\00", align 1
@I2C_ADDR_TDA9874 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tm6000_core*)* @tm6000_init_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tm6000_init_dev(%struct.tm6000_core* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tm6000_core*, align 8
  %4 = alloca %struct.v4l2_frequency, align 8
  %5 = alloca i32, align 4
  store %struct.tm6000_core* %0, %struct.tm6000_core** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %7 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %6, i32 0, i32 3
  %8 = call i32 @mutex_init(i32* %7)
  %9 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %10 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %9, i32 0, i32 3
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %13 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %12, i32 0, i32 8
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @is_generic(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %30, label %17

17:                                               ; preds = %1
  %18 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %19 = call i32 @fill_board_specific_data(%struct.tm6000_core* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %106

23:                                               ; preds = %17
  %24 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %25 = call i32 @tm6000_i2c_register(%struct.tm6000_core* %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %106

29:                                               ; preds = %23
  br label %45

30:                                               ; preds = %1
  %31 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %32 = call i32 @tm6000_i2c_register(%struct.tm6000_core* %31)
  store i32 %32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %106

36:                                               ; preds = %30
  %37 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %38 = call i32 @use_alternative_detection_method(%struct.tm6000_core* %37)
  %39 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %40 = call i32 @fill_board_specific_data(%struct.tm6000_core* %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %106

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %29
  %46 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %47 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %46, i32 0, i32 0
  store i32 720, i32* %47, align 8
  %48 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %49 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %48, i32 0, i32 1
  store i32 480, i32* %49, align 4
  %50 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** @V4L2_STD_NTSC_M, align 8
  %51 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %52 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %51, i32 0, i32 7
  store %struct.v4l2_frequency* %50, %struct.v4l2_frequency** %52, align 8
  %53 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %54 = call i32 @tm6000_config_tuner(%struct.tm6000_core* %53)
  %55 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %56 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %55, i32 0, i32 5
  %57 = load i32, i32* @video, align 4
  %58 = load i32, i32* @s_std, align 4
  %59 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %60 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %59, i32 0, i32 7
  %61 = load %struct.v4l2_frequency*, %struct.v4l2_frequency** %60, align 8
  %62 = call i32 @v4l2_device_call_all(i32* %56, i32 0, i32 %57, i32 %58, %struct.v4l2_frequency* %61)
  %63 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 2
  store i64 0, i64* %63, align 8
  %64 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %65 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 1
  store i32 %64, i32* %65, align 4
  %66 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 0
  store i32 3092, i32* %66, align 8
  %67 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %4, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %70 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %69, i32 0, i32 2
  store i32 %68, i32* %70, align 8
  %71 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %72 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %71, i32 0, i32 5
  %73 = load i32, i32* @tuner, align 4
  %74 = load i32, i32* @s_frequency, align 4
  %75 = call i32 @v4l2_device_call_all(i32* %72, i32 0, i32 %73, i32 %74, %struct.v4l2_frequency* %4)
  %76 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %77 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %76, i32 0, i32 6
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %45
  %82 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %83 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %82, i32 0, i32 5
  %84 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %85 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %84, i32 0, i32 4
  %86 = load i32, i32* @I2C_ADDR_TDA9874, align 4
  %87 = call i32 @v4l2_i2c_new_subdev(i32* %83, i32* %85, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %86, i32* null)
  br label %88

88:                                               ; preds = %81, %45
  %89 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %90 = call i32 @tm6000_v4l2_register(%struct.tm6000_core* %89)
  store i32 %90, i32* %5, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %106

94:                                               ; preds = %88
  %95 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %96 = call i32 @tm6000_add_into_devlist(%struct.tm6000_core* %95)
  %97 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %98 = call i32 @tm6000_init_extension(%struct.tm6000_core* %97)
  %99 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %100 = call i32 @tm6000_ir_init(%struct.tm6000_core* %99)
  %101 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %102 = call i32 @request_modules(%struct.tm6000_core* %101)
  %103 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %104 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %103, i32 0, i32 3
  %105 = call i32 @mutex_unlock(i32* %104)
  store i32 0, i32* %2, align 4
  br label %111

106:                                              ; preds = %93, %43, %35, %28, %22
  %107 = load %struct.tm6000_core*, %struct.tm6000_core** %3, align 8
  %108 = getelementptr inbounds %struct.tm6000_core, %struct.tm6000_core* %107, i32 0, i32 3
  %109 = call i32 @mutex_unlock(i32* %108)
  %110 = load i32, i32* %5, align 4
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %106, %94
  %112 = load i32, i32* %2, align 4
  ret i32 %112
}

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_generic(i32) #1

declare dso_local i32 @fill_board_specific_data(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_i2c_register(%struct.tm6000_core*) #1

declare dso_local i32 @use_alternative_detection_method(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_config_tuner(%struct.tm6000_core*) #1

declare dso_local i32 @v4l2_device_call_all(i32*, i32, i32, i32, %struct.v4l2_frequency*) #1

declare dso_local i32 @v4l2_i2c_new_subdev(i32*, i32*, i8*, i32, i32*) #1

declare dso_local i32 @tm6000_v4l2_register(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_add_into_devlist(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_init_extension(%struct.tm6000_core*) #1

declare dso_local i32 @tm6000_ir_init(%struct.tm6000_core*) #1

declare dso_local i32 @request_modules(%struct.tm6000_core*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
