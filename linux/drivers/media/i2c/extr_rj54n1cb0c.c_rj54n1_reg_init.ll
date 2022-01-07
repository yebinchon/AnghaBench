; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_reg_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_reg_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rj54n1 = type { i32 }

@bank_7 = common dso_local global i32 0, align 4
@bank_10 = common dso_local global i32 0, align 4
@RJ54N1_SCALE_1_2_LEV = common dso_local global i32 0, align 4
@RJ54N1_SCALE_4_LEV = common dso_local global i32 0, align 4
@RJ54N1_RESIZE_CONTROL = common dso_local global i32 0, align 4
@RESIZE_HOLD_SEL = common dso_local global i32 0, align 4
@RJ54N1_Y_GAIN = common dso_local global i32 0, align 4
@RJ54N1_MIRROR_STILL_MODE = common dso_local global i32 0, align 4
@bank_4 = common dso_local global i32 0, align 4
@RJ54N1_EXPOSURE_CONTROL = common dso_local global i32 0, align 4
@RJ54N1_WB_SEL_WEIGHT_I = common dso_local global i32 0, align 4
@bank_5 = common dso_local global i32 0, align 4
@bank_8 = common dso_local global i32 0, align 4
@RJ54N1_RESET_STANDBY = common dso_local global i32 0, align 4
@E_EXCLK = common dso_local global i32 0, align 4
@DSP_RSTX = common dso_local global i32 0, align 4
@SEN_RSTX = common dso_local global i32 0, align 4
@TG_RSTX = common dso_local global i32 0, align 4
@RJ54N1_FWFLG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rj54n1_reg_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj54n1_reg_init(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.rj54n1*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.rj54n1* @to_rj54n1(%struct.i2c_client* %5)
  store %struct.rj54n1* %6, %struct.rj54n1** %3, align 8
  %7 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %8 = call i32 @rj54n1_set_clock(%struct.i2c_client* %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %17, label %11

11:                                               ; preds = %1
  %12 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %13 = load i32, i32* @bank_7, align 4
  %14 = load i32, i32* @bank_7, align 4
  %15 = call i32 @ARRAY_SIZE(i32 %14)
  %16 = call i32 @reg_write_multiple(%struct.i2c_client* %12, i32 %13, i32 %15)
  store i32 %16, i32* %4, align 4
  br label %17

17:                                               ; preds = %11, %1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %17
  %21 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %22 = load i32, i32* @bank_10, align 4
  %23 = load i32, i32* @bank_10, align 4
  %24 = call i32 @ARRAY_SIZE(i32 %23)
  %25 = call i32 @reg_write_multiple(%struct.i2c_client* %21, i32 %22, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %17
  %27 = load i32, i32* %4, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %26
  %30 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %31 = load i32, i32* @RJ54N1_SCALE_1_2_LEV, align 4
  %32 = call i32 @reg_write(%struct.i2c_client* %30, i32 %31, i32 115)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %26
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %33
  %37 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %38 = load i32, i32* @RJ54N1_SCALE_4_LEV, align 4
  %39 = call i32 @reg_write(%struct.i2c_client* %37, i32 %38, i32 15)
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %36, %33
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %49, label %43

43:                                               ; preds = %40
  %44 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %45 = load i32, i32* @RJ54N1_RESIZE_CONTROL, align 4
  %46 = load i32, i32* @RESIZE_HOLD_SEL, align 4
  %47 = or i32 %46, 1
  %48 = call i32 @reg_write(%struct.i2c_client* %44, i32 %45, i32 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %43, %40
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %49
  %53 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %54 = load i32, i32* @RJ54N1_Y_GAIN, align 4
  %55 = call i32 @reg_write(%struct.i2c_client* %53, i32 %54, i32 132)
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %52, %49
  %57 = load i32, i32* %4, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %61 = load i32, i32* @RJ54N1_MIRROR_STILL_MODE, align 4
  %62 = call i32 @reg_write(%struct.i2c_client* %60, i32 %61, i32 39)
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %59, %56
  %64 = load i32, i32* %4, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %72, label %66

66:                                               ; preds = %63
  %67 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %68 = load i32, i32* @bank_4, align 4
  %69 = load i32, i32* @bank_4, align 4
  %70 = call i32 @ARRAY_SIZE(i32 %69)
  %71 = call i32 @reg_write_multiple(%struct.i2c_client* %67, i32 %68, i32 %70)
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %66, %63
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %79, label %75

75:                                               ; preds = %72
  %76 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %77 = load i32, i32* @RJ54N1_EXPOSURE_CONTROL, align 4
  %78 = call i32 @reg_write(%struct.i2c_client* %76, i32 %77, i32 128)
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %84 = load i32, i32* @RJ54N1_WB_SEL_WEIGHT_I, align 4
  %85 = call i32 @reg_read(%struct.i2c_client* %83, i32 %84)
  store i32 %85, i32* %4, align 4
  br label %86

86:                                               ; preds = %82, %79
  %87 = load i32, i32* %4, align 4
  %88 = icmp sge i32 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %86
  %90 = load i32, i32* %4, align 4
  %91 = and i32 %90, 128
  %92 = load %struct.rj54n1*, %struct.rj54n1** %3, align 8
  %93 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %95 = load i32, i32* @bank_5, align 4
  %96 = load i32, i32* @bank_5, align 4
  %97 = call i32 @ARRAY_SIZE(i32 %96)
  %98 = call i32 @reg_write_multiple(%struct.i2c_client* %94, i32 %95, i32 %97)
  store i32 %98, i32* %4, align 4
  br label %99

99:                                               ; preds = %89, %86
  %100 = load i32, i32* %4, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %108, label %102

102:                                              ; preds = %99
  %103 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %104 = load i32, i32* @bank_8, align 4
  %105 = load i32, i32* @bank_8, align 4
  %106 = call i32 @ARRAY_SIZE(i32 %105)
  %107 = call i32 @reg_write_multiple(%struct.i2c_client* %103, i32 %104, i32 %106)
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %102, %99
  %109 = load i32, i32* %4, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %108
  %112 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %113 = load i32, i32* @RJ54N1_RESET_STANDBY, align 4
  %114 = load i32, i32* @E_EXCLK, align 4
  %115 = load i32, i32* @DSP_RSTX, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @SEN_RSTX, align 4
  %118 = or i32 %116, %117
  %119 = call i32 @reg_write(%struct.i2c_client* %112, i32 %113, i32 %118)
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %111, %108
  %121 = load i32, i32* %4, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %126, label %123

123:                                              ; preds = %120
  %124 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %125 = call i32 @rj54n1_commit(%struct.i2c_client* %124)
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %123, %120
  %127 = load i32, i32* %4, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %126
  %130 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %131 = load i32, i32* @RJ54N1_RESET_STANDBY, align 4
  %132 = load i32, i32* @E_EXCLK, align 4
  %133 = load i32, i32* @DSP_RSTX, align 4
  %134 = or i32 %132, %133
  %135 = load i32, i32* @TG_RSTX, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* @SEN_RSTX, align 4
  %138 = or i32 %136, %137
  %139 = call i32 @reg_write(%struct.i2c_client* %130, i32 %131, i32 %138)
  store i32 %139, i32* %4, align 4
  br label %140

140:                                              ; preds = %129, %126
  %141 = load i32, i32* %4, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %147, label %143

143:                                              ; preds = %140
  %144 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %145 = load i32, i32* @RJ54N1_FWFLG, align 4
  %146 = call i32 @reg_write(%struct.i2c_client* %144, i32 %145, i32 2)
  store i32 %146, i32* %4, align 4
  br label %147

147:                                              ; preds = %143, %140
  %148 = call i32 @msleep(i32 700)
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local %struct.rj54n1* @to_rj54n1(%struct.i2c_client*) #1

declare dso_local i32 @rj54n1_set_clock(%struct.i2c_client*) #1

declare dso_local i32 @reg_write_multiple(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @rj54n1_commit(%struct.i2c_client*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
