; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_pll_calc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/tuners/extr_tda18250.c_tda18250_pll_calc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.dtv_frontend_properties, %struct.i2c_client* }
%struct.dtv_frontend_properties = type { i32 }
%struct.i2c_client = type { i32 }
%struct.tda18250_dev = type { i32, i32, i32 }

@R34_MD1 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"lopd=%d scale=%u fvco=%lu, rdiv=%d ndiv=%d icp=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*, i32*, i32*)* @tda18250_pll_calc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda18250_pll_calc(%struct.dvb_frontend* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca %struct.tda18250_dev*, align 8
  %12 = alloca %struct.dtv_frontend_properties*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %19 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %20 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %19, i32 0, i32 1
  %21 = load %struct.i2c_client*, %struct.i2c_client** %20, align 8
  store %struct.i2c_client* %21, %struct.i2c_client** %10, align 8
  %22 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %23 = call %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client* %22)
  store %struct.tda18250_dev* %23, %struct.tda18250_dev** %11, align 8
  %24 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %25 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %24, i32 0, i32 0
  store %struct.dtv_frontend_properties* %25, %struct.dtv_frontend_properties** %12, align 8
  %26 = load %struct.tda18250_dev*, %struct.tda18250_dev** %11, align 8
  %27 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @R34_MD1, align 4
  %30 = call i32 @regmap_read(i32 %28, i32 %29, i32* %14)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %123

34:                                               ; preds = %4
  %35 = load i32, i32* %14, align 4
  %36 = and i32 %35, 112
  %37 = lshr i32 %36, 4
  store i32 %37, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = icmp ugt i32 %38, 5
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i32 0, i32* %15, align 4
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i32, i32* %15, align 4
  %43 = sub i32 %42, 1
  %44 = shl i32 1, %43
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %14, align 4
  %46 = and i32 %45, 15
  store i32 %46, i32* %17, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %17, align 4
  %49 = mul i32 %47, %48
  %50 = load %struct.dtv_frontend_properties*, %struct.dtv_frontend_properties** %12, align 8
  %51 = getelementptr inbounds %struct.dtv_frontend_properties, %struct.dtv_frontend_properties* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = sdiv i32 %52, 1000
  %54 = load %struct.tda18250_dev*, %struct.tda18250_dev** %11, align 8
  %55 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = mul i32 %49, %57
  %59 = zext i32 %58 to i64
  store i64 %59, i64* %18, align 8
  %60 = load %struct.tda18250_dev*, %struct.tda18250_dev** %11, align 8
  %61 = getelementptr inbounds %struct.tda18250_dev, %struct.tda18250_dev* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  switch i32 %62, label %107 [
    i32 132, label %63
    i32 131, label %71
    i32 130, label %71
    i32 129, label %79
    i32 128, label %99
  ]

63:                                               ; preds = %41
  %64 = load i32*, i32** %7, align 8
  store i32 1, i32* %64, align 4
  %65 = load i32*, i32** %8, align 8
  store i32 0, i32* %65, align 4
  %66 = load i64, i64* %18, align 8
  %67 = icmp ult i64 %66, 6622000
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i32 5, i32 2
  %70 = load i32*, i32** %9, align 8
  store i32 %69, i32* %70, align 4
  br label %110

71:                                               ; preds = %41, %41
  %72 = load i32*, i32** %7, align 8
  store i32 3, i32* %72, align 4
  %73 = load i32*, i32** %8, align 8
  store i32 1, i32* %73, align 4
  %74 = load i64, i64* %18, align 8
  %75 = icmp ult i64 %74, 6622000
  %76 = zext i1 %75 to i64
  %77 = select i1 %75, i32 5, i32 2
  %78 = load i32*, i32** %9, align 8
  store i32 %77, i32* %78, align 4
  br label %110

79:                                               ; preds = %41
  %80 = load i64, i64* %18, align 8
  %81 = icmp ult i64 %80, 6643000
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32*, i32** %7, align 8
  store i32 2, i32* %83, align 4
  %84 = load i32*, i32** %8, align 8
  store i32 0, i32* %84, align 4
  %85 = load i32*, i32** %9, align 8
  store i32 5, i32* %85, align 4
  br label %98

86:                                               ; preds = %79
  %87 = load i64, i64* %18, align 8
  %88 = icmp ult i64 %87, 6811000
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32*, i32** %7, align 8
  store i32 2, i32* %90, align 4
  %91 = load i32*, i32** %8, align 8
  store i32 0, i32* %91, align 4
  %92 = load i32*, i32** %9, align 8
  store i32 6, i32* %92, align 4
  br label %97

93:                                               ; preds = %86
  %94 = load i32*, i32** %7, align 8
  store i32 3, i32* %94, align 4
  %95 = load i32*, i32** %8, align 8
  store i32 1, i32* %95, align 4
  %96 = load i32*, i32** %9, align 8
  store i32 2, i32* %96, align 4
  br label %97

97:                                               ; preds = %93, %89
  br label %98

98:                                               ; preds = %97, %82
  br label %110

99:                                               ; preds = %41
  %100 = load i32*, i32** %7, align 8
  store i32 2, i32* %100, align 4
  %101 = load i32*, i32** %8, align 8
  store i32 0, i32* %101, align 4
  %102 = load i64, i64* %18, align 8
  %103 = icmp ult i64 %102, 6811000
  %104 = zext i1 %103 to i64
  %105 = select i1 %103, i32 5, i32 2
  %106 = load i32*, i32** %9, align 8
  store i32 %105, i32* %106, align 4
  br label %110

107:                                              ; preds = %41
  %108 = load i32, i32* @EINVAL, align 4
  %109 = sub nsw i32 0, %108
  store i32 %109, i32* %5, align 4
  br label %125

110:                                              ; preds = %99, %98, %71, %63
  %111 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %112 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %111, i32 0, i32 0
  %113 = load i32, i32* %16, align 4
  %114 = load i32, i32* %17, align 4
  %115 = load i64, i64* %18, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i32, i32* %116, align 4
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %9, align 8
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @dev_dbg(i32* %112, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %113, i32 %114, i64 %115, i32 %117, i32 %119, i32 %121)
  store i32 0, i32* %5, align 4
  br label %125

123:                                              ; preds = %33
  %124 = load i32, i32* %13, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %110, %107
  %126 = load i32, i32* %5, align 4
  ret i32 %126
}

declare dso_local %struct.tda18250_dev* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
