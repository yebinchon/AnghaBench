; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_set_pll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_twl6040.c_twl6040_set_pll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl6040 = type { i32, i32, i32, i32, i32, i32 }

@TWL6040_REG_HPPLLCTL = common dso_local global i32 0, align 4
@TWL6040_REG_LPPLLCTL = common dso_local global i32 0, align 4
@TWL6040_LPLLFIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"freq_out %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TWL6040_LPLLENA = common dso_local global i32 0, align 4
@TWL6040_HPLLSEL = common dso_local global i32 0, align 4
@TWL6040_HPLLENA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"freq_in %d not supported\0A\00", align 1
@TWL6040_MCLK_MSK = common dso_local global i32 0, align 4
@TWL6040_MCLK_12000KHZ = common dso_local global i32 0, align 4
@TWL6040_MCLK_19200KHZ = common dso_local global i32 0, align 4
@TWL6040_HPLLBP = common dso_local global i32 0, align 4
@TWL6040_MCLK_26000KHZ = common dso_local global i32 0, align 4
@TWL6040_MCLK_38400KHZ = common dso_local global i32 0, align 4
@TWL6040_HPLLSQRENA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [19 x i8] c"unknown pll id %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl6040_set_pll(%struct.twl6040* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.twl6040*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.twl6040* %0, %struct.twl6040** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %13 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %12, i32 0, i32 3
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %16 = load i32, i32* @TWL6040_REG_HPPLLCTL, align 4
  %17 = call i32 @twl6040_reg_read(%struct.twl6040* %15, i32 %16)
  store i32 %17, i32* %9, align 4
  %18 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %19 = load i32, i32* @TWL6040_REG_LPPLLCTL, align 4
  %20 = call i32 @twl6040_reg_read(%struct.twl6040* %18, i32 %19)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %23 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %21, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %4
  %27 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %28 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  %29 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %30 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %29, i32 0, i32 2
  store i32 0, i32* %30, align 4
  br label %31

31:                                               ; preds = %26, %4
  %32 = load i32, i32* %6, align 4
  switch i32 %32, label %208 [
    i32 128, label %33
    i32 129, label %110
  ]

