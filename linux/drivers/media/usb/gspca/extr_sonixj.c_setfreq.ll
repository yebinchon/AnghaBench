; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_setfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sonixj.c_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SENSOR_OV7660 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfreq(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %3, align 8
  %10 = load %struct.sd*, %struct.sd** %3, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @SENSOR_OV7660, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %39

15:                                               ; preds = %1
  store i32 223, i32* %4, align 4
  %16 = load %struct.sd*, %struct.sd** %3, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %38 [
    i32 0, label %21
    i32 1, label %26
    i32 2, label %32
  ]

21:                                               ; preds = %15
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = or i32 %23, 32
  %25 = call i32 @i2c_w1(%struct.gspca_dev* %22, i32 19, i32 %24)
  br label %38

26:                                               ; preds = %15
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @i2c_w1(%struct.gspca_dev* %27, i32 19, i32 %28)
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %31 = call i32 @i2c_w1(%struct.gspca_dev* %30, i32 59, i32 10)
  br label %38

32:                                               ; preds = %15
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @i2c_w1(%struct.gspca_dev* %33, i32 19, i32 %34)
  %36 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %37 = call i32 @i2c_w1(%struct.gspca_dev* %36, i32 59, i32 2)
  br label %38

38:                                               ; preds = %15, %32, %26, %21
  br label %72

39:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %40 = load %struct.sd*, %struct.sd** %3, align 8
  %41 = getelementptr inbounds %struct.sd, %struct.sd* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  switch i32 %42, label %45 [
    i32 129, label %43
    i32 128, label %44
  ]

43:                                               ; preds = %39
  store i32 8, i32* %5, align 4
  store i32 1, i32* %7, align 4
  br label %45

44:                                               ; preds = %39
  store i32 17, i32* %5, align 4
  store i32 129, i32* %7, align 4
  br label %45

45:                                               ; preds = %39, %44, %43
  %46 = load %struct.sd*, %struct.sd** %3, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %62 [
    i32 0, label %51
    i32 1, label %52
    i32 2, label %57
  ]

51:                                               ; preds = %45
  br label %62

52:                                               ; preds = %45
  %53 = load i32, i32* %5, align 4
  %54 = or i32 %53, 128
  store i32 %54, i32* %5, align 4
  store i32 172, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %55, 4
  store i32 %56, i32* %7, align 4
  br label %62

57:                                               ; preds = %45
  %58 = load i32, i32* %5, align 4
  %59 = or i32 %58, 128
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %7, align 4
  %61 = or i32 %60, 4
  store i32 %61, i32* %7, align 4
  br label %62

62:                                               ; preds = %45, %57, %52, %51
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %64 = load i32, i32* %5, align 4
  %65 = call i32 @i2c_w1(%struct.gspca_dev* %63, i32 42, i32 %64)
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %67 = load i32, i32* %6, align 4
  %68 = call i32 @i2c_w1(%struct.gspca_dev* %66, i32 43, i32 %67)
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @i2c_w1(%struct.gspca_dev* %69, i32 45, i32 %70)
  br label %72

72:                                               ; preds = %62, %38
  ret void
}

declare dso_local i32 @i2c_w1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
