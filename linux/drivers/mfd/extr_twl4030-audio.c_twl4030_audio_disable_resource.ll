; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-audio.c_twl4030_audio_disable_resource.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl4030-audio.c_twl4030_audio_disable_resource.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32 }
%struct.twl4030_audio = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@twl4030_audio_dev = common dso_local global %struct.TYPE_5__* null, align 8
@TWL4030_AUDIO_RES_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Invalid resource ID (%u)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Resource has been disabled already (%u)\0A\00", align 1
@EPERM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl4030_audio_disable_resource(i32 %0) #0 {
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
  br label %71

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
  br i1 %30, label %41, label %31

31:                                               ; preds = %18
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** @twl4030_audio_dev, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @dev_err(i32* %33, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.twl4030_audio*, %struct.twl4030_audio** %4, align 8
  %37 = getelementptr inbounds %struct.twl4030_audio, %struct.twl4030_audio* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %71

41:                                               ; preds = %18
  %42 = load %struct.twl4030_audio*, %struct.twl4030_audio** %4, align 8
  %43 = getelementptr inbounds %struct.twl4030_audio, %struct.twl4030_audio* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load i32, i32* %3, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %48, align 4
  %51 = load %struct.twl4030_audio*, %struct.twl4030_audio** %4, align 8
  %52 = getelementptr inbounds %struct.twl4030_audio, %struct.twl4030_audio* %51, i32 0, i32 1
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = load i32, i32* %3, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %41
  %61 = load i32, i32* %3, align 4
  %62 = call i32 @twl4030_audio_set_resource(i32 %61, i32 0)
  store i32 %62, i32* %5, align 4
  br label %66

63:                                               ; preds = %41
  %64 = load i32, i32* %3, align 4
  %65 = call i32 @twl4030_audio_get_resource(i32 %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %63, %60
  %67 = load %struct.twl4030_audio*, %struct.twl4030_audio** %4, align 8
  %68 = getelementptr inbounds %struct.twl4030_audio, %struct.twl4030_audio* %67, i32 0, i32 0
  %69 = call i32 @mutex_unlock(i32* %68)
  %70 = load i32, i32* %5, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %66, %31, %11
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local %struct.twl4030_audio* @platform_get_drvdata(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @twl4030_audio_set_resource(i32, i32) #1

declare dso_local i32 @twl4030_audio_get_resource(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