33:                                               ; preds = %31
  %34 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %35 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load i32, i32* %8, align 4
  switch i32 %40, label %50 [
    i32 17640000, label %41
    i32 19200000, label %45
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @TWL6040_LPLLFIN, align 4
  %43 = load i32, i32* %10, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %10, align 4
  br label %58

45:                                               ; preds = %39
  %46 = load i32, i32* @TWL6040_LPLLFIN, align 4
  %47 = xor i32 %46, -1
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, %47
  store i32 %49, i32* %10, align 4
  br label %58

50:                                               ; preds = %39
  %51 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %52 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_err(i32 %53, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %11, align 4
  br label %223

58:                                               ; preds = %45, %41
  %59 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %60 = load i32, i32* @TWL6040_REG_LPPLLCTL, align 4
  %61 = load i32, i32* %10, align 4
  %62 = call i32 @twl6040_reg_write(%struct.twl6040* %59, i32 %60, i32 %61)
  br label %63

63:                                               ; preds = %58, %33
  %64 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %65 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp eq i32 %66, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %63
  br label %216

70:                                               ; preds = %63
  %71 = load i32, i32* %7, align 4
  switch i32 %71, label %97 [
    i32 32768, label %72
  ]

72:                                               ; preds = %70
  %73 = load i32, i32* @TWL6040_LPLLENA, align 4
  %74 = load i32, i32* %10, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %10, align 4
  %76 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %77 = load i32, i32* @TWL6040_REG_LPPLLCTL, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @twl6040_reg_write(%struct.twl6040* %76, i32 %77, i32 %78)
  %80 = call i32 @mdelay(i32 5)
  %81 = load i32, i32* @TWL6040_HPLLSEL, align 4
  %82 = xor i32 %81, -1
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, %82
  store i32 %84, i32* %10, align 4
  %85 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %86 = load i32, i32* @TWL6040_REG_LPPLLCTL, align 4
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @twl6040_reg_write(%struct.twl6040* %85, i32 %86, i32 %87)
  %89 = load i32, i32* @TWL6040_HPLLENA, align 4
  %90 = xor i32 %89, -1
  %91 = load i32, i32* %9, align 4
  %92 = and i32 %91, %90
  store i32 %92, i32* %9, align 4
  %93 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %94 = load i32, i32* @TWL6040_REG_HPPLLCTL, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @twl6040_reg_write(%struct.twl6040* %93, i32 %94, i32 %95)
  br label %105

97:                                               ; preds = %70
  %98 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %99 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @dev_err(i32 %100, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %11, align 4
  br label %223

105:                                              ; preds = %72
  %106 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %107 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %106, i32 0, i32 5
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @clk_disable_unprepare(i32 %108)
  br label %216

110:                                              ; preds = %31
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 19200000
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %115 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %8, align 4
  %118 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %117)
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %11, align 4
  br label %223

121:                                              ; preds = %110
  %122 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %123 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = load i32, i32* %7, align 4
  %126 = icmp ne i32 %124, %125
  br i1 %126, label %127, label %207

127:                                              ; preds = %121
  %128 = load i32, i32* @TWL6040_MCLK_MSK, align 4
  %129 = xor i32 %128, -1
  %130 = load i32, i32* %9, align 4
  %131 = and i32 %130, %129
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %7, align 4
  switch i32 %132, label %161 [
    i32 12000000, label %133
    i32 19200000, label %139
    i32 26000000, label %147
    i32 38400000, label %153
  ]

133:                                              ; preds = %127
  %134 = load i32, i32* @TWL6040_MCLK_12000KHZ, align 4
  %135 = load i32, i32* @TWL6040_HPLLENA, align 4
  %136 = or i32 %134, %135
  %137 = load i32, i32* %9, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %9, align 4
  br label %169

139:                                              ; preds = %127
  %140 = load i32, i32* @TWL6040_MCLK_19200KHZ, align 4
  %141 = load i32, i32* @TWL6040_HPLLBP, align 4
  %142 = or i32 %140, %141
  %143 = load i32, i32* @TWL6040_HPLLENA, align 4
  %144 = or i32 %142, %143
  %145 = load i32, i32* %9, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %9, align 4
  br label %169

147:                                              ; preds = %127
  %148 = load i32, i32* @TWL6040_MCLK_26000KHZ, align 4
  %149 = load i32, i32* @TWL6040_HPLLENA, align 4
  %150 = or i32 %148, %149
  %151 = load i32, i32* %9, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %9, align 4
  br label %169

153:                                              ; preds = %127
  %154 = load i32, i32* @TWL6040_MCLK_38400KHZ, align 4
  %155 = load i32, i32* @TWL6040_HPLLBP, align 4
  %156 = or i32 %154, %155
  %157 = load i32, i32* @TWL6040_HPLLENA, align 4
  %158 = or i32 %156, %157
  %159 = load i32, i32* %9, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %9, align 4
  br label %169

161:                                              ; preds = %127
  %162 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %163 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %7, align 4
  %166 = call i32 @dev_err(i32 %164, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %165)
  %167 = load i32, i32* @EINVAL, align 4
  %168 = sub nsw i32 0, %167
  store i32 %168, i32* %11, align 4
  br label %223

169:                                              ; preds = %153, %147, %139, %133
  %170 = load i32, i32* %6, align 4
  %171 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %172 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 4
  %174 = icmp ne i32 %170, %173
  br i1 %174, label %175, label %180

175:                                              ; preds = %169
  %176 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %177 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %176, i32 0, i32 5
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @clk_prepare_enable(i32 %178)
  br label %180

180:                                              ; preds = %175, %169
  %181 = load i32, i32* @TWL6040_HPLLSQRENA, align 4
  %182 = load i32, i32* %9, align 4
  %183 = or i32 %182, %181
  store i32 %183, i32* %9, align 4
  %184 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %185 = load i32, i32* @TWL6040_REG_HPPLLCTL, align 4
  %186 = load i32, i32* %9, align 4
  %187 = call i32 @twl6040_reg_write(%struct.twl6040* %184, i32 %185, i32 %186)
  %188 = call i32 @usleep_range(i32 500, i32 700)
  %189 = load i32, i32* @TWL6040_HPLLSEL, align 4
  %190 = load i32, i32* %10, align 4
  %191 = or i32 %190, %189
  store i32 %191, i32* %10, align 4
  %192 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %193 = load i32, i32* @TWL6040_REG_LPPLLCTL, align 4
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @twl6040_reg_write(%struct.twl6040* %192, i32 %193, i32 %194)
  %196 = load i32, i32* @TWL6040_LPLLENA, align 4
  %197 = xor i32 %196, -1
  %198 = load i32, i32* %10, align 4
  %199 = and i32 %198, %197
  store i32 %199, i32* %10, align 4
  %200 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %201 = load i32, i32* @TWL6040_REG_LPPLLCTL, align 4
  %202 = load i32, i32* %10, align 4
  %203 = call i32 @twl6040_reg_write(%struct.twl6040* %200, i32 %201, i32 %202)
  %204 = load i32, i32* %7, align 4
  %205 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %206 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %205, i32 0, i32 2
  store i32 %204, i32* %206, align 4
  br label %207

207:                                              ; preds = %180, %121
  br label %216

208:                                              ; preds = %31
  %209 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %210 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %6, align 4
  %213 = call i32 @dev_err(i32 %211, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %212)
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %11, align 4
  br label %223

216:                                              ; preds = %207, %105, %69
  %217 = load i32, i32* %8, align 4
  %218 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %219 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %218, i32 0, i32 1
  store i32 %217, i32* %219, align 4
  %220 = load i32, i32* %6, align 4
  %221 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %222 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %221, i32 0, i32 0
  store i32 %220, i32* %222, align 4
  br label %223

223:                                              ; preds = %216, %208, %161, %113, %97, %50
  %224 = load %struct.twl6040*, %struct.twl6040** %5, align 8
  %225 = getelementptr inbounds %struct.twl6040, %struct.twl6040* %224, i32 0, i32 3
  %226 = call i32 @mutex_unlock(i32* %225)
  %227 = load i32, i32* %11, align 4
  ret i32 %227
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @twl6040_reg_read(%struct.twl6040*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @twl6040_reg_write(%struct.twl6040*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
