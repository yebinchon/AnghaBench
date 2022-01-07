; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_duplicate_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/em28xx/extr_em28xx-cards.c_em28xx_duplicate_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, %struct.em28xx*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@em28xx_devused = common dso_local global i32 0, align 4
@EM28XX_MAXBOARDS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c": Supports only %i em28xx boards.\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"em28xx #%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx*)* @em28xx_duplicate_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @em28xx_duplicate_dev(%struct.em28xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.em28xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.em28xx*, align 8
  store %struct.em28xx* %0, %struct.em28xx** %3, align 8
  %6 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.em28xx* @kmemdup(%struct.em28xx* %6, i32 32, i32 %7)
  store %struct.em28xx* %8, %struct.em28xx** %5, align 8
  %9 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %10 = icmp ne %struct.em28xx* %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %1
  %12 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %13 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %12, i32 0, i32 1
  store %struct.em28xx* null, %struct.em28xx** %13, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %57

16:                                               ; preds = %1
  br label %17

17:                                               ; preds = %38, %16
  %18 = load i32, i32* @em28xx_devused, align 4
  %19 = load i32, i32* @EM28XX_MAXBOARDS, align 4
  %20 = call i32 @find_first_zero_bit(i32 %18, i32 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @EM28XX_MAXBOARDS, align 4
  %23 = icmp sge i32 %21, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %17
  %25 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %26 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* @EM28XX_MAXBOARDS, align 4
  %30 = call i32 @dev_warn(i32* %28, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %32 = call i32 @kfree(%struct.em28xx* %31)
  %33 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %34 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %33, i32 0, i32 1
  store %struct.em28xx* null, %struct.em28xx** %34, align 8
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %57

37:                                               ; preds = %17
  br label %38

38:                                               ; preds = %37
  %39 = load i32, i32* %4, align 4
  %40 = load i32, i32* @em28xx_devused, align 4
  %41 = call i64 @test_and_set_bit(i32 %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %17, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* %4, align 4
  %45 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %46 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 8
  %47 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %48 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @snprintf(i32 %49, i32 28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %50)
  %52 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %53 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %52, i32 0, i32 1
  store %struct.em28xx* null, %struct.em28xx** %53, align 8
  %54 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %55 = load %struct.em28xx*, %struct.em28xx** %3, align 8
  %56 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %55, i32 0, i32 1
  store %struct.em28xx* %54, %struct.em28xx** %56, align 8
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %43, %24, %11
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.em28xx* @kmemdup(%struct.em28xx*, i32, i32) #1

declare dso_local i32 @find_first_zero_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @kfree(%struct.em28xx*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
