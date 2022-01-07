; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_probe_raw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/img-ir/extr_img-ir-raw.c_img_ir_probe_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.img_ir_priv = type { i32, %struct.img_ir_priv_raw }
%struct.img_ir_priv_raw = type { %struct.rc_dev*, i32 }
%struct.rc_dev = type { i8*, i32, %struct.img_ir_priv* }

@img_ir_echo_timer = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"cannot allocate raw input device\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RC_MAP_EMPTY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"IMG Infrared Decoder Raw\00", align 1
@.str.2 = private unnamed_addr constant [40 x i8] c"failed to register raw IR input device\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @img_ir_probe_raw(%struct.img_ir_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.img_ir_priv*, align 8
  %4 = alloca %struct.img_ir_priv_raw*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.img_ir_priv* %0, %struct.img_ir_priv** %3, align 8
  %7 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %8 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %7, i32 0, i32 1
  store %struct.img_ir_priv_raw* %8, %struct.img_ir_priv_raw** %4, align 8
  %9 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %4, align 8
  %10 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %9, i32 0, i32 1
  %11 = load i32, i32* @img_ir_echo_timer, align 4
  %12 = call i32 @timer_setup(i32* %10, i32 %11, i32 0)
  %13 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %14 = call %struct.rc_dev* @rc_allocate_device(i32 %13)
  store %struct.rc_dev* %14, %struct.rc_dev** %5, align 8
  %15 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %4, align 8
  %16 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %15, i32 0, i32 0
  store %struct.rc_dev* %14, %struct.rc_dev** %16, align 8
  %17 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %18 = icmp ne %struct.rc_dev* %17, null
  br i1 %18, label %26, label %19

19:                                               ; preds = %1
  %20 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %21 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dev_err(i32 %22, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %50

26:                                               ; preds = %1
  %27 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %28 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %29 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %28, i32 0, i32 2
  store %struct.img_ir_priv* %27, %struct.img_ir_priv** %29, align 8
  %30 = load i32, i32* @RC_MAP_EMPTY, align 4
  %31 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %32 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %34 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %33, i32 0, i32 0
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %34, align 8
  %35 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %36 = call i32 @rc_register_device(%struct.rc_dev* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %26
  %40 = load %struct.img_ir_priv*, %struct.img_ir_priv** %3, align 8
  %41 = getelementptr inbounds %struct.img_ir_priv, %struct.img_ir_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0))
  %44 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %45 = call i32 @rc_free_device(%struct.rc_dev* %44)
  %46 = load %struct.img_ir_priv_raw*, %struct.img_ir_priv_raw** %4, align 8
  %47 = getelementptr inbounds %struct.img_ir_priv_raw, %struct.img_ir_priv_raw* %46, i32 0, i32 0
  store %struct.rc_dev* null, %struct.rc_dev** %47, align 8
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %2, align 4
  br label %50

49:                                               ; preds = %26
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %39, %19
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local %struct.rc_dev* @rc_allocate_device(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
