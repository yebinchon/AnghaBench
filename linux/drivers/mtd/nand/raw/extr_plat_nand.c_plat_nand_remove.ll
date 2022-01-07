; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_plat_nand.c_plat_nand_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_plat_nand.c_plat_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.plat_nand_data = type { i32 }
%struct.platform_nand_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.platform_device.0*)* }
%struct.platform_device.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @plat_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plat_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.plat_nand_data*, align 8
  %4 = alloca %struct.platform_nand_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.plat_nand_data* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.plat_nand_data* %6, %struct.plat_nand_data** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = call %struct.platform_nand_data* @dev_get_platdata(i32* %8)
  store %struct.platform_nand_data* %9, %struct.platform_nand_data** %4, align 8
  %10 = load %struct.plat_nand_data*, %struct.plat_nand_data** %3, align 8
  %11 = getelementptr inbounds %struct.plat_nand_data, %struct.plat_nand_data* %10, i32 0, i32 0
  %12 = call i32 @nand_release(i32* %11)
  %13 = load %struct.platform_nand_data*, %struct.platform_nand_data** %4, align 8
  %14 = getelementptr inbounds %struct.platform_nand_data, %struct.platform_nand_data* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %15, align 8
  %17 = icmp ne i32 (%struct.platform_device.0*)* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.platform_nand_data*, %struct.platform_nand_data** %4, align 8
  %20 = getelementptr inbounds %struct.platform_nand_data, %struct.platform_nand_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.platform_device.0*)*, i32 (%struct.platform_device.0*)** %21, align 8
  %23 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %24 = bitcast %struct.platform_device* %23 to %struct.platform_device.0*
  %25 = call i32 %22(%struct.platform_device.0* %24)
  br label %26

26:                                               ; preds = %18, %1
  ret i32 0
}

declare dso_local %struct.plat_nand_data* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.platform_nand_data* @dev_get_platdata(i32*) #1

declare dso_local i32 @nand_release(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
