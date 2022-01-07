; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_hvflip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_sn9c20x.c_set_hvflip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@FLIP_DETECT = common dso_local global i32 0, align 4
@flip_dmi_table = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32)* @set_hvflip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_hvflip(%struct.gspca_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sd*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = bitcast %struct.gspca_dev* %11 to %struct.sd*
  store %struct.sd* %12, %struct.sd** %10, align 8
  %13 = load %struct.sd*, %struct.sd** %10, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FLIP_DETECT, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %32

19:                                               ; preds = %3
  %20 = load i32, i32* @flip_dmi_table, align 4
  %21 = call i64 @dmi_check_system(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %19
  %24 = load i32, i32* %5, align 4
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %6, align 4
  br label %32

32:                                               ; preds = %23, %19, %3
  %33 = load %struct.sd*, %struct.sd** %10, align 8
  %34 = getelementptr inbounds %struct.sd, %struct.sd* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %145 [
    i32 129, label %36
    i32 128, label %62
    i32 131, label %85
    i32 132, label %85
    i32 133, label %105
    i32 134, label %105
    i32 130, label %105
    i32 135, label %125
  ]

36:                                               ; preds = %32
  store i32 1, i32* %7, align 4
  %37 = load i32, i32* %5, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %36
  %40 = load i32, i32* %7, align 4
  %41 = or i32 %40, 32
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %36
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load i32, i32* %7, align 4
  %47 = or i32 %46, 16
  store i32 %47, i32* %7, align 4
  %48 = load %struct.sd*, %struct.sd** %10, align 8
  %49 = getelementptr inbounds %struct.sd, %struct.sd* %48, i32 0, i32 2
  store i32 2, i32* %49, align 4
  br label %53

50:                                               ; preds = %42
  %51 = load %struct.sd*, %struct.sd** %10, align 8
  %52 = getelementptr inbounds %struct.sd, %struct.sd* %51, i32 0, i32 2
  store i32 3, i32* %52, align 4
  br label %53

53:                                               ; preds = %50, %45
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %55 = load %struct.sd*, %struct.sd** %10, align 8
  %56 = getelementptr inbounds %struct.sd, %struct.sd* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @reg_w1(%struct.gspca_dev* %54, i32 4482, i32 %57)
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @i2c_w1(%struct.gspca_dev* %59, i32 30, i32 %60)
  br label %145

62:                                               ; preds = %32
  %63 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %64 = call i32 @i2c_r1(%struct.gspca_dev* %63, i32 30, i32* %7)
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, -49
  store i32 %66, i32* %7, align 4
  store i32 1, i32* %8, align 4
  %67 = load i32, i32* %5, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %7, align 4
  %71 = or i32 %70, 32
  store i32 %71, i32* %7, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32, i32* %6, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = or i32 %76, 16
  store i32 %77, i32* %7, align 4
  store i32 73, i32* %8, align 4
  br label %78

78:                                               ; preds = %75, %72
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @i2c_w1(%struct.gspca_dev* %79, i32 30, i32 %80)
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @i2c_w1(%struct.gspca_dev* %82, i32 58, i32 %83)
  br label %145

85:                                               ; preds = %32, %32
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %87 = call i32 @i2c_r2(%struct.gspca_dev* %86, i32 32, i32* %9)
  %88 = load i32, i32* %9, align 4
  %89 = and i32 %88, -49313
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %85
  %93 = load i32, i32* %9, align 4
  %94 = or i32 %93, 32896
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %85
  %96 = load i32, i32* %6, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load i32, i32* %9, align 4
  %100 = or i32 %99, 16416
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %98, %95
  %102 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @i2c_w2(%struct.gspca_dev* %102, i32 32, i32 %103)
  br label %145

105:                                              ; preds = %32, %32, %32
  %106 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %107 = call i32 @i2c_r2(%struct.gspca_dev* %106, i32 32, i32* %9)
  %108 = load i32, i32* %9, align 4
  %109 = and i32 %108, -4
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %105
  %113 = load i32, i32* %9, align 4
  %114 = or i32 %113, 2
  store i32 %114, i32* %9, align 4
  br label %115

115:                                              ; preds = %112, %105
  %116 = load i32, i32* %6, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %9, align 4
  %120 = or i32 %119, 1
  store i32 %120, i32* %9, align 4
  br label %121

121:                                              ; preds = %118, %115
  %122 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @i2c_w2(%struct.gspca_dev* %122, i32 32, i32 %123)
  br label %145

125:                                              ; preds = %32
  %126 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %127 = call i32 @i2c_r1(%struct.gspca_dev* %126, i32 1, i32* %7)
  %128 = load i32, i32* %7, align 4
  %129 = and i32 %128, -4
  store i32 %129, i32* %7, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load i32, i32* %7, align 4
  %134 = or i32 %133, 1
  store i32 %134, i32* %7, align 4
  br label %135

135:                                              ; preds = %132, %125
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = or i32 %139, 2
  store i32 %140, i32* %7, align 4
  br label %141

141:                                              ; preds = %138, %135
  %142 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %143 = load i32, i32* %7, align 4
  %144 = call i32 @i2c_w1(%struct.gspca_dev* %142, i32 1, i32 %143)
  br label %145

145:                                              ; preds = %32, %141, %121, %101, %78, %53
  ret void
}

declare dso_local i64 @dmi_check_system(i32) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_w1(%struct.gspca_dev*, i32, i32) #1

declare dso_local i32 @i2c_r1(%struct.gspca_dev*, i32, i32*) #1

declare dso_local i32 @i2c_r2(%struct.gspca_dev*, i32, i32*) #1

declare dso_local i32 @i2c_w2(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
