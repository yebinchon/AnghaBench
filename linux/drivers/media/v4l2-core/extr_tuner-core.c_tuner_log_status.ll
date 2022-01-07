; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_log_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/v4l2-core/extr_tuner-core.c_tuner_log_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_subdev = type { i32 }
%struct.tuner = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.analog_demod_ops }
%struct.analog_demod_ops = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.v4l2_subdev*)* @tuner_log_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tuner_log_status(%struct.v4l2_subdev* %0) #0 {
  %2 = alloca %struct.v4l2_subdev*, align 8
  %3 = alloca %struct.tuner*, align 8
  %4 = alloca %struct.analog_demod_ops*, align 8
  store %struct.v4l2_subdev* %0, %struct.v4l2_subdev** %2, align 8
  %5 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %2, align 8
  %6 = call %struct.tuner* @to_tuner(%struct.v4l2_subdev* %5)
  store %struct.tuner* %6, %struct.tuner** %3, align 8
  %7 = load %struct.tuner*, %struct.tuner** %3, align 8
  %8 = getelementptr inbounds %struct.tuner, %struct.tuner* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.analog_demod_ops* %10, %struct.analog_demod_ops** %4, align 8
  %11 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %4, align 8
  %12 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %11, i32 0, i32 0
  %13 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %12, align 8
  %14 = icmp ne i32 (%struct.TYPE_4__*)* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.analog_demod_ops*, %struct.analog_demod_ops** %4, align 8
  %17 = getelementptr inbounds %struct.analog_demod_ops, %struct.analog_demod_ops* %16, i32 0, i32 0
  %18 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %17, align 8
  %19 = load %struct.tuner*, %struct.tuner** %3, align 8
  %20 = getelementptr inbounds %struct.tuner, %struct.tuner* %19, i32 0, i32 0
  %21 = call i32 %18(%struct.TYPE_4__* %20)
  br label %22

22:                                               ; preds = %15, %1
  ret i32 0
}

declare dso_local %struct.tuner* @to_tuner(%struct.v4l2_subdev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
