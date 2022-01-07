; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_sun_uflash.c_uflash_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/maps/extr_sun_uflash.c_uflash_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32*, i32 }
%struct.uflash_dev = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @uflash_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uflash_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.uflash_dev*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 1
  %6 = call %struct.uflash_dev* @dev_get_drvdata(i32* %5)
  store %struct.uflash_dev* %6, %struct.uflash_dev** %3, align 8
  %7 = load %struct.uflash_dev*, %struct.uflash_dev** %3, align 8
  %8 = getelementptr inbounds %struct.uflash_dev, %struct.uflash_dev* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %20

11:                                               ; preds = %1
  %12 = load %struct.uflash_dev*, %struct.uflash_dev** %3, align 8
  %13 = getelementptr inbounds %struct.uflash_dev, %struct.uflash_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @mtd_device_unregister(i64 %14)
  %16 = load %struct.uflash_dev*, %struct.uflash_dev** %3, align 8
  %17 = getelementptr inbounds %struct.uflash_dev, %struct.uflash_dev* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = call i32 @map_destroy(i64 %18)
  br label %20

20:                                               ; preds = %11, %1
  %21 = load %struct.uflash_dev*, %struct.uflash_dev** %3, align 8
  %22 = getelementptr inbounds %struct.uflash_dev, %struct.uflash_dev* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %43

26:                                               ; preds = %20
  %27 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %28 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load %struct.uflash_dev*, %struct.uflash_dev** %3, align 8
  %32 = getelementptr inbounds %struct.uflash_dev, %struct.uflash_dev* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.uflash_dev*, %struct.uflash_dev** %3, align 8
  %36 = getelementptr inbounds %struct.uflash_dev, %struct.uflash_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @of_iounmap(i32* %30, i32* %34, i32 %38)
  %40 = load %struct.uflash_dev*, %struct.uflash_dev** %3, align 8
  %41 = getelementptr inbounds %struct.uflash_dev, %struct.uflash_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32* null, i32** %42, align 8
  br label %43

43:                                               ; preds = %26, %20
  %44 = load %struct.uflash_dev*, %struct.uflash_dev** %3, align 8
  %45 = call i32 @kfree(%struct.uflash_dev* %44)
  ret i32 0
}

declare dso_local %struct.uflash_dev* @dev_get_drvdata(i32*) #1

declare dso_local i32 @mtd_device_unregister(i64) #1

declare dso_local i32 @map_destroy(i64) #1

declare dso_local i32 @of_iounmap(i32*, i32*, i32) #1

declare dso_local i32 @kfree(%struct.uflash_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
