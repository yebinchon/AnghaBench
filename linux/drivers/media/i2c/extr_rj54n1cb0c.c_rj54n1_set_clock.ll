; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_rj54n1cb0c.c_rj54n1_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.rj54n1 = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@RJ54N1_RESET_STANDBY = common dso_local global i32 0, align 4
@E_EXCLK = common dso_local global i32 0, align 4
@SOFT_STDBY = common dso_local global i32 0, align 4
@RJ54N1_PLL_L = common dso_local global i32 0, align 4
@PLL_L = common dso_local global i32 0, align 4
@RJ54N1_PLL_N = common dso_local global i32 0, align 4
@PLL_N = common dso_local global i32 0, align 4
@RJ54N1_RATIO_TG = common dso_local global i32 0, align 4
@RJ54N1_RATIO_T = common dso_local global i32 0, align 4
@RJ54N1_RATIO_R = common dso_local global i32 0, align 4
@RJ54N1_RAMP_TGCLK_EN = common dso_local global i32 0, align 4
@RJ54N1_OCLK_DSP = common dso_local global i32 0, align 4
@RJ54N1_RATIO_OP = common dso_local global i32 0, align 4
@RJ54N1_RATIO_O = common dso_local global i32 0, align 4
@RJ54N1_OCLK_SEL_EN = common dso_local global i32 0, align 4
@RJ54N1_TG_BYPASS = common dso_local global i32 0, align 4
@SEN_RSTX = common dso_local global i32 0, align 4
@RJ54N1_PLL_EN = common dso_local global i32 0, align 4
@RJ54N1_CLK_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Resetting RJ54N1CB0C clock failed: %d!\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @rj54n1_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rj54n1_set_clock(%struct.i2c_client* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_client*, align 8
  %4 = alloca %struct.rj54n1*, align 8
  %5 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %3, align 8
  %6 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %7 = call %struct.rj54n1* @to_rj54n1(%struct.i2c_client* %6)
  store %struct.rj54n1* %7, %struct.rj54n1** %4, align 8
  %8 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %9 = load i32, i32* @RJ54N1_RESET_STANDBY, align 4
  %10 = load i32, i32* @E_EXCLK, align 4
  %11 = load i32, i32* @SOFT_STDBY, align 4
  %12 = or i32 %10, %11
  %13 = call i32 @reg_write(%struct.i2c_client* %8, i32 %9, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %18 = load i32, i32* @RJ54N1_RESET_STANDBY, align 4
  %19 = load i32, i32* @E_EXCLK, align 4
  %20 = call i32 @reg_write(%struct.i2c_client* %17, i32 %18, i32 %19)
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %16, %1
  %22 = load i32, i32* %5, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %21
  %25 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %26 = load i32, i32* @RJ54N1_PLL_L, align 4
  %27 = load i32, i32* @PLL_L, align 4
  %28 = call i32 @reg_write(%struct.i2c_client* %25, i32 %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %24, %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %34 = load i32, i32* @RJ54N1_PLL_N, align 4
  %35 = load i32, i32* @PLL_N, align 4
  %36 = call i32 @reg_write(%struct.i2c_client* %33, i32 %34, i32 %35)
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %32, %29
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %48, label %40

40:                                               ; preds = %37
  %41 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %42 = load i32, i32* @RJ54N1_RATIO_TG, align 4
  %43 = load %struct.rj54n1*, %struct.rj54n1** %4, align 8
  %44 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @reg_write(%struct.i2c_client* %41, i32 %42, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %40, %37
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %59, label %51

51:                                               ; preds = %48
  %52 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %53 = load i32, i32* @RJ54N1_RATIO_T, align 4
  %54 = load %struct.rj54n1*, %struct.rj54n1** %4, align 8
  %55 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @reg_write(%struct.i2c_client* %52, i32 %53, i32 %57)
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %51, %48
  %60 = load i32, i32* %5, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %70, label %62

62:                                               ; preds = %59
  %63 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %64 = load i32, i32* @RJ54N1_RATIO_R, align 4
  %65 = load %struct.rj54n1*, %struct.rj54n1** %4, align 8
  %66 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @reg_write(%struct.i2c_client* %63, i32 %64, i32 %68)
  store i32 %69, i32* %5, align 4
  br label %70

70:                                               ; preds = %62, %59
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %75 = load i32, i32* @RJ54N1_RAMP_TGCLK_EN, align 4
  %76 = call i32 @reg_write(%struct.i2c_client* %74, i32 %75, i32 3)
  store i32 %76, i32* %5, align 4
  br label %77

77:                                               ; preds = %73, %70
  %78 = load i32, i32* %5, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %84, label %80

80:                                               ; preds = %77
  %81 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %82 = load i32, i32* @RJ54N1_OCLK_DSP, align 4
  %83 = call i32 @reg_write(%struct.i2c_client* %81, i32 %82, i32 0)
  store i32 %83, i32* %5, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %5, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %84
  %88 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %89 = load i32, i32* @RJ54N1_RATIO_OP, align 4
  %90 = load %struct.rj54n1*, %struct.rj54n1** %4, align 8
  %91 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @reg_write(%struct.i2c_client* %88, i32 %89, i32 %93)
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %87, %84
  %96 = load i32, i32* %5, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %106, label %98

98:                                               ; preds = %95
  %99 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %100 = load i32, i32* @RJ54N1_RATIO_O, align 4
  %101 = load %struct.rj54n1*, %struct.rj54n1** %4, align 8
  %102 = getelementptr inbounds %struct.rj54n1, %struct.rj54n1* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 4
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @reg_write(%struct.i2c_client* %99, i32 %100, i32 %104)
  store i32 %105, i32* %5, align 4
  br label %106

106:                                              ; preds = %98, %95
  %107 = load i32, i32* %5, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %113, label %109

109:                                              ; preds = %106
  %110 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %111 = load i32, i32* @RJ54N1_OCLK_SEL_EN, align 4
  %112 = call i32 @reg_write(%struct.i2c_client* %110, i32 %111, i32 1)
  store i32 %112, i32* %5, align 4
  br label %113

113:                                              ; preds = %109, %106
  %114 = load i32, i32* %5, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %120, label %116

116:                                              ; preds = %113
  %117 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %118 = load i32, i32* @RJ54N1_TG_BYPASS, align 4
  %119 = call i32 @reg_write(%struct.i2c_client* %117, i32 %118, i32 2)
  store i32 %119, i32* %5, align 4
  br label %120

120:                                              ; preds = %116, %113
  %121 = load i32, i32* %5, align 4
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %130, label %123

123:                                              ; preds = %120
  %124 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %125 = load i32, i32* @RJ54N1_RESET_STANDBY, align 4
  %126 = load i32, i32* @E_EXCLK, align 4
  %127 = load i32, i32* @SEN_RSTX, align 4
  %128 = or i32 %126, %127
  %129 = call i32 @reg_write(%struct.i2c_client* %124, i32 %125, i32 %128)
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %123, %120
  %131 = load i32, i32* %5, align 4
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %137, label %133

133:                                              ; preds = %130
  %134 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %135 = load i32, i32* @RJ54N1_PLL_EN, align 4
  %136 = call i32 @reg_write(%struct.i2c_client* %134, i32 %135, i32 1)
  store i32 %136, i32* %5, align 4
  br label %137

137:                                              ; preds = %133, %130
  %138 = call i32 @msleep(i32 10)
  %139 = load i32, i32* %5, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %145, label %141

141:                                              ; preds = %137
  %142 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %143 = load i32, i32* @RJ54N1_CLK_RST, align 4
  %144 = call i32 @reg_write(%struct.i2c_client* %142, i32 %143, i32 1)
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %141, %137
  %146 = load i32, i32* %5, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %152, label %148

148:                                              ; preds = %145
  %149 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %150 = load i32, i32* @RJ54N1_CLK_RST, align 4
  %151 = call i32 @reg_read(%struct.i2c_client* %149, i32 %150)
  store i32 %151, i32* %5, align 4
  br label %152

152:                                              ; preds = %148, %145
  %153 = load i32, i32* %5, align 4
  %154 = icmp ne i32 %153, 1
  br i1 %154, label %155, label %162

155:                                              ; preds = %152
  %156 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %157 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %156, i32 0, i32 0
  %158 = load i32, i32* %5, align 4
  %159 = call i32 @dev_err(i32* %157, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @EIO, align 4
  %161 = sub nsw i32 0, %160
  store i32 %161, i32* %2, align 4
  br label %174

162:                                              ; preds = %152
  %163 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %164 = load i32, i32* @RJ54N1_OCLK_DSP, align 4
  %165 = call i32 @reg_set(%struct.i2c_client* %163, i32 %164, i32 1, i32 1)
  store i32 %165, i32* %5, align 4
  %166 = load i32, i32* %5, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %172, label %168

168:                                              ; preds = %162
  %169 = load %struct.i2c_client*, %struct.i2c_client** %3, align 8
  %170 = load i32, i32* @RJ54N1_OCLK_SEL_EN, align 4
  %171 = call i32 @reg_write(%struct.i2c_client* %169, i32 %170, i32 1)
  store i32 %171, i32* %5, align 4
  br label %172

172:                                              ; preds = %168, %162
  %173 = load i32, i32* %5, align 4
  store i32 %173, i32* %2, align 4
  br label %174

174:                                              ; preds = %172, %155
  %175 = load i32, i32* %2, align 4
  ret i32 %175
}

declare dso_local %struct.rj54n1* @to_rj54n1(%struct.i2c_client*) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_read(%struct.i2c_client*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
