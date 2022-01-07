; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_load_one_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_mc.c_load_one_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tegra_mc = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.tegra_mc_timing = type { i32, i32 }
%struct.device_node = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"timing %pOFn: failed to read rate\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"nvidia,emem-configuration\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"timing %pOFn: failed to read EMEM configuration\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tegra_mc*, %struct.tegra_mc_timing*, %struct.device_node*)* @load_one_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_one_timing(%struct.tegra_mc* %0, %struct.tegra_mc_timing* %1, %struct.device_node* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tegra_mc*, align 8
  %6 = alloca %struct.tegra_mc_timing*, align 8
  %7 = alloca %struct.device_node*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tegra_mc* %0, %struct.tegra_mc** %5, align 8
  store %struct.tegra_mc_timing* %1, %struct.tegra_mc_timing** %6, align 8
  store %struct.device_node* %2, %struct.device_node** %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %7, align 8
  %11 = call i32 @of_property_read_u32(%struct.device_node* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32* %9)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %21

14:                                               ; preds = %3
  %15 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %16 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.device_node*, %struct.device_node** %7, align 8
  %19 = call i32 @dev_err(i32 %17, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), %struct.device_node* %18)
  %20 = load i32, i32* %8, align 4
  store i32 %20, i32* %4, align 4
  br label %65

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = load %struct.tegra_mc_timing*, %struct.tegra_mc_timing** %6, align 8
  %24 = getelementptr inbounds %struct.tegra_mc_timing, %struct.tegra_mc_timing* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %26 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %29 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = call i32 @devm_kcalloc(i32 %27, i32 %32, i32 4, i32 %33)
  %35 = load %struct.tegra_mc_timing*, %struct.tegra_mc_timing** %6, align 8
  %36 = getelementptr inbounds %struct.tegra_mc_timing, %struct.tegra_mc_timing* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.tegra_mc_timing*, %struct.tegra_mc_timing** %6, align 8
  %38 = getelementptr inbounds %struct.tegra_mc_timing, %struct.tegra_mc_timing* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %21
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %65

44:                                               ; preds = %21
  %45 = load %struct.device_node*, %struct.device_node** %7, align 8
  %46 = load %struct.tegra_mc_timing*, %struct.tegra_mc_timing** %6, align 8
  %47 = getelementptr inbounds %struct.tegra_mc_timing, %struct.tegra_mc_timing* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %50 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @of_property_read_u32_array(%struct.device_node* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %48, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %44
  %58 = load %struct.tegra_mc*, %struct.tegra_mc** %5, align 8
  %59 = getelementptr inbounds %struct.tegra_mc, %struct.tegra_mc* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.device_node*, %struct.device_node** %7, align 8
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0), %struct.device_node* %61)
  %63 = load i32, i32* %8, align 4
  store i32 %63, i32* %4, align 4
  br label %65

64:                                               ; preds = %44
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %57, %41, %14
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*, %struct.device_node*) #1

declare dso_local i32 @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @of_property_read_u32_array(%struct.device_node*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
