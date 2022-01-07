; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_read_bits.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_realtek-smi-core.c_realtek_smi_read_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.realtek_smi = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.realtek_smi*, i64, i64*)* @realtek_smi_read_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @realtek_smi_read_bits(%struct.realtek_smi* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.realtek_smi*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.realtek_smi* %0, %struct.realtek_smi** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %8 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %9 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @gpiod_direction_input(i32 %10)
  %12 = load i64*, i64** %6, align 8
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %45, %3
  %14 = load i64, i64* %5, align 8
  %15 = icmp sgt i64 %14, 0
  br i1 %15, label %16, label %48

16:                                               ; preds = %13
  %17 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %18 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %17)
  %19 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %20 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @gpiod_set_value(i32 %21, i32 1)
  %23 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %24 = call i32 @realtek_smi_clk_delay(%struct.realtek_smi* %23)
  %25 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %26 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @gpiod_get_value(i32 %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = sext i32 %32 to i64
  store i64 %33, i64* %7, align 8
  %34 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %35 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @gpiod_set_value(i32 %36, i32 0)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %5, align 8
  %40 = sub nsw i64 %39, 1
  %41 = shl i64 %38, %40
  %42 = load i64*, i64** %6, align 8
  %43 = load i64, i64* %42, align 8
  %44 = or i64 %43, %41
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %16
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %5, align 8
  br label %13

48:                                               ; preds = %13
  %49 = load %struct.realtek_smi*, %struct.realtek_smi** %4, align 8
  %50 = getelementptr inbounds %struct.realtek_smi, %struct.realtek_smi* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @gpiod_direction_output(i32 %51, i32 0)
  ret void
}

declare dso_local i32 @gpiod_direction_input(i32) #1

declare dso_local i32 @realtek_smi_clk_delay(%struct.realtek_smi*) #1

declare dso_local i32 @gpiod_set_value(i32, i32) #1

declare dso_local i32 @gpiod_get_value(i32) #1

declare dso_local i32 @gpiod_direction_output(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
