; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_block.c_ubiblock_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_info = type { i32, i32 }
%struct.ubiblock = type { i64, i32, i32 }

@devices_mutex = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubiblock_remove(%struct.ubi_volume_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ubi_volume_info*, align 8
  %4 = alloca %struct.ubiblock*, align 8
  %5 = alloca i32, align 4
  store %struct.ubi_volume_info* %0, %struct.ubi_volume_info** %3, align 8
  %6 = call i32 @mutex_lock(i32* @devices_mutex)
  %7 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %8 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.ubi_volume_info*, %struct.ubi_volume_info** %3, align 8
  %11 = getelementptr inbounds %struct.ubi_volume_info, %struct.ubi_volume_info* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.ubiblock* @find_dev_nolock(i32 %9, i32 %12)
  store %struct.ubiblock* %13, %struct.ubiblock** %4, align 8
  %14 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %15 = icmp ne %struct.ubiblock* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %46

19:                                               ; preds = %1
  %20 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %21 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %24 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp sgt i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %19
  %28 = load i32, i32* @EBUSY, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %42

30:                                               ; preds = %19
  %31 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %32 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %31, i32 0, i32 2
  %33 = call i32 @list_del(i32* %32)
  %34 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %35 = call i32 @ubiblock_cleanup(%struct.ubiblock* %34)
  %36 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %37 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %36, i32 0, i32 1
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = call i32 @mutex_unlock(i32* @devices_mutex)
  %40 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %41 = call i32 @kfree(%struct.ubiblock* %40)
  store i32 0, i32* %2, align 4
  br label %49

42:                                               ; preds = %27
  %43 = load %struct.ubiblock*, %struct.ubiblock** %4, align 8
  %44 = getelementptr inbounds %struct.ubiblock, %struct.ubiblock* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  br label %46

46:                                               ; preds = %42, %16
  %47 = call i32 @mutex_unlock(i32* @devices_mutex)
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %49

49:                                               ; preds = %46, %30
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ubiblock* @find_dev_nolock(i32, i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @ubiblock_cleanup(%struct.ubiblock*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ubiblock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
