; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_configure_pixel_clocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k6aa.c_s5k6aa_configure_pixel_clocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k6aa = type { i32, i32, i32, i32, i32 }
%struct.i2c_client = type { i32 }

@MIN_MCLK_FREQ_KHZ = common dso_local global i64 0, align 8
@MAX_MCLK_FREQ_KHZ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [30 x i8] c"Invalid clock frequency: %ld\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCLK_FREQ_MIN = common dso_local global i32 0, align 4
@PCLK_FREQ_MAX = common dso_local global i32 0, align 4
@SYS_PLL_OUT_FREQ = common dso_local global i32 0, align 4
@REG_I_INCLK_FREQ_H = common dso_local global i32 0, align 4
@REG_I_INCLK_FREQ_L = common dso_local global i32 0, align 4
@REG_I_USE_NPVI_CLOCKS = common dso_local global i32 0, align 4
@REG_I_INIT_PARAMS_UPDATED = common dso_local global i32 0, align 4
@REG_I_ERROR_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s5k6aa*)* @s5k6aa_configure_pixel_clocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s5k6aa_configure_pixel_clocks(%struct.s5k6aa* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s5k6aa*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.s5k6aa* %0, %struct.s5k6aa** %3, align 8
  %8 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %9 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %8, i32 0, i32 4
  %10 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %9)
  store %struct.i2c_client* %10, %struct.i2c_client** %4, align 8
  %11 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %12 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = sdiv i32 %13, 1000
  %15 = sext i32 %14 to i64
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = load i64, i64* @MIN_MCLK_FREQ_KHZ, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @MAX_MCLK_FREQ_KHZ, align 8
  %22 = icmp ugt i64 %20, %21
  br label %23

23:                                               ; preds = %19, %1
  %24 = phi i1 [ true, %1 ], [ %22, %19 ]
  %25 = zext i1 %24 to i32
  %26 = load i64, i64* %5, align 8
  %27 = call i64 @WARN(i32 %25, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i64 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %124

32:                                               ; preds = %23
  %33 = load i32, i32* @PCLK_FREQ_MIN, align 4
  %34 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %35 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @PCLK_FREQ_MAX, align 4
  %37 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %38 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @SYS_PLL_OUT_FREQ, align 4
  %40 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %41 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %43 = load i32, i32* @REG_I_INCLK_FREQ_H, align 4
  %44 = load i64, i64* %5, align 8
  %45 = lshr i64 %44, 16
  %46 = trunc i64 %45 to i32
  %47 = call i32 @s5k6aa_write(%struct.i2c_client* %42, i32 %43, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %32
  %51 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %52 = load i32, i32* @REG_I_INCLK_FREQ_L, align 4
  %53 = load i64, i64* %5, align 8
  %54 = and i64 %53, 65535
  %55 = trunc i64 %54 to i32
  %56 = call i32 @s5k6aa_write(%struct.i2c_client* %51, i32 %52, i32 %55)
  store i32 %56, i32* %7, align 4
  br label %57

57:                                               ; preds = %50, %32
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %62 = load i32, i32* @REG_I_USE_NPVI_CLOCKS, align 4
  %63 = call i32 @s5k6aa_write(%struct.i2c_client* %61, i32 %62, i32 1)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %60, %57
  %65 = load i32, i32* %7, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %74, label %67

67:                                               ; preds = %64
  %68 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %69 = call i32 @REG_I_OPCLK_4KHZ(i32 0)
  %70 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %71 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @s5k6aa_write(%struct.i2c_client* %68, i32 %69, i32 %72)
  store i32 %73, i32* %7, align 4
  br label %74

74:                                               ; preds = %67, %64
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %74
  %78 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %79 = call i32 @REG_I_MIN_OUTRATE_4KHZ(i32 0)
  %80 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %81 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @s5k6aa_write(%struct.i2c_client* %78, i32 %79, i32 %82)
  store i32 %83, i32* %7, align 4
  br label %84

84:                                               ; preds = %77, %74
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %84
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = call i32 @REG_I_MAX_OUTRATE_4KHZ(i32 0)
  %90 = load %struct.s5k6aa*, %struct.s5k6aa** %3, align 8
  %91 = getelementptr inbounds %struct.s5k6aa, %struct.s5k6aa* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @s5k6aa_write(%struct.i2c_client* %88, i32 %89, i32 %92)
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %87, %84
  %95 = load i32, i32* %7, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %101, label %97

97:                                               ; preds = %94
  %98 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %99 = load i32, i32* @REG_I_INIT_PARAMS_UPDATED, align 4
  %100 = call i32 @s5k6aa_write(%struct.i2c_client* %98, i32 %99, i32 1)
  store i32 %100, i32* %7, align 4
  br label %101

101:                                              ; preds = %97, %94
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %101
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = load i32, i32* @REG_I_ERROR_INFO, align 4
  %107 = call i32 @s5k6aa_read(%struct.i2c_client* %105, i32 %106, i64* %6)
  store i32 %107, i32* %7, align 4
  br label %108

108:                                              ; preds = %104, %101
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %108
  %112 = load i32, i32* %7, align 4
  br label %122

113:                                              ; preds = %108
  %114 = load i64, i64* %6, align 8
  %115 = icmp ne i64 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* @EINVAL, align 4
  %118 = sub nsw i32 0, %117
  br label %120

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 0, %119 ]
  br label %122

122:                                              ; preds = %120, %111
  %123 = phi i32 [ %112, %111 ], [ %121, %120 ]
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %122, %29
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i64 @WARN(i32, i8*, i64) #1

declare dso_local i32 @s5k6aa_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @REG_I_OPCLK_4KHZ(i32) #1

declare dso_local i32 @REG_I_MIN_OUTRATE_4KHZ(i32) #1

declare dso_local i32 @REG_I_MAX_OUTRATE_4KHZ(i32) #1

declare dso_local i32 @s5k6aa_read(%struct.i2c_client*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
