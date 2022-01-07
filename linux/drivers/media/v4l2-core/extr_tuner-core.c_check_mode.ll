; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_check_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_check_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuner = type { i32 }

@V4L2_TUNER_RADIO = common dso_local global i32 0, align 4
@T_RADIO = common dso_local global i32 0, align 4
@T_ANALOG_TV = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tuner*, i32)* @check_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_mode(%struct.tuner* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tuner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.tuner* %0, %struct.tuner** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @V4L2_TUNER_RADIO, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @T_RADIO, align 4
  store i32 %11, i32* %6, align 4
  br label %14

12:                                               ; preds = %2
  %13 = load i32, i32* @T_ANALOG_TV, align 4
  store i32 %13, i32* %6, align 4
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.tuner*, %struct.tuner** %4, align 8
  %17 = getelementptr inbounds %struct.tuner, %struct.tuner* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %15, %18
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %14
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %25

24:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %21
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
