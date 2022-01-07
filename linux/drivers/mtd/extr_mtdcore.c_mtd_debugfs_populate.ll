; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_debugfs_populate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdcore.c_mtd_debugfs_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.mtd_info = type { %struct.TYPE_2__, %struct.device }
%struct.TYPE_2__ = type { i64, i64, %struct.dentry* }
%struct.device = type { i32 }

@dfs_dir_mtd = common dso_local global %struct.dentry* null, align 8
@.str = private unnamed_addr constant [28 x i8] c"won't show data in debugfs\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"partid\00", align 1
@mtd_partid_debug_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"can't create debugfs entry for partid\0A\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"partname\00", align 1
@mtd_partname_debug_fops = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"can't create debugfs entry for partname\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtd_info*)* @mtd_debugfs_populate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtd_debugfs_populate(%struct.mtd_info* %0) #0 {
  %2 = alloca %struct.mtd_info*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.mtd_info* %0, %struct.mtd_info** %2, align 8
  %6 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 1
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.dentry*, %struct.dentry** @dfs_dir_mtd, align 8
  %9 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %61

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @dev_name(%struct.device* %13)
  %15 = load %struct.dentry*, %struct.dentry** @dfs_dir_mtd, align 8
  %16 = call %struct.dentry* @debugfs_create_dir(i32 %14, %struct.dentry* %15)
  store %struct.dentry* %16, %struct.dentry** %4, align 8
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load %struct.device*, %struct.device** %3, align 8
  %22 = call i32 @dev_dbg(%struct.device* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %61

23:                                               ; preds = %12
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store %struct.dentry* %24, %struct.dentry** %27, align 8
  %28 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %23
  %34 = load %struct.dentry*, %struct.dentry** %4, align 8
  %35 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %36 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 256, %struct.dentry* %34, %struct.mtd_info* %35, i32* @mtd_partid_debug_fops)
  store %struct.dentry* %36, %struct.dentry** %5, align 8
  %37 = load %struct.dentry*, %struct.dentry** %5, align 8
  %38 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %33
  %41 = load %struct.device*, %struct.device** %3, align 8
  %42 = call i32 @dev_err(%struct.device* %41, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %43

43:                                               ; preds = %40, %33
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %61

50:                                               ; preds = %44
  %51 = load %struct.dentry*, %struct.dentry** %4, align 8
  %52 = load %struct.mtd_info*, %struct.mtd_info** %2, align 8
  %53 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i32 256, %struct.dentry* %51, %struct.mtd_info* %52, i32* @mtd_partname_debug_fops)
  store %struct.dentry* %53, %struct.dentry** %5, align 8
  %54 = load %struct.dentry*, %struct.dentry** %5, align 8
  %55 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.device*, %struct.device** %3, align 8
  %59 = call i32 @dev_err(%struct.device* %58, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %50
  br label %61

61:                                               ; preds = %11, %20, %60, %44
  ret void
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_dir(i32, %struct.dentry*) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mtd_info*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
