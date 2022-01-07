; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_close_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_kapi.c_ubi_close_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_volume_desc = type { i32, %struct.ubi_volume* }
%struct.ubi_volume = type { i32, i32, i32, i32, i32, i32, i32, %struct.ubi_device* }
%struct.ubi_device = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"close device %d, volume %d, mode %d\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_close_volume(%struct.ubi_volume_desc* %0) #0 {
  %2 = alloca %struct.ubi_volume_desc*, align 8
  %3 = alloca %struct.ubi_volume*, align 8
  %4 = alloca %struct.ubi_device*, align 8
  store %struct.ubi_volume_desc* %0, %struct.ubi_volume_desc** %2, align 8
  %5 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %6 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %5, i32 0, i32 1
  %7 = load %struct.ubi_volume*, %struct.ubi_volume** %6, align 8
  store %struct.ubi_volume* %7, %struct.ubi_volume** %3, align 8
  %8 = load %struct.ubi_volume*, %struct.ubi_volume** %3, align 8
  %9 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %8, i32 0, i32 7
  %10 = load %struct.ubi_device*, %struct.ubi_device** %9, align 8
  store %struct.ubi_device* %10, %struct.ubi_device** %4, align 8
  %11 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %12 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %3, align 8
  %15 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %14, i32 0, i32 6
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %18 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dbg_gen(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16, i32 %19)
  %21 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %25 = getelementptr inbounds %struct.ubi_volume_desc, %struct.ubi_volume_desc* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %43 [
    i32 129, label %27
    i32 128, label %32
    i32 131, label %37
    i32 130, label %40
  ]

27:                                               ; preds = %1
  %28 = load %struct.ubi_volume*, %struct.ubi_volume** %3, align 8
  %29 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %29, align 8
  br label %43

32:                                               ; preds = %1
  %33 = load %struct.ubi_volume*, %struct.ubi_volume** %3, align 8
  %34 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sub nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %43

37:                                               ; preds = %1
  %38 = load %struct.ubi_volume*, %struct.ubi_volume** %3, align 8
  %39 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %38, i32 0, i32 5
  store i32 0, i32* %39, align 4
  br label %43

40:                                               ; preds = %1
  %41 = load %struct.ubi_volume*, %struct.ubi_volume** %3, align 8
  %42 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %41, i32 0, i32 4
  store i32 0, i32* %42, align 8
  br label %43

43:                                               ; preds = %1, %40, %37, %32, %27
  %44 = load %struct.ubi_volume*, %struct.ubi_volume** %3, align 8
  %45 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  %48 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %49 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %48, i32 0, i32 0
  %50 = call i32 @spin_unlock(i32* %49)
  %51 = load %struct.ubi_volume_desc*, %struct.ubi_volume_desc** %2, align 8
  %52 = call i32 @kfree(%struct.ubi_volume_desc* %51)
  %53 = load %struct.ubi_volume*, %struct.ubi_volume** %3, align 8
  %54 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %53, i32 0, i32 3
  %55 = call i32 @put_device(i32* %54)
  %56 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %57 = call i32 @ubi_put_device(%struct.ubi_device* %56)
  %58 = load i32, i32* @THIS_MODULE, align 4
  %59 = call i32 @module_put(i32 %58)
  ret void
}

declare dso_local i32 @dbg_gen(i8*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.ubi_volume_desc*) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @ubi_put_device(%struct.ubi_device*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
