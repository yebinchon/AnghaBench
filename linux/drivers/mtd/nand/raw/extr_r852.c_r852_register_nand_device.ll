; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_register_nand_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_register_nand_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i32, i64, %struct.TYPE_6__*, i32, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.mtd_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }

@NAND_ROM = common dso_local global i32 0, align 4
@dev_attr_media_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"can't create media type sysfs attribute\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.r852_device*)* @r852_register_nand_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r852_register_nand_device(%struct.r852_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.r852_device*, align 8
  %4 = alloca %struct.mtd_info*, align 8
  store %struct.r852_device* %0, %struct.r852_device** %3, align 8
  %5 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %6 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %5, i32 0, i32 2
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %8 = call %struct.mtd_info* @nand_to_mtd(%struct.TYPE_6__* %7)
  store %struct.mtd_info* %8, %struct.mtd_info** %4, align 8
  %9 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %10 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @WARN_ON(i32 %11)
  %13 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %14 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %13, i32 0, i32 5
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  store i32* %16, i32** %19, align 8
  %20 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %21 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %1
  %25 = load i32, i32* @NAND_ROM, align 4
  %26 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %27 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %26, i32 0, i32 2
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %25
  store i32 %31, i32* %29, align 4
  br label %32

32:                                               ; preds = %24, %1
  %33 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %34 = call i32 @r852_engine_enable(%struct.r852_device* %33)
  %35 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %36 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %37 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @sm_register_device(%struct.mtd_info* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %57

42:                                               ; preds = %32
  %43 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %43, i32 0, i32 0
  %45 = call i64 @device_create_file(%struct.TYPE_7__* %44, i32* @dev_attr_media_type)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = call i32 @message(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %52

49:                                               ; preds = %42
  %50 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %51 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %50, i32 0, i32 0
  store i32 1, i32* %51, align 8
  store i32 0, i32* %2, align 4
  br label %60

52:                                               ; preds = %47
  %53 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %54 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %53, i32 0, i32 2
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = call i32 @nand_release(%struct.TYPE_6__* %55)
  br label %57

57:                                               ; preds = %52, %41
  %58 = load %struct.r852_device*, %struct.r852_device** %3, align 8
  %59 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %58, i32 0, i32 1
  store i64 0, i64* %59, align 8
  store i32 -1, i32* %2, align 4
  br label %60

60:                                               ; preds = %57, %49
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.TYPE_6__*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @r852_engine_enable(%struct.r852_device*) #1

declare dso_local i64 @sm_register_device(%struct.mtd_info*, i32) #1

declare dso_local i64 @device_create_file(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @message(i8*) #1

declare dso_local i32 @nand_release(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
