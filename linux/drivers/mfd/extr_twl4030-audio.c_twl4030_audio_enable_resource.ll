; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-audio.c_twl4030_audio_enable_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-audio.c_twl4030_audio_enable_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.twl4030_audio = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@twl4030_audio_dev = common dso_local global %struct.TYPE_5__* null, align 8
@TWL4030_AUDIO_RES_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid resource ID (%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl4030_audio_enable_resource(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.twl4030_audio*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @twl4030_audio_dev, align 8
  %7 = call %struct.twl4030_audio* @platform_get_drvdata(%struct.TYPE_5__* %6)
  store %struct.twl4030_audio* %7, %struct.twl4030_audio** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @TWL4030_AUDIO_RES_MAX, align 4
  %10 = icmp uge i32 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @twl4030_audio_dev, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @dev_err(i32* %13, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %51

18:                                               ; preds = %1
  %19 = load %struct.twl4030_audio*, %struct.twl4030_audio** %4, align 8
  %20 = getelementptr inbounds %struct.twl4030_audio, %struct.twl4030_audio* %19, i32 0, i32 0
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.twl4030_audio*, %struct.twl4030_audio** %4, align 8
  %23 = getelementptr inbounds %struct.twl4030_audio, %struct.twl4030_audio* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @twl4030_audio_set_resource(i32 %32, i32 1)
  store i32 %33, i32* %5, align 4
  br label %37

34:                                               ; preds = %18
  %35 = load i32, i32* %3, align 4
  %36 = call i32 @twl4030_audio_get_resource(i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.twl4030_audio*, %struct.twl4030_audio** %4, align 8
  %39 = getelementptr inbounds %struct.twl4030_audio, %struct.twl4030_audio* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.twl4030_audio*, %struct.twl4030_audio** %4, align 8
  %48 = getelementptr inbounds %struct.twl4030_audio, %struct.twl4030_audio* %47, i32 0, i32 0
  %49 = call i32 @mutex_unlock(i32* %48)
  %50 = load i32, i32* %5, align 4
  store i32 %50, i32* %2, align 4
  br label %51

51:                                               ; preds = %37, %11
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local %struct.twl4030_audio* @platform_get_drvdata(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @twl4030_audio_set_resource(i32, i32) #1

declare dso_local i32 @twl4030_audio_get_resource(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
