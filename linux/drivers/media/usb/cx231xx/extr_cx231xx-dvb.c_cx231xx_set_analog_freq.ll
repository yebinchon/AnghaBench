; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_cx231xx_set_analog_freq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_cx231xx_set_analog_freq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32 (%struct.TYPE_6__*, %struct.analog_parameters*)* }
%struct.analog_parameters = type opaque
%struct.analog_parameters.0 = type { i64, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_set_analog_freq(%struct.cx231xx* %0, i32 %1) #0 {
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dvb_tuner_ops*, align 8
  %6 = alloca %struct.analog_parameters.0, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %8 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %7, i32 0, i32 0
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = icmp ne %struct.TYPE_5__* %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %2
  %12 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %16, i64 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* %18, null
  br i1 %19, label %20, label %55

20:                                               ; preds = %11
  %21 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %25, i64 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  store %struct.dvb_tuner_ops* %29, %struct.dvb_tuner_ops** %5, align 8
  %30 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %5, align 8
  %31 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %30, i32 0, i32 0
  %32 = load i32 (%struct.TYPE_6__*, %struct.analog_parameters*)*, i32 (%struct.TYPE_6__*, %struct.analog_parameters*)** %31, align 8
  %33 = icmp ne i32 (%struct.TYPE_6__*, %struct.analog_parameters*)* %32, null
  br i1 %33, label %34, label %54

34:                                               ; preds = %20
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %6, i32 0, i32 2
  store i32 %35, i32* %36, align 4
  %37 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %38 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %6, i32 0, i32 1
  store i32 %39, i32* %40, align 8
  %41 = getelementptr inbounds %struct.analog_parameters.0, %struct.analog_parameters.0* %6, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %5, align 8
  %43 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_6__*, %struct.analog_parameters*)*, i32 (%struct.TYPE_6__*, %struct.analog_parameters*)** %43, align 8
  %45 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = bitcast %struct.analog_parameters.0* %6 to %struct.analog_parameters*
  %53 = call i32 %44(%struct.TYPE_6__* %51, %struct.analog_parameters* %52)
  br label %54

54:                                               ; preds = %34, %20
  br label %55

55:                                               ; preds = %54, %11, %2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
