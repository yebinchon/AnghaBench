; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_bitbang_sendbyte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/dvb-usb-v2/extr_mxl111sf-i2c.c_mxl111sf_i2c_bitbang_sendbyte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxl111sf_state = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"(0x%02x)\00", align 1
@SW_I2C_BUSY_ADDR = common dso_local global i32 0, align 4
@SW_SDA_OUT = common dso_local global i32 0, align 4
@SW_I2C_ADDR = common dso_local global i32 0, align 4
@SW_I2C_EN = common dso_local global i32 0, align 4
@SW_SCL_OUT = common dso_local global i32 0, align 4
@SW_SDA_IN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxl111sf_state*, i32)* @mxl111sf_i2c_bitbang_sendbyte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxl111sf_i2c_bitbang_sendbyte(%struct.mxl111sf_state* %0, i32 %1) #0 {
  %3 = alloca %struct.mxl111sf_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mxl111sf_state* %0, %struct.mxl111sf_state** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @mxl_i2c(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %11 = load i32, i32* @SW_I2C_BUSY_ADDR, align 4
  %12 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %10, i32 %11, i32* %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = call i64 @mxl_fail(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %133

17:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %18

18:                                               ; preds = %70, %17
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 8
  br i1 %20, label %21, label %73

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* %5, align 4
  %24 = ashr i32 128, %23
  %25 = and i32 %22, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* @SW_SDA_OUT, align 4
  br label %30

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %27
  %31 = phi i32 [ %28, %27 ], [ 0, %29 ]
  store i32 %31, i32* %7, align 4
  %32 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %33 = load i32, i32* @SW_I2C_ADDR, align 4
  %34 = load i32, i32* @SW_I2C_EN, align 4
  %35 = or i32 16, %34
  %36 = load i32, i32* %7, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %32, i32 %33, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = call i64 @mxl_fail(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %30
  br label %133

43:                                               ; preds = %30
  %44 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %45 = load i32, i32* @SW_I2C_ADDR, align 4
  %46 = load i32, i32* @SW_I2C_EN, align 4
  %47 = or i32 16, %46
  %48 = load i32, i32* %7, align 4
  %49 = or i32 %47, %48
  %50 = load i32, i32* @SW_SCL_OUT, align 4
  %51 = or i32 %49, %50
  %52 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %44, i32 %45, i32 %51)
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @mxl_fail(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %43
  br label %133

57:                                               ; preds = %43
  %58 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %59 = load i32, i32* @SW_I2C_ADDR, align 4
  %60 = load i32, i32* @SW_I2C_EN, align 4
  %61 = or i32 16, %60
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %58, i32 %59, i32 %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i64 @mxl_fail(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %57
  br label %133

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %5, align 4
  br label %18

73:                                               ; preds = %18
  %74 = load i32, i32* %4, align 4
  %75 = and i32 %74, 1
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %90, label %77

77:                                               ; preds = %73
  %78 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %79 = load i32, i32* @SW_I2C_ADDR, align 4
  %80 = load i32, i32* @SW_I2C_EN, align 4
  %81 = or i32 16, %80
  %82 = load i32, i32* @SW_SDA_OUT, align 4
  %83 = or i32 %81, %82
  %84 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %78, i32 %79, i32 %83)
  store i32 %84, i32* %6, align 4
  %85 = load i32, i32* %6, align 4
  %86 = call i64 @mxl_fail(i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %77
  br label %133

89:                                               ; preds = %77
  br label %90

90:                                               ; preds = %89, %73
  %91 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %92 = load i32, i32* @SW_I2C_ADDR, align 4
  %93 = load i32, i32* @SW_I2C_EN, align 4
  %94 = or i32 16, %93
  %95 = load i32, i32* @SW_SCL_OUT, align 4
  %96 = or i32 %94, %95
  %97 = load i32, i32* @SW_SDA_OUT, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %91, i32 %92, i32 %98)
  store i32 %99, i32* %6, align 4
  %100 = load i32, i32* %6, align 4
  %101 = call i64 @mxl_fail(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %90
  br label %133

104:                                              ; preds = %90
  %105 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %106 = load i32, i32* @SW_I2C_BUSY_ADDR, align 4
  %107 = call i32 @mxl111sf_read_reg(%struct.mxl111sf_state* %105, i32 %106, i32* %7)
  store i32 %107, i32* %6, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i64 @mxl_fail(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %104
  br label %133

112:                                              ; preds = %104
  %113 = load %struct.mxl111sf_state*, %struct.mxl111sf_state** %3, align 8
  %114 = load i32, i32* @SW_I2C_ADDR, align 4
  %115 = load i32, i32* @SW_I2C_EN, align 4
  %116 = or i32 16, %115
  %117 = load i32, i32* @SW_SDA_OUT, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @mxl111sf_write_reg(%struct.mxl111sf_state* %113, i32 %114, i32 %118)
  store i32 %119, i32* %6, align 4
  %120 = load i32, i32* %6, align 4
  %121 = call i64 @mxl_fail(i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %112
  br label %133

124:                                              ; preds = %112
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* @SW_SDA_IN, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load i32, i32* @EIO, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %6, align 4
  br label %132

132:                                              ; preds = %129, %124
  br label %133

133:                                              ; preds = %132, %123, %111, %103, %88, %68, %56, %42, %16
  %134 = load i32, i32* %6, align 4
  ret i32 %134
}

declare dso_local i32 @mxl_i2c(i8*, i32) #1

declare dso_local i32 @mxl111sf_read_reg(%struct.mxl111sf_state*, i32, i32*) #1

declare dso_local i64 @mxl_fail(i32) #1

declare dso_local i32 @mxl111sf_write_reg(%struct.mxl111sf_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
