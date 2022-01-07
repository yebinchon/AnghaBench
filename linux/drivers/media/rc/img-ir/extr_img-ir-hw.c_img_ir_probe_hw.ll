; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_probe_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-hw.c_img_ir_probe_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32, i32, %struct.img_ir_priv_hw }
%struct.img_ir_priv_hw = type { i32, %struct.TYPE_3__, %struct.rc_dev*, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.rc_dev = type { i8*, i32, i32, i32, i32, i32, %struct.img_ir_priv* }

@img_ir_end_timer = common dso_local global i32 0, align 4
@img_ir_suspend_timer = common dso_local global i32 0, align 4
@RC_DRIVER_SCANCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"cannot allocate input device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RC_MAP_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"IMG Infrared Decoder\00", align 1
@img_ir_set_normal_filter = common dso_local global i32 0, align 4
@img_ir_set_wakeup_filter = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"failed to register IR input device\0A\00", align 1
@img_ir_change_protocol = common dso_local global i32 0, align 4
@img_ir_clk_notify = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @img_ir_probe_hw(%struct.img_ir_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.img_ir_priv*, align 8
  %4 = alloca %struct.img_ir_priv_hw*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %3, align 8
  %7 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %8 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %7, i32 0, i32 2
  store %struct.img_ir_priv_hw* %8, %struct.img_ir_priv_hw** %4, align 8
  %9 = call i32 (...) @img_ir_init_decoders()
  %10 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %11 = call i32 @img_ir_probe_hw_caps(%struct.img_ir_priv* %10)
  %12 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %4, align 8
  %13 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %12, i32 0, i32 4
  %14 = load i32, i32* @img_ir_end_timer, align 4
  %15 = call i32 @timer_setup(i32* %13, i32 %14, i32 0)
  %16 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %4, align 8
  %17 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %16, i32 0, i32 3
  %18 = load i32, i32* @img_ir_suspend_timer, align 4
  %19 = call i32 @timer_setup(i32* %17, i32 %18, i32 0)
  %20 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %21 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @IS_ERR(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %1
  %26 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %27 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_get_rate(i32 %28)
  %30 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %4, align 8
  %31 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  br label %35

32:                                               ; preds = %1
  %33 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %4, align 8
  %34 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %33, i32 0, i32 0
  store i32 32768, i32* %34, align 8
  br label %35

35:                                               ; preds = %32, %25
  %36 = load i32, i32* @RC_DRIVER_SCANCODE, align 4
  %37 = call %struct.rc_dev* @rc_allocate_device(i32 %36)
  store %struct.rc_dev* %37, %struct.rc_dev** %5, align 8
  %38 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %4, align 8
  %39 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %38, i32 0, i32 2
  store %struct.rc_dev* %37, %struct.rc_dev** %39, align 8
  %40 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %41 = icmp ne %struct.rc_dev* %40, null
  br i1 %41, label %49, label %42

42:                                               ; preds = %35
  %43 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %44 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %6, align 4
  br label %92

49:                                               ; preds = %35
  %50 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %51 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %52 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %51, i32 0, i32 6
  store %struct.img_ir_priv* %50, %struct.img_ir_priv** %52, align 8
  %53 = load i32, i32* @RC_MAP_EMPTY, align 4
  %54 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %55 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %54, i32 0, i32 5
  store i32 %53, i32* %55, align 8
  %56 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %57 = call i32 @img_ir_allowed_protos(%struct.img_ir_priv* %56)
  %58 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %59 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 4
  %60 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %61 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %60, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %61, align 8
  %62 = load i32, i32* @img_ir_set_normal_filter, align 4
  %63 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %64 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %63, i32 0, i32 3
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @img_ir_set_wakeup_filter, align 4
  %66 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %67 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %66, i32 0, i32 2
  store i32 %65, i32* %67, align 4
  %68 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %69 = call i32 @rc_register_device(%struct.rc_dev* %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %49
  %73 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %74 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_err(i32 %75, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %85

77:                                               ; preds = %49
  %78 = load i32, i32* @img_ir_change_protocol, align 4
  %79 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %80 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 8
  %81 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %82 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @device_init_wakeup(i32 %83, i32 1)
  store i32 0, i32* %2, align 4
  br label %94

85:                                               ; preds = %72
  %86 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %87 = call i32 @img_ir_set_decoder(%struct.img_ir_priv* %86, i32* null, i32 0)
  %88 = load %struct.img_ir_priv_hw*, %struct.img_ir_priv_hw** %4, align 8
  %89 = getelementptr inbounds %struct.img_ir_priv_hw, %struct.img_ir_priv_hw* %88, i32 0, i32 2
  store %struct.rc_dev* null, %struct.rc_dev** %89, align 8
  %90 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %91 = call i32 @rc_free_device(%struct.rc_dev* %90)
  br label %92

92:                                               ; preds = %85, %42
  %93 = load i32, i32* %6, align 4
  store i32 %93, i32* %2, align 4
  br label %94

94:                                               ; preds = %92, %77
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @img_ir_init_decoders(...) #1

declare dso_local i32 @img_ir_probe_hw_caps(%struct.img_ir_priv*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @IS_ERR(i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @img_ir_allowed_protos(%struct.img_ir_priv*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @device_init_wakeup(i32, i32) #1

declare dso_local i32 @img_ir_set_decoder(%struct.img_ir_priv*, i32*, i32) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
