; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/extr_atmel-sdramc.c_atmel_ramc_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/extr_atmel-sdramc.c_atmel_ramc_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.at91_ramc_caps = type { i64, i64 }
%struct.clk = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"ddrck\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"mpddr\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"AT91 RAMC: couldn't get mpddr clock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @atmel_ramc_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_ramc_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.at91_ramc_caps*, align 8
  %5 = alloca %struct.clk*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %7 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %6, i32 0, i32 0
  %8 = call %struct.at91_ramc_caps* @of_device_get_match_data(i32* %7)
  store %struct.at91_ramc_caps* %8, %struct.at91_ramc_caps** %4, align 8
  %9 = load %struct.at91_ramc_caps*, %struct.at91_ramc_caps** %4, align 8
  %10 = getelementptr inbounds %struct.at91_ramc_caps, %struct.at91_ramc_caps* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %26

13:                                               ; preds = %1
  %14 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %15 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %14, i32 0, i32 0
  %16 = call %struct.clk* @devm_clk_get(i32* %15, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  store %struct.clk* %16, %struct.clk** %5, align 8
  %17 = load %struct.clk*, %struct.clk** %5, align 8
  %18 = call i64 @IS_ERR(%struct.clk* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load %struct.clk*, %struct.clk** %5, align 8
  %22 = call i32 @PTR_ERR(%struct.clk* %21)
  store i32 %22, i32* %2, align 4
  br label %46

23:                                               ; preds = %13
  %24 = load %struct.clk*, %struct.clk** %5, align 8
  %25 = call i32 @clk_prepare_enable(%struct.clk* %24)
  br label %26

26:                                               ; preds = %23, %1
  %27 = load %struct.at91_ramc_caps*, %struct.at91_ramc_caps** %4, align 8
  %28 = getelementptr inbounds %struct.at91_ramc_caps, %struct.at91_ramc_caps* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %33 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %32, i32 0, i32 0
  %34 = call %struct.clk* @devm_clk_get(i32* %33, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store %struct.clk* %34, %struct.clk** %5, align 8
  %35 = load %struct.clk*, %struct.clk** %5, align 8
  %36 = call i64 @IS_ERR(%struct.clk* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %40 = load %struct.clk*, %struct.clk** %5, align 8
  %41 = call i32 @PTR_ERR(%struct.clk* %40)
  store i32 %41, i32* %2, align 4
  br label %46

42:                                               ; preds = %31
  %43 = load %struct.clk*, %struct.clk** %5, align 8
  %44 = call i32 @clk_prepare_enable(%struct.clk* %43)
  br label %45

45:                                               ; preds = %42, %26
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %38, %20
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local %struct.at91_ramc_caps* @of_device_get_match_data(i32*) #1

declare dso_local %struct.clk* @devm_clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.clk*) #1

declare dso_local i32 @PTR_ERR(%struct.clk*) #1

declare dso_local i32 @clk_prepare_enable(%struct.clk*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
