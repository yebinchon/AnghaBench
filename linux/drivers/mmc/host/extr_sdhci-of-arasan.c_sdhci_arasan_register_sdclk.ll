; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_register_sdclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sdhci-of-arasan.c_sdhci_arasan_register_sdclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_arasan_data = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.clk_init_data* }
%struct.clk_init_data = type { i8**, i32, i32*, i32, i32 }
%struct.clk = type { i32 }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"#clock-cells\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"DT has #clock-cells but no clock-output-names\0A\00", align 1
@CLK_GET_RATE_NOCACHE = common dso_local global i32 0, align 4
@arasan_sdcardclk_ops = common dso_local global i32 0, align 4
@of_clk_src_simple_get = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Failed to add clock provider\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sdhci_arasan_data*, %struct.clk*, %struct.device*)* @sdhci_arasan_register_sdclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdhci_arasan_register_sdclk(%struct.sdhci_arasan_data* %0, %struct.clk* %1, %struct.device* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sdhci_arasan_data*, align 8
  %6 = alloca %struct.clk*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca %struct.device_node*, align 8
  %9 = alloca %struct.clk_init_data, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.sdhci_arasan_data* %0, %struct.sdhci_arasan_data** %5, align 8
  store %struct.clk* %1, %struct.clk** %6, align 8
  store %struct.device* %2, %struct.device** %7, align 8
  %12 = load %struct.device*, %struct.device** %7, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %8, align 8
  %15 = load %struct.device_node*, %struct.device_node** %8, align 8
  %16 = call i32 @of_find_property(%struct.device_node* %15, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32* null)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %62

19:                                               ; preds = %3
  %20 = load %struct.device_node*, %struct.device_node** %8, align 8
  %21 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 4
  %22 = call i32 @of_property_read_string_index(%struct.device_node* %20, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 0, i32* %21)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load %struct.device*, %struct.device** %7, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %62

29:                                               ; preds = %19
  %30 = load %struct.clk*, %struct.clk** %6, align 8
  %31 = call i8* @__clk_get_name(%struct.clk* %30)
  store i8* %31, i8** %10, align 8
  %32 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 0
  store i8** %10, i8*** %32, align 8
  %33 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 1
  store i32 1, i32* %33, align 8
  %34 = load i32, i32* @CLK_GET_RATE_NOCACHE, align 4
  %35 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 3
  store i32 %34, i32* %35, align 8
  %36 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %9, i32 0, i32 2
  store i32* @arasan_sdcardclk_ops, i32** %36, align 8
  %37 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %5, align 8
  %38 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store %struct.clk_init_data* %9, %struct.clk_init_data** %39, align 8
  %40 = load %struct.device*, %struct.device** %7, align 8
  %41 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %5, align 8
  %42 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %41, i32 0, i32 1
  %43 = call i32 @devm_clk_register(%struct.device* %40, %struct.TYPE_2__* %42)
  %44 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %5, align 8
  %45 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  %46 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %5, align 8
  %47 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  store %struct.clk_init_data* null, %struct.clk_init_data** %48, align 8
  %49 = load %struct.device_node*, %struct.device_node** %8, align 8
  %50 = load i32, i32* @of_clk_src_simple_get, align 4
  %51 = load %struct.sdhci_arasan_data*, %struct.sdhci_arasan_data** %5, align 8
  %52 = getelementptr inbounds %struct.sdhci_arasan_data, %struct.sdhci_arasan_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @of_clk_add_provider(%struct.device_node* %49, i32 %50, i32 %53)
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %29
  %58 = load %struct.device*, %struct.device** %7, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %29
  %61 = load i32, i32* %11, align 4
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %60, %25, %18
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i32 @of_find_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @of_property_read_string_index(%struct.device_node*, i8*, i32, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i8* @__clk_get_name(%struct.clk*) #1

declare dso_local i32 @devm_clk_register(%struct.device*, %struct.TYPE_2__*) #1

declare dso_local i32 @of_clk_add_provider(%struct.device_node*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
