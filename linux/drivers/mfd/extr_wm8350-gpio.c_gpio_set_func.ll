; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-gpio.c_gpio_set_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_wm8350-gpio.c_gpio_set_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { i32 }

@WM8350_GPIO_FUNCTION_SELECT_1 = common dso_local global i32 0, align 4
@WM8350_GP0_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GP1_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GP2_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GP3_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GPIO_FUNCTION_SELECT_2 = common dso_local global i32 0, align 4
@WM8350_GP4_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GP5_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GP6_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GP7_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GPIO_FUNCTION_SELECT_3 = common dso_local global i32 0, align 4
@WM8350_GP8_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GP9_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GP10_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GP11_FN_MASK = common dso_local global i32 0, align 4
@WM8350_GPIO_FUNCTION_SELECT_4 = common dso_local global i32 0, align 4
@WM8350_GP12_FN_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wm8350*, i32, i32)* @gpio_set_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gpio_set_func(%struct.wm8350* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %10 = call i32 @wm8350_reg_unlock(%struct.wm8350* %9)
  %11 = load i32, i32* %6, align 4
  switch i32 %11, label %207 [
    i32 0, label %12
    i32 1, label %27
    i32 2, label %42
    i32 3, label %57
    i32 4, label %72
    i32 5, label %87
    i32 6, label %102
    i32 7, label %117
    i32 8, label %132
    i32 9, label %147
    i32 10, label %162
    i32 11, label %177
    i32 12, label %192
  ]

12:                                               ; preds = %3
  %13 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %14 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_1, align 4
  %15 = call i32 @wm8350_reg_read(%struct.wm8350* %13, i32 %14)
  %16 = load i32, i32* @WM8350_GP0_FN_MASK, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  store i32 %18, i32* %8, align 4
  %19 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %20 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_1, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 %22, 15
  %24 = shl i32 %23, 0
  %25 = or i32 %21, %24
  %26 = call i32 @wm8350_reg_write(%struct.wm8350* %19, i32 %20, i32 %25)
  br label %212

27:                                               ; preds = %3
  %28 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %29 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_1, align 4
  %30 = call i32 @wm8350_reg_read(%struct.wm8350* %28, i32 %29)
  %31 = load i32, i32* @WM8350_GP1_FN_MASK, align 4
  %32 = xor i32 %31, -1
  %33 = and i32 %30, %32
  store i32 %33, i32* %8, align 4
  %34 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %35 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_1, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, 15
  %39 = shl i32 %38, 4
  %40 = or i32 %36, %39
  %41 = call i32 @wm8350_reg_write(%struct.wm8350* %34, i32 %35, i32 %40)
  br label %212

42:                                               ; preds = %3
  %43 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %44 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_1, align 4
  %45 = call i32 @wm8350_reg_read(%struct.wm8350* %43, i32 %44)
  %46 = load i32, i32* @WM8350_GP2_FN_MASK, align 4
  %47 = xor i32 %46, -1
  %48 = and i32 %45, %47
  store i32 %48, i32* %8, align 4
  %49 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %50 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_1, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %52, 15
  %54 = shl i32 %53, 8
  %55 = or i32 %51, %54
  %56 = call i32 @wm8350_reg_write(%struct.wm8350* %49, i32 %50, i32 %55)
  br label %212

57:                                               ; preds = %3
  %58 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %59 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_1, align 4
  %60 = call i32 @wm8350_reg_read(%struct.wm8350* %58, i32 %59)
  %61 = load i32, i32* @WM8350_GP3_FN_MASK, align 4
  %62 = xor i32 %61, -1
  %63 = and i32 %60, %62
  store i32 %63, i32* %8, align 4
  %64 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %65 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_1, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 15
  %69 = shl i32 %68, 12
  %70 = or i32 %66, %69
  %71 = call i32 @wm8350_reg_write(%struct.wm8350* %64, i32 %65, i32 %70)
  br label %212

72:                                               ; preds = %3
  %73 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %74 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_2, align 4
  %75 = call i32 @wm8350_reg_read(%struct.wm8350* %73, i32 %74)
  %76 = load i32, i32* @WM8350_GP4_FN_MASK, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  store i32 %78, i32* %8, align 4
  %79 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %80 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_2, align 4
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = and i32 %82, 15
  %84 = shl i32 %83, 0
  %85 = or i32 %81, %84
  %86 = call i32 @wm8350_reg_write(%struct.wm8350* %79, i32 %80, i32 %85)
  br label %212

87:                                               ; preds = %3
  %88 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %89 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_2, align 4
  %90 = call i32 @wm8350_reg_read(%struct.wm8350* %88, i32 %89)
  %91 = load i32, i32* @WM8350_GP5_FN_MASK, align 4
  %92 = xor i32 %91, -1
  %93 = and i32 %90, %92
  store i32 %93, i32* %8, align 4
  %94 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %95 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_2, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* %7, align 4
  %98 = and i32 %97, 15
  %99 = shl i32 %98, 4
  %100 = or i32 %96, %99
  %101 = call i32 @wm8350_reg_write(%struct.wm8350* %94, i32 %95, i32 %100)
  br label %212

102:                                              ; preds = %3
  %103 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %104 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_2, align 4
  %105 = call i32 @wm8350_reg_read(%struct.wm8350* %103, i32 %104)
  %106 = load i32, i32* @WM8350_GP6_FN_MASK, align 4
  %107 = xor i32 %106, -1
  %108 = and i32 %105, %107
  store i32 %108, i32* %8, align 4
  %109 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %110 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_2, align 4
  %111 = load i32, i32* %8, align 4
  %112 = load i32, i32* %7, align 4
  %113 = and i32 %112, 15
  %114 = shl i32 %113, 8
  %115 = or i32 %111, %114
  %116 = call i32 @wm8350_reg_write(%struct.wm8350* %109, i32 %110, i32 %115)
  br label %212

117:                                              ; preds = %3
  %118 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %119 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_2, align 4
  %120 = call i32 @wm8350_reg_read(%struct.wm8350* %118, i32 %119)
  %121 = load i32, i32* @WM8350_GP7_FN_MASK, align 4
  %122 = xor i32 %121, -1
  %123 = and i32 %120, %122
  store i32 %123, i32* %8, align 4
  %124 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %125 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_2, align 4
  %126 = load i32, i32* %8, align 4
  %127 = load i32, i32* %7, align 4
  %128 = and i32 %127, 15
  %129 = shl i32 %128, 12
  %130 = or i32 %126, %129
  %131 = call i32 @wm8350_reg_write(%struct.wm8350* %124, i32 %125, i32 %130)
  br label %212

132:                                              ; preds = %3
  %133 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %134 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_3, align 4
  %135 = call i32 @wm8350_reg_read(%struct.wm8350* %133, i32 %134)
  %136 = load i32, i32* @WM8350_GP8_FN_MASK, align 4
  %137 = xor i32 %136, -1
  %138 = and i32 %135, %137
  store i32 %138, i32* %8, align 4
  %139 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %140 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_3, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load i32, i32* %7, align 4
  %143 = and i32 %142, 15
  %144 = shl i32 %143, 0
  %145 = or i32 %141, %144
  %146 = call i32 @wm8350_reg_write(%struct.wm8350* %139, i32 %140, i32 %145)
  br label %212

147:                                              ; preds = %3
  %148 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %149 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_3, align 4
  %150 = call i32 @wm8350_reg_read(%struct.wm8350* %148, i32 %149)
  %151 = load i32, i32* @WM8350_GP9_FN_MASK, align 4
  %152 = xor i32 %151, -1
  %153 = and i32 %150, %152
  store i32 %153, i32* %8, align 4
  %154 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %155 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_3, align 4
  %156 = load i32, i32* %8, align 4
  %157 = load i32, i32* %7, align 4
  %158 = and i32 %157, 15
  %159 = shl i32 %158, 4
  %160 = or i32 %156, %159
  %161 = call i32 @wm8350_reg_write(%struct.wm8350* %154, i32 %155, i32 %160)
  br label %212

162:                                              ; preds = %3
  %163 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %164 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_3, align 4
  %165 = call i32 @wm8350_reg_read(%struct.wm8350* %163, i32 %164)
  %166 = load i32, i32* @WM8350_GP10_FN_MASK, align 4
  %167 = xor i32 %166, -1
  %168 = and i32 %165, %167
  store i32 %168, i32* %8, align 4
  %169 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %170 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_3, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %7, align 4
  %173 = and i32 %172, 15
  %174 = shl i32 %173, 8
  %175 = or i32 %171, %174
  %176 = call i32 @wm8350_reg_write(%struct.wm8350* %169, i32 %170, i32 %175)
  br label %212

177:                                              ; preds = %3
  %178 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %179 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_3, align 4
  %180 = call i32 @wm8350_reg_read(%struct.wm8350* %178, i32 %179)
  %181 = load i32, i32* @WM8350_GP11_FN_MASK, align 4
  %182 = xor i32 %181, -1
  %183 = and i32 %180, %182
  store i32 %183, i32* %8, align 4
  %184 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %185 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_3, align 4
  %186 = load i32, i32* %8, align 4
  %187 = load i32, i32* %7, align 4
  %188 = and i32 %187, 15
  %189 = shl i32 %188, 12
  %190 = or i32 %186, %189
  %191 = call i32 @wm8350_reg_write(%struct.wm8350* %184, i32 %185, i32 %190)
  br label %212

192:                                              ; preds = %3
  %193 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %194 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_4, align 4
  %195 = call i32 @wm8350_reg_read(%struct.wm8350* %193, i32 %194)
  %196 = load i32, i32* @WM8350_GP12_FN_MASK, align 4
  %197 = xor i32 %196, -1
  %198 = and i32 %195, %197
  store i32 %198, i32* %8, align 4
  %199 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %200 = load i32, i32* @WM8350_GPIO_FUNCTION_SELECT_4, align 4
  %201 = load i32, i32* %8, align 4
  %202 = load i32, i32* %7, align 4
  %203 = and i32 %202, 15
  %204 = shl i32 %203, 0
  %205 = or i32 %201, %204
  %206 = call i32 @wm8350_reg_write(%struct.wm8350* %199, i32 %200, i32 %205)
  br label %212

207:                                              ; preds = %3
  %208 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %209 = call i32 @wm8350_reg_lock(%struct.wm8350* %208)
  %210 = load i32, i32* @EINVAL, align 4
  %211 = sub nsw i32 0, %210
  store i32 %211, i32* %4, align 4
  br label %215

212:                                              ; preds = %192, %177, %162, %147, %132, %117, %102, %87, %72, %57, %42, %27, %12
  %213 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %214 = call i32 @wm8350_reg_lock(%struct.wm8350* %213)
  store i32 0, i32* %4, align 4
  br label %215

215:                                              ; preds = %212, %207
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @wm8350_reg_unlock(%struct.wm8350*) #1

declare dso_local i32 @wm8350_reg_read(%struct.wm8350*, i32) #1

declare dso_local i32 @wm8350_reg_write(%struct.wm8350*, i32, i32) #1

declare dso_local i32 @wm8350_reg_lock(%struct.wm8350*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
