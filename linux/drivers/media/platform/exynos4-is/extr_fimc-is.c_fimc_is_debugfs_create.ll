; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_debugfs_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/exynos4-is/extr_fimc-is.c_fimc_is_debugfs_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fimc_is = type { i32* }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"fimc_is\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"fw_log\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@fimc_is_fops = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fimc_is*)* @fimc_is_debugfs_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fimc_is_debugfs_create(%struct.fimc_is* %0) #0 {
  %2 = alloca %struct.fimc_is*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.fimc_is* %0, %struct.fimc_is** %2, align 8
  %4 = call i32* @debugfs_create_dir(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32* null)
  %5 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %6 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %5, i32 0, i32 0
  store i32* %4, i32** %6, align 8
  %7 = load i32, i32* @S_IRUGO, align 4
  %8 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %9 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %12 = call %struct.dentry* @debugfs_create_file(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32* %10, %struct.fimc_is* %11, i32* @fimc_is_fops)
  store %struct.dentry* %12, %struct.dentry** %3, align 8
  %13 = load %struct.dentry*, %struct.dentry** %3, align 8
  %14 = icmp ne %struct.dentry* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %17 = call i32 @fimc_is_debugfs_remove(%struct.fimc_is* %16)
  br label %18

18:                                               ; preds = %15, %1
  %19 = load %struct.fimc_is*, %struct.fimc_is** %2, align 8
  %20 = getelementptr inbounds %struct.fimc_is, %struct.fimc_is* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  br label %27

26:                                               ; preds = %18
  br label %27

27:                                               ; preds = %26, %23
  %28 = phi i32 [ %25, %23 ], [ 0, %26 ]
  ret i32 %28
}

declare dso_local i32* @debugfs_create_dir(i8*, i32*) #1

declare dso_local %struct.dentry* @debugfs_create_file(i8*, i32, i32*, %struct.fimc_is*, i32*) #1

declare dso_local i32 @fimc_is_debugfs_remove(%struct.fimc_is*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
