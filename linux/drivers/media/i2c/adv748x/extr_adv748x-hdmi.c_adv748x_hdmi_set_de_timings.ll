; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_set_de_timings.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/i2c/adv748x/extr_adv748x-hdmi.c_adv748x_hdmi_set_de_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adv748x_state = type { i32 }

@ADV748X_CP_DE_POS_HIGH_SET = common dso_local global i32 0, align 4
@ADV748X_CP_DE_POS_HIGH = common dso_local global i32 0, align 4
@ADV748X_CP_DE_POS_END_LOW = common dso_local global i32 0, align 4
@ADV748X_CP_DE_POS_START_LOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adv748x_state*, i32)* @adv748x_hdmi_set_de_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adv748x_hdmi_set_de_timings(%struct.adv748x_state* %0, i32 %1) #0 {
  %3 = alloca %struct.adv748x_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.adv748x_state* %0, %struct.adv748x_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* @ADV748X_CP_DE_POS_HIGH_SET, align 4
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %4, align 4
  %9 = and i32 %8, 768
  %10 = ashr i32 %9, 8
  %11 = load i32, i32* %5, align 4
  %12 = or i32 %11, %10
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %4, align 4
  %14 = and i32 %13, 255
  store i32 %14, i32* %6, align 4
  %15 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %16 = load i32, i32* @ADV748X_CP_DE_POS_HIGH, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @cp_write(%struct.adv748x_state* %15, i32 %16, i32 %17)
  %19 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %20 = load i32, i32* @ADV748X_CP_DE_POS_END_LOW, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @cp_write(%struct.adv748x_state* %19, i32 %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, 768
  %25 = ashr i32 %24, 6
  %26 = load i32, i32* %5, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %5, align 4
  %28 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %29 = load i32, i32* @ADV748X_CP_DE_POS_HIGH, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @cp_write(%struct.adv748x_state* %28, i32 %29, i32 %30)
  %32 = load %struct.adv748x_state*, %struct.adv748x_state** %3, align 8
  %33 = load i32, i32* @ADV748X_CP_DE_POS_START_LOW, align 4
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @cp_write(%struct.adv748x_state* %32, i32 %33, i32 %34)
  ret void
}

declare dso_local i32 @cp_write(%struct.adv748x_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
