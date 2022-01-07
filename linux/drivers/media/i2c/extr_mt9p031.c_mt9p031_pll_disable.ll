; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_pll_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_mt9p031.c_mt9p031_pll_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt9p031 = type { i32, i32 }
%struct.i2c_client = type { i32 }

@MT9P031_PLL_CONTROL = common dso_local global i32 0, align 4
@MT9P031_PLL_CONTROL_PWROFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt9p031*)* @mt9p031_pll_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9p031_pll_disable(%struct.mt9p031* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mt9p031*, align 8
  %4 = alloca %struct.i2c_client*, align 8
  store %struct.mt9p031* %0, %struct.mt9p031** %3, align 8
  %5 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %6 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %5, i32 0, i32 1
  %7 = call %struct.i2c_client* @v4l2_get_subdevdata(i32* %6)
  store %struct.i2c_client* %7, %struct.i2c_client** %4, align 8
  %8 = load %struct.mt9p031*, %struct.mt9p031** %3, align 8
  %9 = getelementptr inbounds %struct.mt9p031, %struct.mt9p031* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %18

13:                                               ; preds = %1
  %14 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %15 = load i32, i32* @MT9P031_PLL_CONTROL, align 4
  %16 = load i32, i32* @MT9P031_PLL_CONTROL_PWROFF, align 4
  %17 = call i32 @mt9p031_write(%struct.i2c_client* %14, i32 %15, i32 %16)
  store i32 %17, i32* %2, align 4
  br label %18

18:                                               ; preds = %13, %12
  %19 = load i32, i32* %2, align 4
  ret i32 %19
}

declare dso_local %struct.i2c_client* @v4l2_get_subdevdata(i32*) #1

declare dso_local i32 @mt9p031_write(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
