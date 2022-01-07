; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_set_mixer_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_set_mixer_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airspy = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"mixer auto=%d->%d val=%d->%d\0A\00", align 1
@CMD_SET_MIXER_AGC = common dso_local global i32 0, align 4
@CMD_SET_MIXER_GAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airspy*)* @airspy_set_mixer_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airspy_set_mixer_gain(%struct.airspy* %0) #0 {
  %2 = alloca %struct.airspy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.airspy* %0, %struct.airspy** %2, align 8
  %5 = load %struct.airspy*, %struct.airspy** %2, align 8
  %6 = getelementptr inbounds %struct.airspy, %struct.airspy* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.airspy*, %struct.airspy** %2, align 8
  %9 = getelementptr inbounds %struct.airspy, %struct.airspy* %8, i32 0, i32 2
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.airspy*, %struct.airspy** %2, align 8
  %15 = getelementptr inbounds %struct.airspy, %struct.airspy* %14, i32 0, i32 2
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.airspy*, %struct.airspy** %2, align 8
  %20 = getelementptr inbounds %struct.airspy, %struct.airspy* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.airspy*, %struct.airspy** %2, align 8
  %26 = getelementptr inbounds %struct.airspy, %struct.airspy* %25, i32 0, i32 1
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18, i32 %24, i32 %29)
  %31 = load %struct.airspy*, %struct.airspy** %2, align 8
  %32 = load i32, i32* @CMD_SET_MIXER_AGC, align 4
  %33 = load %struct.airspy*, %struct.airspy** %2, align 8
  %34 = getelementptr inbounds %struct.airspy, %struct.airspy* %33, i32 0, i32 2
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @airspy_ctrl_msg(%struct.airspy* %31, i32 %32, i32 0, i32 %37, i32* %4, i32 1)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %1
  br label %63

42:                                               ; preds = %1
  %43 = load %struct.airspy*, %struct.airspy** %2, align 8
  %44 = getelementptr inbounds %struct.airspy, %struct.airspy* %43, i32 0, i32 2
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %62

49:                                               ; preds = %42
  %50 = load %struct.airspy*, %struct.airspy** %2, align 8
  %51 = load i32, i32* @CMD_SET_MIXER_GAIN, align 4
  %52 = load %struct.airspy*, %struct.airspy** %2, align 8
  %53 = getelementptr inbounds %struct.airspy, %struct.airspy* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @airspy_ctrl_msg(%struct.airspy* %50, i32 %51, i32 0, i32 %56, i32* %4, i32 1)
  store i32 %57, i32* %3, align 4
  %58 = load i32, i32* %3, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %49
  br label %63

61:                                               ; preds = %49
  br label %62

62:                                               ; preds = %61, %42
  br label %63

63:                                               ; preds = %62, %60, %41
  %64 = load i32, i32* %3, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = load %struct.airspy*, %struct.airspy** %2, align 8
  %68 = getelementptr inbounds %struct.airspy, %struct.airspy* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* %3, align 4
  %71 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %69, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @airspy_ctrl_msg(%struct.airspy*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
