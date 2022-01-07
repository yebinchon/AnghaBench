; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_tegra_nand.c_tegra_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tegra_nand_controller = type { i32, %struct.nand_chip* }
%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tegra_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tegra_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.tegra_nand_controller*, align 8
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = call %struct.tegra_nand_controller* @platform_get_drvdata(%struct.platform_device* %8)
  store %struct.tegra_nand_controller* %9, %struct.tegra_nand_controller** %4, align 8
  %10 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %11 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %10, i32 0, i32 1
  %12 = load %struct.nand_chip*, %struct.nand_chip** %11, align 8
  store %struct.nand_chip* %12, %struct.nand_chip** %5, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %6, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %16 = call i32 @mtd_device_unregister(%struct.mtd_info* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %28

21:                                               ; preds = %1
  %22 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %23 = call i32 @nand_cleanup(%struct.nand_chip* %22)
  %24 = load %struct.tegra_nand_controller*, %struct.tegra_nand_controller** %4, align 8
  %25 = getelementptr inbounds %struct.tegra_nand_controller, %struct.tegra_nand_controller* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @clk_disable_unprepare(i32 %26)
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %21, %19
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.tegra_nand_controller* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @mtd_device_unregister(%struct.mtd_info*) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
