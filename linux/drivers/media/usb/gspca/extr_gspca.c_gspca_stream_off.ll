; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_gspca_stream_off.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_gspca.c_gspca_stream_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, %struct.TYPE_2__*, i64, i64 }
%struct.TYPE_2__ = type { i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)* }

@D_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"stream off OK\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @gspca_stream_off to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gspca_stream_off(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %3 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %4 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %3, i32 0, i32 0
  store i32 0, i32* %4, align 8
  %5 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %6 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %5, i32 0, i32 3
  store i64 0, i64* %6, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 1
  %11 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %10, align 8
  %12 = icmp ne i32 (%struct.gspca_dev*)* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %1
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %17, align 8
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %20 = call i32 %18(%struct.gspca_dev* %19)
  br label %21

21:                                               ; preds = %13, %1
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = call i32 @destroy_urbs(%struct.gspca_dev* %22)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %25 = call i32 @gspca_input_destroy_urb(%struct.gspca_dev* %24)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %27 = call i32 @gspca_set_alt0(%struct.gspca_dev* %26)
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %21
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = call i32 @gspca_input_create_urb(%struct.gspca_dev* %33)
  br label %35

35:                                               ; preds = %32, %21
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %39, align 8
  %41 = icmp ne i32 (%struct.gspca_dev*)* %40, null
  br i1 %41, label %42, label %50

42:                                               ; preds = %35
  %43 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %44 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %43, i32 0, i32 1
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32 (%struct.gspca_dev*)*, i32 (%struct.gspca_dev*)** %46, align 8
  %48 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %49 = call i32 %47(%struct.gspca_dev* %48)
  br label %50

50:                                               ; preds = %42, %35
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %52 = load i32, i32* @D_STREAM, align 4
  %53 = call i32 @gspca_dbg(%struct.gspca_dev* %51, i32 %52, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @destroy_urbs(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_input_destroy_urb(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_set_alt0(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_input_create_urb(%struct.gspca_dev*) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
