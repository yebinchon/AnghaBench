; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_debugfs_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_intel-lpss.c_intel_lpss_debugfs_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_lpss = type { %struct.dentry*, i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@intel_lpss_debugfs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"capabilities\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"active_ltr\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"idle_ltr\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.intel_lpss*)* @intel_lpss_debugfs_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @intel_lpss_debugfs_add(%struct.intel_lpss* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.intel_lpss*, align 8
  %4 = alloca %struct.dentry*, align 8
  store %struct.intel_lpss* %0, %struct.intel_lpss** %3, align 8
  %5 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %6 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @dev_name(i32 %7)
  %9 = load i32, i32* @intel_lpss_debugfs, align 4
  %10 = call %struct.dentry* @debugfs_create_dir(i32 %8, i32 %9)
  store %struct.dentry* %10, %struct.dentry** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %4, align 8
  %12 = call i64 @IS_ERR(%struct.dentry* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call i32 @PTR_ERR(%struct.dentry* %15)
  store i32 %16, i32* %2, align 4
  br label %38

17:                                               ; preds = %1
  %18 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %19 = call i32 @intel_lpss_cache_ltr(%struct.intel_lpss* %18)
  %20 = load i32, i32* @S_IRUGO, align 4
  %21 = load %struct.dentry*, %struct.dentry** %4, align 8
  %22 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %23 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %22, i32 0, i32 3
  %24 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %20, %struct.dentry* %21, i32* %23)
  %25 = load i32, i32* @S_IRUGO, align 4
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %28 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %27, i32 0, i32 2
  %29 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 %25, %struct.dentry* %26, i32* %28)
  %30 = load i32, i32* @S_IRUGO, align 4
  %31 = load %struct.dentry*, %struct.dentry** %4, align 8
  %32 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %33 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %32, i32 0, i32 1
  %34 = call i32 @debugfs_create_x32(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %30, %struct.dentry* %31, i32* %33)
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = load %struct.intel_lpss*, %struct.intel_lpss** %3, align 8
  %37 = getelementptr inbounds %struct.intel_lpss, %struct.intel_lpss* %36, i32 0, i32 0
  store %struct.dentry* %35, %struct.dentry** %37, align 8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %17, %14
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.dentry* @debugfs_create_dir(i32, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local i64 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @intel_lpss_cache_ltr(%struct.intel_lpss*) #1

declare dso_local i32 @debugfs_create_x32(i8*, i32, %struct.dentry*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
