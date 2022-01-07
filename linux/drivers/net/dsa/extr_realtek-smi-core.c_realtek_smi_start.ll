; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.realtek_smi*)* @realtek_smi_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @realtek_smi_start(%struct.realtek_smi* %0) #0 {
  %2 = alloca %struct.realtek_smi*, align 8
  store %struct.realtek_smi* %0, %struct.realtek_smi** %2, align 8
  %3 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %4 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @gpiod_direction_output(i32 %5, i32 0)
  %7 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %8 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @gpiod_direction_output(i32 %9, i32 1)
  %11 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %12 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %11)
  %13 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %14 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @gpiod_set_value(i32 %15, i32 1)
  %17 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %18 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %17)
  %19 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %20 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpiod_set_value(i32 %21, i32 0)
  %23 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %24 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %23)
  %25 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %26 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpiod_set_value(i32 %27, i32 1)
  %29 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %30 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %29)
  %31 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %32 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @gpiod_set_value(i32 %33, i32 0)
  %35 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %36 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %35)
  %37 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %38 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @gpiod_set_value(i32 %39, i32 0)
  %41 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %42 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %41)
  %43 = load %struct.realtek_smi*, %struct.realtek_smi** %2, align 8
  %44 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @gpiod_set_value(i32 %45, i32 1)
  ret void
}

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

declare dso_local i32 @realtek_smi_clk_delay(%struct.realtek_smi*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
