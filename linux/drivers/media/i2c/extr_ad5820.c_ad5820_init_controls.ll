; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad5820.c_ad5820_init_controls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_ad5820.c_ad5820_init_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ad5820_device = type { %struct.TYPE_5__, %struct.TYPE_4__, i64, i64, i64 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }

@ad5820_ctrl_ops = common dso_local global i32 0, align 4
@V4L2_CID_FOCUS_ABSOLUTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ad5820_device*)* @ad5820_init_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ad5820_init_controls(%struct.ad5820_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ad5820_device*, align 8
  store %struct.ad5820_device* %0, %struct.ad5820_device** %3, align 8
  %4 = load %struct.ad5820_device*, %struct.ad5820_device** %3, align 8
  %5 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %4, i32 0, i32 0
  %6 = call i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__* %5, i32 1)
  %7 = load %struct.ad5820_device*, %struct.ad5820_device** %3, align 8
  %8 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %7, i32 0, i32 0
  %9 = load i32, i32* @V4L2_CID_FOCUS_ABSOLUTE, align 4
  %10 = call i32 @v4l2_ctrl_new_std(%struct.TYPE_5__* %8, i32* @ad5820_ctrl_ops, i32 %9, i32 0, i32 1023, i32 1, i32 0)
  %11 = load %struct.ad5820_device*, %struct.ad5820_device** %3, align 8
  %12 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.ad5820_device*, %struct.ad5820_device** %3, align 8
  %18 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %2, align 4
  br label %33

21:                                               ; preds = %1
  %22 = load %struct.ad5820_device*, %struct.ad5820_device** %3, align 8
  %23 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %22, i32 0, i32 4
  store i64 0, i64* %23, align 8
  %24 = load %struct.ad5820_device*, %struct.ad5820_device** %3, align 8
  %25 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %24, i32 0, i32 3
  store i64 0, i64* %25, align 8
  %26 = load %struct.ad5820_device*, %struct.ad5820_device** %3, align 8
  %27 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %26, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = load %struct.ad5820_device*, %struct.ad5820_device** %3, align 8
  %29 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %28, i32 0, i32 0
  %30 = load %struct.ad5820_device*, %struct.ad5820_device** %3, align 8
  %31 = getelementptr inbounds %struct.ad5820_device, %struct.ad5820_device* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  store %struct.TYPE_5__* %29, %struct.TYPE_5__** %32, align 8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %21, %16
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @v4l2_ctrl_handler_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @v4l2_ctrl_new_std(%struct.TYPE_5__*, i32*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
