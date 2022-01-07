; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-core.c_adv748x_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { i32 }

@ADV748X_IO_REG_FF = common dso_local global i32 0, align 4
@ADV748X_IO_REG_FF_MAIN_RESET = common dso_local global i32 0, align 4
@ADV748X_IO_REG_01 = common dso_local global i32 0, align 4
@ADV748X_IO_REG_01_PWRDN_MASK = common dso_local global i32 0, align 4
@ADV748X_IO_REG_01_PWRDNB = common dso_local global i32 0, align 4
@ADV748X_IO_REG_F2 = common dso_local global i32 0, align 4
@ADV748X_IO_REG_F2_READ_AUTO_INC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adv748x_state*)* @adv748x_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adv748x_sw_reset(%struct.adv748x_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adv748x_state*, align 8
  %4 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %3, align 8
  %5 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %6 = load i32, i32* @ADV748X_IO_REG_FF, align 4
  %7 = load i32, i32* @ADV748X_IO_REG_FF_MAIN_RESET, align 4
  %8 = call i32 @io_write(%struct.adv748x_state* %5, i32 %6, i32 %7)
  store i32 %8, i32* %4, align 4
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %4, align 4
  store i32 %12, i32* %2, align 4
  br label %29

13:                                               ; preds = %1
  %14 = call i32 @usleep_range(i32 5000, i32 6000)
  %15 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %16 = load i32, i32* @ADV748X_IO_REG_01, align 4
  %17 = load i32, i32* @ADV748X_IO_REG_01_PWRDN_MASK, align 4
  %18 = load i32, i32* @ADV748X_IO_REG_01_PWRDNB, align 4
  %19 = call i32 @io_clrset(%struct.adv748x_state* %15, i32 %16, i32 %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %13
  %23 = load i32, i32* %4, align 4
  store i32 %23, i32* %2, align 4
  br label %29

24:                                               ; preds = %13
  %25 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %26 = load i32, i32* @ADV748X_IO_REG_F2, align 4
  %27 = load i32, i32* @ADV748X_IO_REG_F2_READ_AUTO_INC, align 4
  %28 = call i32 @io_write(%struct.adv748x_state* %25, i32 %26, i32 %27)
  store i32 %28, i32* %2, align 4
  br label %29

29:                                               ; preds = %24, %22, %11
  %30 = load i32, i32* %2, align 4
  ret i32 %30
}

declare dso_local i32 @io_write(%struct.adv748x_state*, i32, i32) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @io_clrset(%struct.adv748x_state*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
