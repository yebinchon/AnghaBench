; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_gpio_set_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_gpio_set_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i64* }

@SFP_F_PRESENT = common dso_local global i32 0, align 4
@GPIO_TX_DISABLE = common dso_local global i64 0, align 8
@SFP_F_TX_DISABLE = common dso_local global i32 0, align 4
@SFP_F_RATE_SELECT = common dso_local global i32 0, align 4
@GPIO_RATE_SELECT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sfp*, i32)* @sfp_gpio_set_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sfp_gpio_set_state(%struct.sfp* %0, i32 %1) #0 {
  %3 = alloca %struct.sfp*, align 8
  %4 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SFP_F_PRESENT, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  %10 = load %struct.sfp*, %struct.sfp** %3, align 8
  %11 = getelementptr inbounds %struct.sfp, %struct.sfp* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = load i64, i64* @GPIO_TX_DISABLE, align 8
  %14 = getelementptr inbounds i64, i64* %12, i64 %13
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %9
  %18 = load %struct.sfp*, %struct.sfp** %3, align 8
  %19 = getelementptr inbounds %struct.sfp, %struct.sfp* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @GPIO_TX_DISABLE, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @SFP_F_TX_DISABLE, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @gpiod_direction_output(i64 %23, i32 %26)
  br label %28

28:                                               ; preds = %17, %9
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* @SFP_F_RATE_SELECT, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.sfp*, %struct.sfp** %3, align 8
  %35 = getelementptr inbounds %struct.sfp, %struct.sfp* %34, i32 0, i32 0
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @GPIO_RATE_SELECT, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @SFP_F_RATE_SELECT, align 4
  %42 = and i32 %40, %41
  %43 = call i32 @gpiod_direction_output(i64 %39, i32 %42)
  br label %44

44:                                               ; preds = %33, %28
  br label %75

45:                                               ; preds = %2
  %46 = load %struct.sfp*, %struct.sfp** %3, align 8
  %47 = getelementptr inbounds %struct.sfp, %struct.sfp* %46, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* @GPIO_TX_DISABLE, align 8
  %50 = getelementptr inbounds i64, i64* %48, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %61

53:                                               ; preds = %45
  %54 = load %struct.sfp*, %struct.sfp** %3, align 8
  %55 = getelementptr inbounds %struct.sfp, %struct.sfp* %54, i32 0, i32 0
  %56 = load i64*, i64** %55, align 8
  %57 = load i64, i64* @GPIO_TX_DISABLE, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @gpiod_direction_input(i64 %59)
  br label %61

61:                                               ; preds = %53, %45
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* @SFP_F_RATE_SELECT, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %61
  %67 = load %struct.sfp*, %struct.sfp** %3, align 8
  %68 = getelementptr inbounds %struct.sfp, %struct.sfp* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @GPIO_RATE_SELECT, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @gpiod_direction_input(i64 %72)
  br label %74

74:                                               ; preds = %66, %61
  br label %75

75:                                               ; preds = %74, %44
  ret void
}

declare dso_local i32 @gpiod_direction_output(i64, i32) #1

declare dso_local i32 @gpiod_direction_input(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
