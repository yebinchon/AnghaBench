; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tuner = type { i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.analog_demod_ops }
%struct.analog_demod_ops = type { i32 (%struct.TYPE_4__*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Tuner doesn't support mode %d. Putting tuner to sleep\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Changing to mode %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tuner*, i32)* @set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mode(%struct.tuner* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tuner*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.analog_demod_ops*, align 8
  store %struct.tuner* %0, %struct.tuner** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.tuner*, %struct.tuner** %4, align 8
  %8 = getelementptr inbounds %struct.tuner, %struct.tuner* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.analog_demod_ops* %10, %struct.analog_demod_ops** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.tuner*, %struct.tuner** %4, align 8
  %13 = getelementptr inbounds %struct.tuner, %struct.tuner* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %11, %14
  br i1 %15, label %16, label %48

16:                                               ; preds = %2
  %17 = load %struct.tuner*, %struct.tuner** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @check_mode(%struct.tuner* %17, i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %42

23:                                               ; preds = %16
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @dprintk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load %struct.tuner*, %struct.tuner** %4, align 8
  %27 = getelementptr inbounds %struct.tuner, %struct.tuner* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  %28 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %6, align 8
  %29 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_4__*)* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %23
  %33 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %6, align 8
  %34 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %34, align 8
  %36 = load %struct.tuner*, %struct.tuner** %4, align 8
  %37 = getelementptr inbounds %struct.tuner, %struct.tuner* %36, i32 0, i32 2
  %38 = call i32 %35(%struct.TYPE_4__* %37)
  br label %39

39:                                               ; preds = %32, %23
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %49

42:                                               ; preds = %16
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.tuner*, %struct.tuner** %4, align 8
  %45 = getelementptr inbounds %struct.tuner, %struct.tuner* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %42, %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %39
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @check_mode(%struct.tuner*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
