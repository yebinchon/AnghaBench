; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_codec_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_88pm860x-core.c_device_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__*, i32 }
%struct.pm860x_chip = type { i32 }
%struct.pm860x_platform_data = type { i32 }

@codec_resources = common dso_local global %struct.TYPE_6__* null, align 8
@codec_devs = common dso_local global %struct.TYPE_6__* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"Failed to add codec subdev\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pm860x_chip*, %struct.pm860x_platform_data*)* @device_codec_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @device_codec_init(%struct.pm860x_chip* %0, %struct.pm860x_platform_data* %1) #0 {
  %3 = alloca %struct.pm860x_chip*, align 8
  %4 = alloca %struct.pm860x_platform_data*, align 8
  %5 = alloca i32, align 4
  store %struct.pm860x_chip* %0, %struct.pm860x_chip** %3, align 8
  store %struct.pm860x_platform_data* %1, %struct.pm860x_platform_data** %4, align 8
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** @codec_resources, align 8
  %7 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %6)
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @codec_devs, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 1
  store i32 %7, i32* %10, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** @codec_resources, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i64 0
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** @codec_devs, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 0
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  store %struct.TYPE_6__* %12, %struct.TYPE_6__** %15, align 8
  %16 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %17 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** @codec_devs, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i64 0
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @codec_devs, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.TYPE_6__* %21)
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** @codec_resources, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i64 0
  %25 = call i32 @mfd_add_devices(i32 %18, i32 0, %struct.TYPE_6__* %20, i32 %22, %struct.TYPE_6__* %24, i32 0, i32* null)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %2
  %29 = load %struct.pm860x_chip*, %struct.pm860x_chip** %3, align 8
  %30 = getelementptr inbounds %struct.pm860x_chip, %struct.pm860x_chip* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %33

33:                                               ; preds = %28, %2
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_6__*) #1

declare dso_local i32 @mfd_add_devices(i32, i32, %struct.TYPE_6__*, i32, %struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
