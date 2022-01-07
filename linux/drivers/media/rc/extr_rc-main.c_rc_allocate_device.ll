; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_rc_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, %struct.TYPE_7__, i32, i32, %struct.TYPE_5__, i32, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32*, i32* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@RC_DRIVER_IR_RAW_TX = common dso_local global i32 0, align 4
@ir_getkeycode = common dso_local global i32 0, align 4
@ir_setkeycode = common dso_local global i32 0, align 4
@IR_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4
@ir_timer_keyup = common dso_local global i32 0, align 4
@ir_timer_repeat = common dso_local global i32 0, align 4
@rc_dev_type = common dso_local global i32 0, align 4
@rc_class = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rc_dev* @rc_allocate_device(i32 %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.rc_dev* @kzalloc(i32 56, i32 %5)
  store %struct.rc_dev* %6, %struct.rc_dev** %4, align 8
  %7 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %8 = icmp ne %struct.rc_dev* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %78

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = load i32, i32* @RC_DRIVER_IR_RAW_TX, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %59

14:                                               ; preds = %10
  %15 = call %struct.TYPE_6__* (...) @input_allocate_device()
  %16 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %17 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %16, i32 0, i32 8
  store %struct.TYPE_6__* %15, %struct.TYPE_6__** %17, align 8
  %18 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %19 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %18, i32 0, i32 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14
  %23 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %24 = call i32 @kfree(%struct.rc_dev* %23)
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %78

25:                                               ; preds = %14
  %26 = load i32, i32* @ir_getkeycode, align 4
  %27 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %28 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %27, i32 0, i32 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  store i32 %26, i32* %30, align 4
  %31 = load i32, i32* @ir_setkeycode, align 4
  %32 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %33 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %32, i32 0, i32 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %37 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %36, i32 0, i32 8
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %40 = call i32 @input_set_drvdata(%struct.TYPE_6__* %38, %struct.rc_dev* %39)
  %41 = load i32, i32* @IR_DEFAULT_TIMEOUT, align 4
  %42 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %43 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %42, i32 0, i32 7
  store i32 %41, i32* %43, align 4
  %44 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %45 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %44, i32 0, i32 6
  %46 = load i32, i32* @ir_timer_keyup, align 4
  %47 = call i32 @timer_setup(i32* %45, i32 %46, i32 0)
  %48 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %49 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %48, i32 0, i32 5
  %50 = load i32, i32* @ir_timer_repeat, align 4
  %51 = call i32 @timer_setup(i32* %49, i32 %50, i32 0)
  %52 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %53 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %52, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = call i32 @spin_lock_init(i32* %54)
  %56 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %57 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %56, i32 0, i32 3
  %58 = call i32 @spin_lock_init(i32* %57)
  br label %59

59:                                               ; preds = %25, %10
  %60 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %61 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %60, i32 0, i32 2
  %62 = call i32 @mutex_init(i32* %61)
  %63 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %64 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 1
  store i32* @rc_dev_type, i32** %65, align 8
  %66 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %67 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  store i32* @rc_class, i32** %68, align 8
  %69 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %70 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %69, i32 0, i32 1
  %71 = call i32 @device_initialize(%struct.TYPE_7__* %70)
  %72 = load i32, i32* %3, align 4
  %73 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %74 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @THIS_MODULE, align 4
  %76 = call i32 @__module_get(i32 %75)
  %77 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  store %struct.rc_dev* %77, %struct.rc_dev** %2, align 8
  br label %78

78:                                               ; preds = %59, %22, %9
  %79 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  ret %struct.rc_dev* %79
}

declare dso_local %struct.rc_dev* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_6__* @input_allocate_device(...) #1

declare dso_local i32 @kfree(%struct.rc_dev*) #1

declare dso_local i32 @input_set_drvdata(%struct.TYPE_6__*, %struct.rc_dev*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @device_initialize(%struct.TYPE_7__*) #1

declare dso_local i32 @__module_get(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
