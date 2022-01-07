; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_resize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_resize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_info = type { i32, i32, i32, i32 }
%struct.ubiblock = type { i32, i32 }

@devices_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EFBIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"the volume is too big (%d LEBs), cannot resize\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"resized to %lld bytes\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_volume_info*)* @ubiblock_resize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubiblock_resize(%struct.ubi_volume_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_volume_info*, align 8
  %4 = alloca %struct.ubiblock*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.ubi_volume_info* %0, %struct.ubi_volume_info** %3, align 8
  %7 = call i32 @mutex_lock(i32* @devices_mutex)
  %8 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %9 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %12 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.ubiblock* @find_dev_nolock(i32 %10, i32 %13)
  store %struct.ubiblock* %14, %struct.ubiblock** %4, align 8
  %15 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %16 = icmp ne %struct.ubiblock* %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %1
  %18 = call i32 @mutex_unlock(i32* @devices_mutex)
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %2, align 4
  br label %72

21:                                               ; preds = %1
  %22 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %23 = call i32 @calc_disk_capacity(%struct.ubi_volume_info* %22, i64* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %43

26:                                               ; preds = %21
  %27 = call i32 @mutex_unlock(i32* @devices_mutex)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @EFBIG, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %26
  %33 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %34 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @disk_to_dev(i32 %35)
  %37 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %38 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_warn(i32 %36, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %32, %26
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %2, align 4
  br label %72

43:                                               ; preds = %21
  %44 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %45 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %44, i32 0, i32 0
  %46 = call i32 @mutex_lock(i32* %45)
  %47 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %48 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @get_capacity(i32 %49)
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %67

53:                                               ; preds = %43
  %54 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %55 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load i64, i64* %5, align 8
  %58 = call i32 @set_capacity(i32 %56, i64 %57)
  %59 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %60 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @disk_to_dev(i32 %61)
  %63 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %64 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @dev_info(i32 %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %53, %43
  %68 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %69 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %68, i32 0, i32 0
  %70 = call i32 @mutex_unlock(i32* %69)
  %71 = call i32 @mutex_unlock(i32* @devices_mutex)
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %67, %41, %17
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ubiblock* @find_dev_nolock(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @calc_disk_capacity(%struct.ubi_volume_info*, i64*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @disk_to_dev(i32) #1

declare dso_local i64 @get_capacity(i32) #1

declare dso_local i32 @set_capacity(i32, i64) #1

declare dso_local i32 @dev_info(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
