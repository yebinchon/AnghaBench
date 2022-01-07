; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_cx231xx_reset_analog_tuner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cx231xx/extr_cx231xx-dvb.c_cx231xx_reset_analog_tuner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.dvb_tuner_ops }
%struct.dvb_tuner_ops = type { i32 (%struct.TYPE_6__*)* }

@.str = private unnamed_addr constant [31 x i8] c"Reloading firmware for XC5000\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"XC5000 firmware download completed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"XC5000 firmware download failed !!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_reset_analog_tuner(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_tuner_ops*, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %6 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %5, i32 0, i32 2
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = icmp ne %struct.TYPE_5__* %7, null
  br i1 %8, label %9, label %71

9:                                                ; preds = %1
  %10 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %11 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %10, i32 0, i32 2
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %14, i64 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = icmp ne %struct.TYPE_6__* %16, null
  br i1 %17, label %18, label %71

18:                                               ; preds = %9
  %19 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %20 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %23, i64 0
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store %struct.dvb_tuner_ops* %27, %struct.dvb_tuner_ops** %4, align 8
  %28 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %29 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %28, i32 0, i32 0
  %30 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %29, align 8
  %31 = icmp ne i32 (%struct.TYPE_6__*)* %30, null
  br i1 %31, label %32, label %70

32:                                               ; preds = %18
  %33 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %34 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %70, label %37

37:                                               ; preds = %32
  %38 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %39 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @dev_dbg(i32 %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %42 = load %struct.dvb_tuner_ops*, %struct.dvb_tuner_ops** %4, align 8
  %43 = getelementptr inbounds %struct.dvb_tuner_ops, %struct.dvb_tuner_ops* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %43, align 8
  %45 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %46 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %45, i32 0, i32 2
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %49, i64 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = call i32 %44(%struct.TYPE_6__* %51)
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %62

55:                                               ; preds = %37
  %56 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %59 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %69

62:                                               ; preds = %37
  %63 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %66 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %69

69:                                               ; preds = %62, %55
  br label %70

70:                                               ; preds = %69, %32, %18
  br label %71

71:                                               ; preds = %70, %9, %1
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
