; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_set_if_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/airspy/extr_airspy.c_airspy_set_if_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airspy = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"val=%d->%d\0A\00", align 1
@CMD_SET_VGA_GAIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"failed=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airspy*)* @airspy_set_if_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airspy_set_if_gain(%struct.airspy* %0) #0 {
  %2 = alloca %struct.airspy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.airspy* %0, %struct.airspy** %2, align 8
  %5 = load %struct.airspy*, %struct.airspy** %2, align 8
  %6 = getelementptr inbounds %struct.airspy, %struct.airspy* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.airspy*, %struct.airspy** %2, align 8
  %9 = getelementptr inbounds %struct.airspy, %struct.airspy* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.airspy*, %struct.airspy** %2, align 8
  %15 = getelementptr inbounds %struct.airspy, %struct.airspy* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %7, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %18)
  %20 = load %struct.airspy*, %struct.airspy** %2, align 8
  %21 = load i32, i32* @CMD_SET_VGA_GAIN, align 4
  %22 = load %struct.airspy*, %struct.airspy** %2, align 8
  %23 = getelementptr inbounds %struct.airspy, %struct.airspy* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @airspy_ctrl_msg(%struct.airspy* %20, i32 %21, i32 0, i32 %26, i32* %4, i32 1)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %1
  %31 = load %struct.airspy*, %struct.airspy** %2, align 8
  %32 = getelementptr inbounds %struct.airspy, %struct.airspy* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %30, %1
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @airspy_ctrl_msg(%struct.airspy*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
