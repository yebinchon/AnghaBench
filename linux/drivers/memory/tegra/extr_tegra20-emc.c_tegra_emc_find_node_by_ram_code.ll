; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_tegra_emc_find_node_by_ram_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra20-emc.c_tegra_emc_find_node_by_ram_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.device = type { %struct.device_node* }

@.str = private unnamed_addr constant [20 x i8] c"nvidia,use-ram-code\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"emc-tables\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"nvidia,ram-code\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"no memory timings for RAM code %u found in device tree\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_node* (%struct.device*)* @tegra_emc_find_node_by_ram_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_node* @tegra_emc_find_node_by_ram_code(%struct.device* %0) #0 {
  %2 = alloca %struct.device_node*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.device_node*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load %struct.device_node*, %struct.device_node** %9, align 8
  %11 = call i32 @of_property_read_bool(%struct.device_node* %10, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %3, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.device_node*, %struct.device_node** %15, align 8
  %17 = call %struct.device_node* @of_node_get(%struct.device_node* %16)
  store %struct.device_node* %17, %struct.device_node** %2, align 8
  br label %48

18:                                               ; preds = %1
  %19 = call i64 (...) @tegra_read_ram_code()
  store i64 %19, i64* %6, align 8
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = getelementptr inbounds %struct.device, %struct.device* %20, i32 0, i32 0
  %22 = load %struct.device_node*, %struct.device_node** %21, align 8
  %23 = call %struct.device_node* @of_find_node_by_name(%struct.device_node* %22, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %23, %struct.device_node** %4, align 8
  br label %24

24:                                               ; preds = %41, %18
  %25 = load %struct.device_node*, %struct.device_node** %4, align 8
  %26 = icmp ne %struct.device_node* %25, null
  br i1 %26, label %27, label %44

27:                                               ; preds = %24
  %28 = load %struct.device_node*, %struct.device_node** %4, align 8
  %29 = call i32 @of_property_read_u32(%struct.device_node* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i64* %5)
  store i32 %29, i32* %7, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = icmp ne i64 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %27
  %37 = load %struct.device_node*, %struct.device_node** %4, align 8
  %38 = call i32 @of_node_put(%struct.device_node* %37)
  br label %41

39:                                               ; preds = %32
  %40 = load %struct.device_node*, %struct.device_node** %4, align 8
  store %struct.device_node* %40, %struct.device_node** %2, align 8
  br label %48

41:                                               ; preds = %36
  %42 = load %struct.device_node*, %struct.device_node** %4, align 8
  %43 = call %struct.device_node* @of_find_node_by_name(%struct.device_node* %42, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  store %struct.device_node* %43, %struct.device_node** %4, align 8
  br label %24

44:                                               ; preds = %24
  %45 = load %struct.device*, %struct.device** %3, align 8
  %46 = load i64, i64* %6, align 8
  %47 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i64 %46)
  store %struct.device_node* null, %struct.device_node** %2, align 8
  br label %48

48:                                               ; preds = %44, %39, %13
  %49 = load %struct.device_node*, %struct.device_node** %2, align 8
  ret %struct.device_node* %49
}

declare dso_local i32 @of_property_read_bool(%struct.device_node*, i8*) #1

declare dso_local %struct.device_node* @of_node_get(%struct.device_node*) #1

declare dso_local i64 @tegra_read_ram_code(...) #1

declare dso_local %struct.device_node* @of_find_node_by_name(%struct.device_node*, i8*) #1

declare dso_local i32 @of_property_read_u32(%struct.device_node*, i8*, i64*) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
