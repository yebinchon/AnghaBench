; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_free_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_free_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kref = type { i32 }
%struct.em28xx = type { i64, %struct.em28xx*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"Freeing device\0A\00", align 1
@PRIMARY_TS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @em28xx_free_device(%struct.kref* %0) #0 {
  %2 = alloca %struct.kref*, align 8
  %3 = alloca %struct.em28xx*, align 8
  store %struct.kref* %0, %struct.kref** %2, align 8
  %4 = load %struct.kref*, %struct.kref** %2, align 8
  %5 = call %struct.em28xx* @kref_to_dev(%struct.kref* %4)
  store %struct.em28xx* %5, %struct.em28xx** %3, align 8
  %6 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %7 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = call i32 @dev_info(i32* %9, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %17 = call i32 @em28xx_release_resources(%struct.em28xx* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %20 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PRIMARY_TS, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 1
  %27 = load %struct.em28xx*, %struct.em28xx** %26, align 8
  %28 = call i32 @kfree(%struct.em28xx* %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %31 = call i32 @kfree(%struct.em28xx* %30)
  ret void
}

declare dso_local %struct.em28xx* @kref_to_dev(%struct.kref*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @em28xx_release_resources(%struct.em28xx*) #1

declare dso_local i32 @kfree(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
