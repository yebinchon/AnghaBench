; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_get_exclusive.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_cdev.c_get_exclusive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"%d users for volume %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@UBI_EXCLUSIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_volume_desc*)* @get_exclusive to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_exclusive(%struct.ubi_volume_desc* %0) #0 {
  %2 = alloca %struct.ubi_volume_desc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ubi_volume*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %2, align 8
  %6 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %7 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %6, i32 0, i32 1
  %8 = load %struct.ubi_volume*, %struct.ubi_volume** %7, align 8
  store %struct.ubi_volume* %8, %struct.ubi_volume** %5, align 8
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %18 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = add nsw i32 %16, %19
  %21 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %22 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = add nsw i32 %20, %23
  %25 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %26 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %24, %27
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp sgt i32 %29, 0
  %31 = zext i1 %30 to i32
  %32 = call i32 @ubi_assert(i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = icmp sgt i32 %33, 1
  br i1 %34, label %35, label %46

35:                                               ; preds = %1
  %36 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %37 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %36, i32 0, i32 4
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i32, i32* %3, align 4
  %40 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %41 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @ubi_err(%struct.TYPE_2__* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42)
  %44 = load i32, i32* @EBUSY, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %61

46:                                               ; preds = %1
  %47 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %48 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %47, i32 0, i32 3
  store i32 0, i32* %48, align 4
  %49 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %50 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %52 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %51, i32 0, i32 0
  store i32 0, i32* %52, align 8
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %54 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %53, i32 0, i32 2
  store i32 1, i32* %54, align 8
  %55 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %56 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* @UBI_EXCLUSIVE, align 4
  %59 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %60 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %46, %35
  %62 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %63 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %62, i32 0, i32 4
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @ubi_err(%struct.TYPE_2__*, i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
