; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.realtek_smi*)* @realtek_smi_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @realtek_smi_stop(%struct.realtek_smi* %0) #0 {
  %2 = alloca %struct.realtek_smi*, align 8
  store %struct.realtek_smi* %0, %struct.realtek_smi** %2, align 8
  %3 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %4 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %3)
  %5 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %6 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @gpiod_set_value(i32 %7, i32 0)
  %9 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %10 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @gpiod_set_value(i32 %11, i32 1)
  %13 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %14 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %13)
  %15 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %16 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpiod_set_value(i32 %17, i32 1)
  %19 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %20 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %19)
  %21 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %22 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @gpiod_set_value(i32 %23, i32 1)
  %25 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %26 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %25)
  %27 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %28 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @gpiod_set_value(i32 %29, i32 0)
  %31 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %32 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %31)
  %33 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %34 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @gpiod_set_value(i32 %35, i32 1)
  %37 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %38 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %37)
  %39 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %40 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @gpiod_set_value(i32 %41, i32 0)
  %43 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %44 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %43)
  %45 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %46 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @gpiod_set_value(i32 %47, i32 1)
  %49 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %50 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gpiod_direction_input(i32 %51)
  %53 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %54 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @gpiod_direction_input(i32 %55)
  ret void
}

declare dso_local i32 @realtek_smi_clk_delay(%struct.realtek_smi*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @gpiod_direction_input(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
