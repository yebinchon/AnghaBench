; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_mtdchar_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/extr_mtdchar.c_mtdchar_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.mtd_file_info* }
%struct.mtd_file_info = type { %struct.mtd_info* }
%struct.mtd_info = type { i64, i32 }

@.str = private unnamed_addr constant [10 x i8] c"MTD_open\0A\00", align 1
@FMODE_WRITE = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@mtd_mutex = common dso_local global i32 0, align 4
@MTD_ABSENT = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@MTD_WRITEABLE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mtdchar_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtdchar_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.mtd_file_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %11 = load %struct.inode*, %struct.inode** %4, align 8
  %12 = call i32 @iminor(%struct.inode* %11)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = ashr i32 %13, 1
  store i32 %14, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = getelementptr inbounds %struct.file, %struct.file* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FMODE_WRITE, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %2
  %23 = load i32, i32* %6, align 4
  %24 = and i32 %23, 1
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %22
  %27 = load i32, i32* @EACCES, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %87

29:                                               ; preds = %22, %2
  %30 = call i32 @mutex_lock(i32* @mtd_mutex)
  %31 = load i32, i32* %7, align 4
  %32 = call %struct.mtd_info* @get_mtd_device(i32* null, i32 %31)
  store %struct.mtd_info* %32, %struct.mtd_info** %9, align 8
  %33 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %34 = call i64 @IS_ERR(%struct.mtd_info* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %38 = call i32 @PTR_ERR(%struct.mtd_info* %37)
  store i32 %38, i32* %8, align 4
  br label %84

39:                                               ; preds = %29
  %40 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %41 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @MTD_ABSENT, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %39
  %46 = load i32, i32* @ENODEV, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %81

48:                                               ; preds = %39
  %49 = load %struct.file*, %struct.file** %5, align 8
  %50 = getelementptr inbounds %struct.file, %struct.file* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @FMODE_WRITE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %57 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @MTD_WRITEABLE, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %55
  %63 = load i32, i32* @EACCES, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %8, align 4
  br label %81

65:                                               ; preds = %55, %48
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call %struct.mtd_file_info* @kzalloc(i32 8, i32 %66)
  store %struct.mtd_file_info* %67, %struct.mtd_file_info** %10, align 8
  %68 = load %struct.mtd_file_info*, %struct.mtd_file_info** %10, align 8
  %69 = icmp ne %struct.mtd_file_info* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ENOMEM, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %81

73:                                               ; preds = %65
  %74 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %75 = load %struct.mtd_file_info*, %struct.mtd_file_info** %10, align 8
  %76 = getelementptr inbounds %struct.mtd_file_info, %struct.mtd_file_info* %75, i32 0, i32 0
  store %struct.mtd_info* %74, %struct.mtd_info** %76, align 8
  %77 = load %struct.mtd_file_info*, %struct.mtd_file_info** %10, align 8
  %78 = load %struct.file*, %struct.file** %5, align 8
  %79 = getelementptr inbounds %struct.file, %struct.file* %78, i32 0, i32 1
  store %struct.mtd_file_info* %77, %struct.mtd_file_info** %79, align 8
  %80 = call i32 @mutex_unlock(i32* @mtd_mutex)
  store i32 0, i32* %3, align 4
  br label %87

81:                                               ; preds = %70, %62, %45
  %82 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %83 = call i32 @put_mtd_device(%struct.mtd_info* %82)
  br label %84

84:                                               ; preds = %81, %36
  %85 = call i32 @mutex_unlock(i32* @mtd_mutex)
  %86 = load i32, i32* %8, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %73, %26
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @iminor(%struct.inode*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.mtd_info* @get_mtd_device(i32*, i32) #1

declare dso_local i64 @IS_ERR(%struct.mtd_info*) #1

declare dso_local i32 @PTR_ERR(%struct.mtd_info*) #1

declare dso_local %struct.mtd_file_info* @kzalloc(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_mtd_device(%struct.mtd_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
