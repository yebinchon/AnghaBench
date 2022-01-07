; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_ir_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-input.c_em28xx_ir_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, %struct.em28xx_IR*, %struct.TYPE_2__*, i64 }
%struct.em28xx_IR = type { %struct.em28xx_IR*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Closing input extension\0A\00", align 1
@em28xx_free_device = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_ir_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_ir_fini(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca %struct.em28xx_IR*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %5 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %6 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %5, i32 0, i32 1
  %7 = load %struct.em28xx_IR*, %struct.em28xx_IR** %6, align 8
  store %struct.em28xx_IR* %7, %struct.em28xx_IR** %4, align 8
  %8 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %9 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %8, i32 0, i32 3
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %15 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %20 = call i32 @em28xx_shutdown_buttons(%struct.em28xx* %19)
  %21 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %22 = icmp ne %struct.em28xx_IR* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %37

24:                                               ; preds = %13
  %25 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %26 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @rc_unregister_device(i32 %27)
  %29 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %30 = getelementptr inbounds %struct.em28xx_IR, %struct.em28xx_IR* %29, i32 0, i32 0
  %31 = load %struct.em28xx_IR*, %struct.em28xx_IR** %30, align 8
  %32 = call i32 @kfree(%struct.em28xx_IR* %31)
  %33 = load %struct.em28xx_IR*, %struct.em28xx_IR** %4, align 8
  %34 = call i32 @kfree(%struct.em28xx_IR* %33)
  %35 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %36 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %35, i32 0, i32 1
  store %struct.em28xx_IR* null, %struct.em28xx_IR** %36, align 8
  br label %37

37:                                               ; preds = %24, %23
  %38 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %39 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %38, i32 0, i32 0
  %40 = load i32, i32* @em28xx_free_device, align 4
  %41 = call i32 @kref_put(i32* %39, i32 %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %37, %12
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @em28xx_shutdown_buttons(%struct.em28xx*) #1

declare dso_local i32 @rc_unregister_device(i32) #1

declare dso_local i32 @kfree(%struct.em28xx_IR*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
