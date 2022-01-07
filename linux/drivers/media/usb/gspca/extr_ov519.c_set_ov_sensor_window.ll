; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_set_ov_sensor_window.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_ov519.c_set_ov_sensor_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32, i32, %struct.gspca_dev }
%struct.gspca_dev = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sd*)* @set_ov_sensor_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_ov_sensor_window(%struct.sd* %0) #0 {
  %2 = alloca %struct.sd*, align 8
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %2, align 8
  %12 = load %struct.sd*, %struct.sd** %2, align 8
  %13 = getelementptr inbounds %struct.sd, %struct.sd* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %23 [
    i32 143, label %15
    i32 142, label %15
    i32 141, label %15
    i32 131, label %15
    i32 128, label %15
    i32 132, label %18
  ]

15:                                               ; preds = %1, %1, %1, %1, %1
  %16 = load %struct.sd*, %struct.sd** %2, align 8
  %17 = call i32 @mode_init_ov_sensor_regs(%struct.sd* %16)
  br label %129

18:                                               ; preds = %1
  %19 = load %struct.sd*, %struct.sd** %2, align 8
  %20 = call i32 @ov519_set_mode(%struct.sd* %19)
  %21 = load %struct.sd*, %struct.sd** %2, align 8
  %22 = call i32 @ov519_set_fr(%struct.sd* %21)
  br label %129

23:                                               ; preds = %1
  %24 = load %struct.sd*, %struct.sd** %2, align 8
  %25 = getelementptr inbounds %struct.sd, %struct.sd* %24, i32 0, i32 3
  store %struct.gspca_dev* %25, %struct.gspca_dev** %3, align 8
  %26 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %27 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = and i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %38 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %42 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = and i32 %46, 2
  store i32 %47, i32* %5, align 4
  %48 = load %struct.sd*, %struct.sd** %2, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %79 [
    i32 129, label %51
    i32 137, label %52
    i32 130, label %52
    i32 140, label %53
    i32 139, label %53
    i32 138, label %53
    i32 136, label %77
    i32 135, label %77
    i32 134, label %78
    i32 133, label %78
  ]

51:                                               ; preds = %23
  store i32 30, i32* %6, align 4
  store i32 30, i32* %7, align 4
  store i32 2, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %80

52:                                               ; preds = %23, %23
  store i32 56, i32* %6, align 4
  store i32 58, i32* %7, align 4
  store i32 5, i32* %9, align 4
  store i32 5, i32* %8, align 4
  br label %80

53:                                               ; preds = %23, %23, %23
  store i32 56, i32* %6, align 4
  store i32 58, i32* %7, align 4
  store i32 5, i32* %8, align 4
  store i32 6, i32* %9, align 4
  %54 = load %struct.sd*, %struct.sd** %2, align 8
  %55 = getelementptr inbounds %struct.sd, %struct.sd* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 138
  br i1 %57, label %58, label %64

58:                                               ; preds = %53
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %58
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %61, %58, %53
  %65 = load i32, i32* %5, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %76

67:                                               ; preds = %64
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 8
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %7, align 4
  %71 = add nsw i32 %70, 8
  store i32 %71, i32* %7, align 4
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, 11
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 11
  store i32 %75, i32* %9, align 4
  br label %76

76:                                               ; preds = %67, %64
  br label %80

77:                                               ; preds = %23, %23
  store i32 47, i32* %6, align 4
  store i32 47, i32* %7, align 4
  store i32 5, i32* %9, align 4
  store i32 5, i32* %8, align 4
  br label %80

78:                                               ; preds = %23, %23
  store i32 26, i32* %6, align 4
  store i32 26, i32* %7, align 4
  store i32 3, i32* %9, align 4
  store i32 3, i32* %8, align 4
  br label %80

79:                                               ; preds = %23
  br label %129

80:                                               ; preds = %78, %77, %76, %52, %51
  %81 = load %struct.sd*, %struct.sd** %2, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  switch i32 %83, label %96 [
    i32 140, label %84
    i32 139, label %84
    i32 138, label %84
    i32 129, label %90
  ]

84:                                               ; preds = %80, %80, %80
  %85 = load i32, i32* %4, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %84
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %89

88:                                               ; preds = %84
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %89

89:                                               ; preds = %88, %87
  br label %102

90:                                               ; preds = %80
  %91 = load i32, i32* %4, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %95

94:                                               ; preds = %90
  store i32 2, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %95

95:                                               ; preds = %94, %93
  br label %102

96:                                               ; preds = %80
  %97 = load i32, i32* %4, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  store i32 1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %101

100:                                              ; preds = %96
  store i32 2, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %99
  br label %102

102:                                              ; preds = %101, %95, %89
  %103 = load %struct.sd*, %struct.sd** %2, align 8
  %104 = call i32 @mode_init_ov_sensor_regs(%struct.sd* %103)
  %105 = load %struct.sd*, %struct.sd** %2, align 8
  %106 = load i32, i32* %6, align 4
  %107 = call i32 @i2c_w(%struct.sd* %105, i32 23, i32 %106)
  %108 = load %struct.sd*, %struct.sd** %2, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.sd*, %struct.sd** %2, align 8
  %111 = getelementptr inbounds %struct.sd, %struct.sd* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = ashr i32 %112, %113
  %115 = add nsw i32 %109, %114
  %116 = call i32 @i2c_w(%struct.sd* %108, i32 24, i32 %115)
  %117 = load %struct.sd*, %struct.sd** %2, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i32 @i2c_w(%struct.sd* %117, i32 25, i32 %118)
  %120 = load %struct.sd*, %struct.sd** %2, align 8
  %121 = load i32, i32* %9, align 4
  %122 = load %struct.sd*, %struct.sd** %2, align 8
  %123 = getelementptr inbounds %struct.sd, %struct.sd* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = load i32, i32* %11, align 4
  %126 = ashr i32 %124, %125
  %127 = add nsw i32 %121, %126
  %128 = call i32 @i2c_w(%struct.sd* %120, i32 26, i32 %127)
  br label %129

129:                                              ; preds = %102, %79, %18, %15
  ret void
}

declare dso_local i32 @mode_init_ov_sensor_regs(%struct.sd*) #1

declare dso_local i32 @ov519_set_mode(%struct.sd*) #1

declare dso_local i32 @ov519_set_fr(%struct.sd*) #1

declare dso_local i32 @i2c_w(%struct.sd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
