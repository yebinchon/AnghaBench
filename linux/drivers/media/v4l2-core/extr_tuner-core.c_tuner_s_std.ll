; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_s_std.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_s_std.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tuner = type { i32 }

@V4L2_TUNER_ANALOG_TV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Fixup standard %llx to %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*, i32)* @tuner_s_std to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_s_std(%struct.v4l2_subdev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.v4l2_subdev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.tuner*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %4, align 8
  %8 = call %struct.tuner* @to_tuner(%struct.v4l2_subdev* %7)
  store %struct.tuner* %8, %struct.tuner** %6, align 8
  %9 = load %struct.tuner*, %struct.tuner** %6, align 8
  %10 = load i32, i32* @V4L2_TUNER_ANALOG_TV, align 4
  %11 = call i64 @set_mode(%struct.tuner* %9, i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

14:                                               ; preds = %2
  %15 = load %struct.tuner*, %struct.tuner** %6, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @tuner_fixup_std(%struct.tuner* %15, i32 %16)
  %18 = load %struct.tuner*, %struct.tuner** %6, align 8
  %19 = getelementptr inbounds %struct.tuner, %struct.tuner* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load %struct.tuner*, %struct.tuner** %6, align 8
  %21 = getelementptr inbounds %struct.tuner, %struct.tuner* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %31

25:                                               ; preds = %14
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.tuner*, %struct.tuner** %6, align 8
  %28 = getelementptr inbounds %struct.tuner, %struct.tuner* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29)
  br label %31

31:                                               ; preds = %25, %14
  %32 = load %struct.tuner*, %struct.tuner** %6, align 8
  %33 = call i32 @set_freq(%struct.tuner* %32, i32 0)
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %31, %13
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local %struct.tuner* @to_tuner(%struct.v4l2_subdev*) #1

declare dso_local i64 @set_mode(%struct.tuner*, i32) #1

declare dso_local i32 @tuner_fixup_std(%struct.tuner*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @set_freq(%struct.tuner*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
