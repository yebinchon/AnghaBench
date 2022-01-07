; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_add_debugfs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdswap.c_mtdswap_add_debugfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtdswap_dev = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"mtdswap_stats\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@mtdswap_fops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"debugfs_create_file failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtdswap_dev*)* @mtdswap_add_debugfs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdswap_add_debugfs(%struct.mtdswap_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mtdswap_dev*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  store %struct.mtdswap_dev* %0, %struct.mtdswap_dev** %3, align 8
  %6 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %7 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %4, align 8
  %12 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %13 = call i32 @IS_ENABLED(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.dentry*, %struct.dentry** %4, align 8
  %18 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  store i32 -1, i32* %2, align 4
  br label %34

21:                                               ; preds = %16
  %22 = load i32, i32* @S_IRUSR, align 4
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %25 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %22, %struct.dentry* %23, %struct.mtdswap_dev* %24, i32* @mtdswap_fops)
  store %struct.dentry* %25, %struct.dentry** %5, align 8
  %26 = load %struct.dentry*, %struct.dentry** %5, align 8
  %27 = icmp ne %struct.dentry* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.mtdswap_dev*, %struct.mtdswap_dev** %3, align 8
  %30 = getelementptr inbounds %struct.mtdswap_dev, %struct.mtdswap_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %34

33:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %34

34:                                               ; preds = %33, %28, %20, %15
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.mtdswap_dev*, i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
