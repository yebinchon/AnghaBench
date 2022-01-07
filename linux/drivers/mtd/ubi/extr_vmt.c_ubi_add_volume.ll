; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vmt.c_ubi_add_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vmt.c_ubi_add_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.ubi_volume = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32*, i32, i32*, i32 }

@.str = private unnamed_addr constant [14 x i8] c"add volume %d\00", align 1
@ubi_vol_cdev_operations = common dso_local global i32 0, align 4
@THIS_MODULE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"cannot add character device for volume %d, error %d\00", align 1
@vol_release = common dso_local global i32 0, align 4
@ubi_class = common dso_local global i32 0, align 4
@volume_dev_groups = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%s_%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_add_volume(%struct.ubi_device* %0, %struct.ubi_volume* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ubi_device*, align 8
  %5 = alloca %struct.ubi_volume*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %4, align 8
  store %struct.ubi_volume* %1, %struct.ubi_volume** %5, align 8
  %9 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %10 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = call i32 @dbg_gen(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %12)
  %14 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %14, i32 0, i32 1
  %16 = call i32 @cdev_init(%struct.TYPE_9__* %15, i32* @ubi_vol_cdev_operations)
  %17 = load i32, i32* @THIS_MODULE, align 4
  %18 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %19 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i32 %17, i32* %20, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %22 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %21, i32 0, i32 2
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @MAJOR(i32 %24)
  %26 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %27 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add nsw i32 %28, 1
  %30 = call i32 @MKDEV(i32 %25, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %32 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %31, i32 0, i32 1
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @cdev_add(%struct.TYPE_9__* %32, i32 %33, i32 1)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ubi_err(%struct.ubi_device* %38, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* %6, align 4
  store i32 %42, i32* %3, align 4
  br label %88

43:                                               ; preds = %2
  %44 = load i32, i32* @vol_release, align 4
  %45 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %46 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 4
  store i32 %44, i32* %47, align 8
  %48 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %49 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %48, i32 0, i32 1
  %50 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %51 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 3
  store i32* %49, i32** %52, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %55 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %58 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  store i32* @ubi_class, i32** %59, align 8
  %60 = load i32, i32* @volume_dev_groups, align 4
  %61 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %62 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %65 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %64, i32 0, i32 2
  %66 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %67 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %70 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @dev_set_name(%struct.TYPE_8__* %65, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %71)
  %73 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %74 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %73, i32 0, i32 2
  %75 = call i32 @device_register(%struct.TYPE_8__* %74)
  store i32 %75, i32* %6, align 4
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %43
  br label %83

79:                                               ; preds = %43
  %80 = load %struct.ubi_device*, %struct.ubi_device** %4, align 8
  %81 = call i32 @self_check_volumes(%struct.ubi_device* %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %88

83:                                               ; preds = %78
  %84 = load %struct.ubi_volume*, %struct.ubi_volume** %5, align 8
  %85 = getelementptr inbounds %struct.ubi_volume, %struct.ubi_volume* %84, i32 0, i32 1
  %86 = call i32 @cdev_del(%struct.TYPE_9__* %85)
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  br label %88

88:                                               ; preds = %83, %79, %37
  %89 = load i32, i32* %3, align 4
  ret i32 %89
}

declare dso_local i32 @dbg_gen(i8*, i32) #1

declare dso_local i32 @cdev_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @MAJOR(i32) #1

declare dso_local i32 @cdev_add(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_8__*, i8*, i32, i32) #1

declare dso_local i32 @device_register(%struct.TYPE_8__*) #1

declare dso_local i32 @self_check_volumes(%struct.ubi_device*) #1

declare dso_local i32 @cdev_del(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
