; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_configure_sensor_output.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_configure_sensor_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@MODE_SXGA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @configure_sensor_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @configure_sensor_output(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %5, align 8
  %9 = load %struct.sd*, %struct.sd** %5, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %105 [
    i32 128, label %12
    i32 129, label %48
    i32 130, label %85
    i32 131, label %85
  ]

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load i32, i32* @MODE_SXGA, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %32

17:                                               ; preds = %12
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @i2c_w1(%struct.gspca_dev* %18, i32 23, i32 29)
  %20 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %21 = call i32 @i2c_w1(%struct.gspca_dev* %20, i32 24, i32 189)
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = call i32 @i2c_w1(%struct.gspca_dev* %22, i32 25, i32 1)
  %24 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %25 = call i32 @i2c_w1(%struct.gspca_dev* %24, i32 26, i32 129)
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = call i32 @i2c_w1(%struct.gspca_dev* %26, i32 18, i32 0)
  %28 = load %struct.sd*, %struct.sd** %5, align 8
  %29 = getelementptr inbounds %struct.sd, %struct.sd* %28, i32 0, i32 1
  store i32 140, i32* %29, align 4
  %30 = load %struct.sd*, %struct.sd** %5, align 8
  %31 = getelementptr inbounds %struct.sd, %struct.sd* %30, i32 0, i32 2
  store i32 19, i32* %31, align 4
  br label %47

32:                                               ; preds = %12
  %33 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %34 = call i32 @i2c_w1(%struct.gspca_dev* %33, i32 23, i32 19)
  %35 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %36 = call i32 @i2c_w1(%struct.gspca_dev* %35, i32 24, i32 99)
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = call i32 @i2c_w1(%struct.gspca_dev* %37, i32 25, i32 1)
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %40 = call i32 @i2c_w1(%struct.gspca_dev* %39, i32 26, i32 121)
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = call i32 @i2c_w1(%struct.gspca_dev* %41, i32 18, i32 64)
  %43 = load %struct.sd*, %struct.sd** %5, align 8
  %44 = getelementptr inbounds %struct.sd, %struct.sd* %43, i32 0, i32 1
  store i32 60, i32* %44, align 4
  %45 = load %struct.sd*, %struct.sd** %5, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 2
  store i32 11, i32* %46, align 4
  br label %47

47:                                               ; preds = %32, %17
  br label %105

48:                                               ; preds = %2
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @MODE_SXGA, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %48
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %55 = call i32 @i2c_w1(%struct.gspca_dev* %54, i32 23, i32 27)
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %57 = call i32 @i2c_w1(%struct.gspca_dev* %56, i32 24, i32 188)
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %59 = call i32 @i2c_w1(%struct.gspca_dev* %58, i32 25, i32 1)
  %60 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %61 = call i32 @i2c_w1(%struct.gspca_dev* %60, i32 26, i32 130)
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %63 = call i32 @i2c_r1(%struct.gspca_dev* %62, i32 18, i32* %6)
  %64 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %65 = load i32, i32* %6, align 4
  %66 = and i32 %65, 7
  %67 = call i32 @i2c_w1(%struct.gspca_dev* %64, i32 18, i32 %66)
  br label %84

68:                                               ; preds = %48
  %69 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %70 = call i32 @i2c_w1(%struct.gspca_dev* %69, i32 23, i32 36)
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %72 = call i32 @i2c_w1(%struct.gspca_dev* %71, i32 24, i32 197)
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %74 = call i32 @i2c_w1(%struct.gspca_dev* %73, i32 25, i32 0)
  %75 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %76 = call i32 @i2c_w1(%struct.gspca_dev* %75, i32 26, i32 60)
  %77 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %78 = call i32 @i2c_r1(%struct.gspca_dev* %77, i32 18, i32* %6)
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %80 = load i32, i32* %6, align 4
  %81 = and i32 %80, 7
  %82 = or i32 %81, 64
  %83 = call i32 @i2c_w1(%struct.gspca_dev* %79, i32 18, i32 %82)
  br label %84

84:                                               ; preds = %68, %53
  br label %105

85:                                               ; preds = %2, %2
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @MODE_SXGA, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %97

90:                                               ; preds = %85
  %91 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %92 = call i32 @i2c_w2(%struct.gspca_dev* %91, i32 240, i32 2)
  %93 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %94 = call i32 @i2c_w2(%struct.gspca_dev* %93, i32 200, i32 38667)
  %95 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %96 = call i32 @i2c_w2(%struct.gspca_dev* %95, i32 240, i32 0)
  br label %104

97:                                               ; preds = %85
  %98 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %99 = call i32 @i2c_w2(%struct.gspca_dev* %98, i32 240, i32 2)
  %100 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %101 = call i32 @i2c_w2(%struct.gspca_dev* %100, i32 200, i32 32768)
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %103 = call i32 @i2c_w2(%struct.gspca_dev* %102, i32 240, i32 0)
  br label %104

104:                                              ; preds = %97, %90
  br label %105

105:                                              ; preds = %2, %104, %84, %47
  ret void
}

declare dso_local i32 @i2c_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_r1(%struct.gspca_dev*, i32, i32*) #1

declare dso_local i32 @i2c_w2(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
