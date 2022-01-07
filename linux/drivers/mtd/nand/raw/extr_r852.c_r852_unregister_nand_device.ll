; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_unregister_nand_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_r852.c_r852_unregister_nand_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.r852_device = type { i64, i32 }
%struct.mtd_info = type { i32 }

@dev_attr_media_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.r852_device*)* @r852_unregister_nand_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r852_unregister_nand_device(%struct.r852_device* %0) #0 {
  %2 = alloca %struct.r852_device*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  store %struct.r852_device* %0, %struct.r852_device** %2, align 8
  %4 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %5 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.mtd_info* @nand_to_mtd(i32 %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %3, align 8
  %8 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %9 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %25

13:                                               ; preds = %1
  %14 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %15 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %14, i32 0, i32 0
  %16 = call i32 @device_remove_file(i32* %15, i32* @dev_attr_media_type)
  %17 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %18 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @nand_release(i32 %19)
  %21 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %22 = call i32 @r852_engine_disable(%struct.r852_device* %21)
  %23 = load %struct.r852_device*, %struct.r852_device** %2, align 8
  %24 = getelementptr inbounds %struct.r852_device, %struct.r852_device* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(i32) #1

declare dso_local i32 @device_remove_file(i32*, i32*) #1

declare dso_local i32 @nand_release(i32) #1

declare dso_local i32 @r852_engine_disable(%struct.r852_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
