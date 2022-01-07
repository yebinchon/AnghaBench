; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_simple.c_mmc_pwrseq_simple_set_gpios_value.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_pwrseq_simple.c_mmc_pwrseq_simple_set_gpios_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_pwrseq_simple = type { %struct.gpio_descs* }
%struct.gpio_descs = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_pwrseq_simple*, i32)* @mmc_pwrseq_simple_set_gpios_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mmc_pwrseq_simple_set_gpios_value(%struct.mmc_pwrseq_simple* %0, i32 %1) #0 {
  %3 = alloca %struct.mmc_pwrseq_simple*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gpio_descs*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_pwrseq_simple* %0, %struct.mmc_pwrseq_simple** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mmc_pwrseq_simple*, %struct.mmc_pwrseq_simple** %3, align 8
  %9 = getelementptr inbounds %struct.mmc_pwrseq_simple, %struct.mmc_pwrseq_simple* %8, i32 0, i32 0
  %10 = load %struct.gpio_descs*, %struct.gpio_descs** %9, align 8
  store %struct.gpio_descs* %10, %struct.gpio_descs** %5, align 8
  %11 = load %struct.gpio_descs*, %struct.gpio_descs** %5, align 8
  %12 = call i32 @IS_ERR(%struct.gpio_descs* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %47, label %14

14:                                               ; preds = %2
  %15 = load %struct.gpio_descs*, %struct.gpio_descs** %5, align 8
  %16 = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i64* @bitmap_alloc(i32 %18, i32 %19)
  store i64* %20, i64** %6, align 8
  %21 = load i64*, i64** %6, align 8
  %22 = icmp ne i64* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %14
  br label %47

24:                                               ; preds = %14
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %24
  %28 = load i64*, i64** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @bitmap_fill(i64* %28, i32 %29)
  br label %35

31:                                               ; preds = %24
  %32 = load i64*, i64** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @bitmap_zero(i64* %32, i32 %33)
  br label %35

35:                                               ; preds = %31, %27
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.gpio_descs*, %struct.gpio_descs** %5, align 8
  %38 = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.gpio_descs*, %struct.gpio_descs** %5, align 8
  %41 = getelementptr inbounds %struct.gpio_descs, %struct.gpio_descs* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load i64*, i64** %6, align 8
  %44 = call i32 @gpiod_set_array_value_cansleep(i32 %36, i32 %39, i32 %42, i64* %43)
  %45 = load i64*, i64** %6, align 8
  %46 = call i32 @kfree(i64* %45)
  br label %47

47:                                               ; preds = %23, %35, %2
  ret void
}

declare dso_local i32 @IS_ERR(%struct.gpio_descs*) #1

declare dso_local i64* @bitmap_alloc(i32, i32) #1

declare dso_local i32 @bitmap_fill(i64*, i32) #1

declare dso_local i32 @bitmap_zero(i64*, i32) #1

declare dso_local i32 @gpiod_set_array_value_cansleep(i32, i32, i32, i64*) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
