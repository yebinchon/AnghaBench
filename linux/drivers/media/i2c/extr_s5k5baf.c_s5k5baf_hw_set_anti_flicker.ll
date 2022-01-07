; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_anti_flicker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_set_anti_flicker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32 }

@V4L2_CID_POWER_LINE_FREQUENCY_AUTO = common dso_local global i32 0, align 4
@AALG_FLICKER_EN = common dso_local global i32 0, align 4
@REG_SF_FLICKER_QUANT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*, i32)* @s5k5baf_hw_set_anti_flicker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_set_anti_flicker(%struct.s5k5baf* %0, i32 %1) #0 {
  %3 = alloca %struct.s5k5baf*, align 8
  %4 = alloca i32, align 4
  store %struct.s5k5baf* %0, %struct.s5k5baf** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @V4L2_CID_POWER_LINE_FREQUENCY_AUTO, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %12

8:                                                ; preds = %2
  %9 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %10 = load i32, i32* @AALG_FLICKER_EN, align 4
  %11 = call i32 @s5k5baf_hw_set_alg(%struct.s5k5baf* %9, i32 %10, i32 1)
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %14 = load i32, i32* @REG_SF_FLICKER_QUANT, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @s5k5baf_write_seq(%struct.s5k5baf* %13, i32 %14, i32 %15, i32 1)
  %17 = load %struct.s5k5baf*, %struct.s5k5baf** %3, align 8
  %18 = load i32, i32* @AALG_FLICKER_EN, align 4
  %19 = call i32 @s5k5baf_hw_set_alg(%struct.s5k5baf* %17, i32 %18, i32 0)
  br label %20

20:                                               ; preds = %12, %8
  ret void
}

declare dso_local i32 @s5k5baf_hw_set_alg(%struct.s5k5baf*, i32, i32) #1

declare dso_local i32 @s5k5baf_write_seq(%struct.s5k5baf*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
