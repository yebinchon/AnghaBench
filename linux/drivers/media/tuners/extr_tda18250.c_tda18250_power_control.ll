; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_power_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_power_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.tda18250_dev = type { i32, i32 }

@.str = private unnamed_addr constant [16 x i8] c"power state: %d\00", align 1
@R06_POWER2 = common dso_local global i32 0, align 4
@R25_REF = common dso_local global i32 0, align 4
@R10_LT1 = common dso_local global i32 0, align 4
@R0D_AGC12 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32)* @tda18250_power_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18250_power_control(%struct.dvb_frontend* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca %struct.tda18250_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %11 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %10, i32 0, i32 0
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = call %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client* %13)
  store %struct.tda18250_dev* %14, %struct.tda18250_dev** %7, align 8
  %15 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %16 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %15, i32 0, i32 0
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @dev_dbg(i32* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %130 [
    i32 129, label %20
    i32 128, label %39
  ]

20:                                               ; preds = %2
  %21 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %22 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @R06_POWER2, align 4
  %25 = call i32 @regmap_write_bits(i32 %23, i32 %24, i32 7, i32 0)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %134

29:                                               ; preds = %20
  %30 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %31 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @R25_REF, align 4
  %34 = call i32 @regmap_write_bits(i32 %32, i32 %33, i32 192, i32 192)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %134

38:                                               ; preds = %29
  br label %133

39:                                               ; preds = %2
  %40 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %41 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %39
  %45 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %46 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @R25_REF, align 4
  %49 = call i32 @regmap_write_bits(i32 %47, i32 %48, i32 192, i32 128)
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %44
  br label %134

53:                                               ; preds = %44
  %54 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %55 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @R06_POWER2, align 4
  %58 = call i32 @regmap_write_bits(i32 %56, i32 %57, i32 7, i32 2)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %53
  br label %134

62:                                               ; preds = %53
  %63 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %64 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @R10_LT1, align 4
  %67 = call i32 @regmap_write_bits(i32 %65, i32 %66, i32 128, i32 0)
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %134

71:                                               ; preds = %62
  br label %129

72:                                               ; preds = %39
  %73 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %74 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @R25_REF, align 4
  %77 = call i32 @regmap_write_bits(i32 %75, i32 %76, i32 192, i32 128)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  br label %134

81:                                               ; preds = %72
  %82 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %83 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* @R06_POWER2, align 4
  %86 = call i32 @regmap_write_bits(i32 %84, i32 %85, i32 7, i32 1)
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %8, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %81
  br label %134

90:                                               ; preds = %81
  %91 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %92 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @R0D_AGC12, align 4
  %95 = call i32 @regmap_read(i32 %93, i32 %94, i32* %9)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %134

99:                                               ; preds = %90
  %100 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %101 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @R0D_AGC12, align 4
  %104 = call i32 @regmap_write_bits(i32 %102, i32 %103, i32 3, i32 3)
  store i32 %104, i32* %8, align 4
  %105 = load i32, i32* %8, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %99
  br label %134

108:                                              ; preds = %99
  %109 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %110 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* @R10_LT1, align 4
  %113 = call i32 @regmap_write_bits(i32 %111, i32 %112, i32 128, i32 128)
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* %8, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %134

117:                                              ; preds = %108
  %118 = load %struct.tda18250_dev*, %struct.tda18250_dev** %7, align 8
  %119 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* @R0D_AGC12, align 4
  %122 = load i32, i32* %9, align 4
  %123 = and i32 %122, 3
  %124 = call i32 @regmap_write_bits(i32 %120, i32 %121, i32 3, i32 %123)
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* %8, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %128

127:                                              ; preds = %117
  br label %134

128:                                              ; preds = %117
  br label %129

129:                                              ; preds = %128, %71
  br label %133

130:                                              ; preds = %2
  %131 = load i32, i32* @EINVAL, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %8, align 4
  br label %134

133:                                              ; preds = %129, %38
  store i32 0, i32* %3, align 4
  br label %136

134:                                              ; preds = %130, %127, %116, %107, %98, %89, %80, %70, %61, %52, %37, %28
  %135 = load i32, i32* %8, align 4
  store i32 %135, i32* %3, align 4
  br label %136

136:                                              ; preds = %134, %133
  %137 = load i32, i32* %3, align 4
  ret i32 %137
}

declare dso_local %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @regmap_write_bits(i32, i32, i32, i32) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
