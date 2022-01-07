; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/extr_s5k5baf.c_s5k5baf_hw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s5k5baf = type { i32 }

@AHB_MSB_ADDR_PTR = common dso_local global i32 0, align 4
@PAGE_IF_HW = common dso_local global i32 0, align 4
@REG_CLEAR_HOST_INT = common dso_local global i32 0, align 4
@REG_SW_LOAD_COMPLETE = common dso_local global i32 0, align 4
@REG_CMDRD_PAGE = common dso_local global i32 0, align 4
@PAGE_IF_SW = common dso_local global i32 0, align 4
@REG_CMDWR_PAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s5k5baf*)* @s5k5baf_hw_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s5k5baf_hw_init(%struct.s5k5baf* %0) #0 {
  %2 = alloca %struct.s5k5baf*, align 8
  store %struct.s5k5baf* %0, %struct.s5k5baf** %2, align 8
  %3 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %4 = load i32, i32* @AHB_MSB_ADDR_PTR, align 4
  %5 = load i32, i32* @PAGE_IF_HW, align 4
  %6 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %3, i32 %4, i32 %5)
  %7 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %8 = load i32, i32* @REG_CLEAR_HOST_INT, align 4
  %9 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %7, i32 %8, i32 0)
  %10 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %11 = load i32, i32* @REG_SW_LOAD_COMPLETE, align 4
  %12 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %10, i32 %11, i32 1)
  %13 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %14 = load i32, i32* @REG_CMDRD_PAGE, align 4
  %15 = load i32, i32* @PAGE_IF_SW, align 4
  %16 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %13, i32 %14, i32 %15)
  %17 = load %struct.s5k5baf*, %struct.s5k5baf** %2, align 8
  %18 = load i32, i32* @REG_CMDWR_PAGE, align 4
  %19 = load i32, i32* @PAGE_IF_SW, align 4
  %20 = call i32 @s5k5baf_i2c_write(%struct.s5k5baf* %17, i32 %18, i32 %19)
  ret void
}

declare dso_local i32 @s5k5baf_i2c_write(%struct.s5k5baf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
