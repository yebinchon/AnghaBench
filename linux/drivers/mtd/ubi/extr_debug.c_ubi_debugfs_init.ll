; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CONFIG_DEBUG_FS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"ubi\00", align 1
@dfs_rootdir = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [60 x i8] c"UBI error: cannot create \22ubi\22 debugfs directory, error %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_debugfs_init() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @CONFIG_DEBUG_FS, align 4
  %4 = call i32 @IS_ENABLED(i32 %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %27

7:                                                ; preds = %0
  %8 = call i64 @debugfs_create_dir(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32* null)
  store i64 %8, i64* @dfs_rootdir, align 8
  %9 = load i64, i64* @dfs_rootdir, align 8
  %10 = call i64 @IS_ERR_OR_NULL(i64 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %26

12:                                               ; preds = %7
  %13 = load i64, i64* @dfs_rootdir, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %12
  %16 = load i64, i64* @dfs_rootdir, align 8
  %17 = call i32 @PTR_ERR(i64 %16)
  br label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  br label %21

21:                                               ; preds = %18, %15
  %22 = phi i32 [ %17, %15 ], [ %20, %18 ]
  store i32 %22, i32* %2, align 4
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @pr_err(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load i32, i32* %2, align 4
  store i32 %25, i32* %1, align 4
  br label %27

26:                                               ; preds = %7
  store i32 0, i32* %1, align 4
  br label %27

27:                                               ; preds = %26, %21, %6
  %28 = load i32, i32* %1, align 4
  ret i32 %28
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i64 @debugfs_create_dir(i8*, i32*) #1

declare dso_local i64 @IS_ERR_OR_NULL(i64) #1

declare dso_local i32 @PTR_ERR(i64) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
