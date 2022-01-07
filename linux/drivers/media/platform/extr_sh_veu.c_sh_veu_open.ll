; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/extr_sh_veu.c_sh_veu_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.sh_veu_file* }
%struct.sh_veu_file = type { i32, i32, %struct.sh_veu_dev* }
%struct.sh_veu_dev = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Created instance %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @sh_veu_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_veu_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.sh_veu_dev*, align 8
  %5 = alloca %struct.sh_veu_file*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %6 = load %struct.file*, %struct.file** %3, align 8
  %7 = call %struct.sh_veu_dev* @video_drvdata(%struct.file* %6)
  store %struct.sh_veu_dev* %7, %struct.sh_veu_dev** %4, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.sh_veu_file* @kzalloc(i32 16, i32 %8)
  store %struct.sh_veu_file* %9, %struct.sh_veu_file** %5, align 8
  %10 = load %struct.sh_veu_file*, %struct.sh_veu_file** %5, align 8
  %11 = icmp ne %struct.sh_veu_file* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %41

15:                                               ; preds = %1
  %16 = load %struct.sh_veu_file*, %struct.sh_veu_file** %5, align 8
  %17 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %16, i32 0, i32 1
  %18 = load %struct.file*, %struct.file** %3, align 8
  %19 = call i32 @video_devdata(%struct.file* %18)
  %20 = call i32 @v4l2_fh_init(i32* %17, i32 %19)
  %21 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %22 = load %struct.sh_veu_file*, %struct.sh_veu_file** %5, align 8
  %23 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %22, i32 0, i32 2
  store %struct.sh_veu_dev* %21, %struct.sh_veu_dev** %23, align 8
  %24 = load %struct.sh_veu_file*, %struct.sh_veu_file** %5, align 8
  %25 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %24, i32 0, i32 0
  store i32 1, i32* %25, align 8
  %26 = load %struct.sh_veu_file*, %struct.sh_veu_file** %5, align 8
  %27 = load %struct.file*, %struct.file** %3, align 8
  %28 = getelementptr inbounds %struct.file, %struct.file* %27, i32 0, i32 0
  store %struct.sh_veu_file* %26, %struct.sh_veu_file** %28, align 8
  %29 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %30 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @pm_runtime_get_sync(i32 %31)
  %33 = load %struct.sh_veu_file*, %struct.sh_veu_file** %5, align 8
  %34 = getelementptr inbounds %struct.sh_veu_file, %struct.sh_veu_file* %33, i32 0, i32 1
  %35 = call i32 @v4l2_fh_add(i32* %34)
  %36 = load %struct.sh_veu_dev*, %struct.sh_veu_dev** %4, align 8
  %37 = getelementptr inbounds %struct.sh_veu_dev, %struct.sh_veu_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.sh_veu_file*, %struct.sh_veu_file** %5, align 8
  %40 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.sh_veu_file* %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %15, %12
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.sh_veu_dev* @video_drvdata(%struct.file*) #1

declare dso_local %struct.sh_veu_file* @kzalloc(i32, i32) #1

declare dso_local i32 @v4l2_fh_init(i32*, i32) #1

declare dso_local i32 @video_devdata(%struct.file*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @v4l2_fh_add(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.sh_veu_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
