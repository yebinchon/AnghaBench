; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nandsim.c_nandsim_debugfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nandsim.c_nandsim_debugfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.nandsim = type { i32 }

@nsmtd = common dso_local global %struct.TYPE_4__* null, align 8
@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4
@CONFIG_MTD_PARTITIONED_MASTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [71 x i8] c"CONFIG_MTD_PARTITIONED_MASTER must be enabled to expose debugfs stuff\0A\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"nandsim_wear_report\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@nandsim_fops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"cannot create \22nandsim_wear_report\22 debugfs entry\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nandsim*)* @nandsim_debugfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nandsim_debugfs_create(%struct.nandsim* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nandsim*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.nandsim* %0, %struct.nandsim** %3, align 8
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** @nsmtd, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %9, %struct.dentry** %4, align 8
  %10 = load %struct.dentry*, %struct.dentry** %4, align 8
  %11 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %15 = call i64 @IS_ENABLED(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load i32, i32* @CONFIG_MTD_PARTITIONED_MASTER, align 4
  %19 = call i64 @IS_ENABLED(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17
  %22 = call i32 @NS_WARN(i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %17, %13
  store i32 0, i32* %2, align 4
  br label %35

24:                                               ; preds = %1
  %25 = load i32, i32* @S_IRUSR, align 4
  %26 = load %struct.dentry*, %struct.dentry** %4, align 8
  %27 = load %struct.nandsim*, %struct.nandsim** %3, align 8
  %28 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %25, %struct.dentry* %26, %struct.nandsim* %27, i32* @nandsim_fops)
  store %struct.dentry* %28, %struct.dentry** %5, align 8
  %29 = load %struct.dentry*, %struct.dentry** %5, align 8
  %30 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %24
  %33 = call i32 @NS_ERR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %35

34:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %35

35:                                               ; preds = %34, %32, %23
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @NS_WARN(i8*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.nandsim*, i32*) #1

declare dso_local i32 @NS_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
