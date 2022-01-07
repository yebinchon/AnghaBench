; ModuleID = '/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memory/tegra/extr_tegra124-emc.c_emc_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.tegra_emc = type { i32 }
%struct.dentry = type { i32 }
%struct.clk = type opaque

@.str = private unnamed_addr constant [4 x i8] c"emc\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to create debugfs directory\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"tegra-clk-debug\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"failed to get debug clock: %ld\0A\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"rate\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@emc_debug_rate_fops = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"failed to create debugfs entry\0A\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"supported_rates\00", align 1
@emc_debug_supported_rates_fops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.device*, %struct.tegra_emc*)* @emc_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emc_debugfs_init(%struct.device* %0, %struct.tegra_emc* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.tegra_emc*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.clk*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.tegra_emc* %1, %struct.tegra_emc** %4, align 8
  %8 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.dentry* %8, %struct.dentry** %5, align 8
  %9 = load %struct.dentry*, %struct.dentry** %5, align 8
  %10 = icmp ne %struct.dentry* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %50

14:                                               ; preds = %2
  %15 = call %struct.tegra_emc* @clk_get_sys(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %16 = bitcast %struct.tegra_emc* %15 to %struct.clk*
  store %struct.clk* %16, %struct.clk** %7, align 8
  %17 = load %struct.clk*, %struct.clk** %7, align 8
  %18 = bitcast %struct.clk* %17 to %struct.tegra_emc*
  %19 = call i64 @IS_ERR(%struct.tegra_emc* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.device*, %struct.device** %3, align 8
  %23 = load %struct.clk*, %struct.clk** %7, align 8
  %24 = bitcast %struct.clk* %23 to %struct.tegra_emc*
  %25 = call i32 @PTR_ERR(%struct.tegra_emc* %24)
  %26 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), i32 %25)
  br label %50

27:                                               ; preds = %14
  %28 = load i32, i32* @S_IRUGO, align 4
  %29 = load i32, i32* @S_IWUSR, align 4
  %30 = or i32 %28, %29
  %31 = load %struct.dentry*, %struct.dentry** %5, align 8
  %32 = load %struct.clk*, %struct.clk** %7, align 8
  %33 = bitcast %struct.clk* %32 to %struct.tegra_emc*
  %34 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32 %30, %struct.dentry* %31, %struct.tegra_emc* %33, i32* @emc_debug_rate_fops)
  store %struct.dentry* %34, %struct.dentry** %6, align 8
  %35 = load %struct.dentry*, %struct.dentry** %6, align 8
  %36 = icmp ne %struct.dentry* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %27
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %40

40:                                               ; preds = %37, %27
  %41 = load i32, i32* @S_IRUGO, align 4
  %42 = load %struct.dentry*, %struct.dentry** %5, align 8
  %43 = load %struct.tegra_emc*, %struct.tegra_emc** %4, align 8
  %44 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i32 %41, %struct.dentry* %42, %struct.tegra_emc* %43, i32* @emc_debug_supported_rates_fops)
  store %struct.dentry* %44, %struct.dentry** %6, align 8
  %45 = load %struct.dentry*, %struct.dentry** %6, align 8
  %46 = icmp ne %struct.dentry* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load %struct.device*, %struct.device** %3, align 8
  %49 = call i32 (%struct.device*, i8*, ...) @dev_err(%struct.device* %48, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  br label %50

50:                                               ; preds = %11, %21, %47, %40
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, ...) #1

declare dso_local %struct.tegra_emc* @clk_get_sys(i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.tegra_emc*) #1

declare dso_local i32 @PTR_ERR(%struct.tegra_emc*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.tegra_emc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
