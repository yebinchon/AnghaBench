; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sm_common.c_sm_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_sm_common.c_sm_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_flash_dev = type { i32 }
%struct.mtd_info = type { i32 }
%struct.nand_chip = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@NAND_SKIP_BBTSCAN = common dso_local global i32 0, align 4
@sm_controller_ops = common dso_local global i32 0, align 4
@nand_smartmedia_flash_ids = common dso_local global %struct.nand_flash_dev* null, align 8
@nand_xd_flash_ids = common dso_local global %struct.nand_flash_dev* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sm_register_device(%struct.mtd_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mtd_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nand_chip*, align 8
  %7 = alloca %struct.nand_flash_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %10 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %9)
  store %struct.nand_chip* %10, %struct.nand_chip** %6, align 8
  %11 = load i32, i32* @NAND_SKIP_BBTSCAN, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i32* @sm_controller_ops, i32** %19, align 8
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %2
  %23 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** @nand_smartmedia_flash_ids, align 8
  br label %26

24:                                               ; preds = %2
  %25 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** @nand_xd_flash_ids, align 8
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi %struct.nand_flash_dev* [ %23, %22 ], [ %25, %24 ]
  store %struct.nand_flash_dev* %27, %struct.nand_flash_dev** %7, align 8
  %28 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %29 = load %struct.nand_flash_dev*, %struct.nand_flash_dev** %7, align 8
  %30 = call i32 @nand_scan_with_ids(%struct.nand_chip* %28, i32 1, %struct.nand_flash_dev* %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %26
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %3, align 4
  br label %45

35:                                               ; preds = %26
  %36 = load %struct.mtd_info*, %struct.mtd_info** %4, align 8
  %37 = call i32 @mtd_device_register(%struct.mtd_info* %36, i32* null, i32 0)
  store i32 %37, i32* %8, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.nand_chip*, %struct.nand_chip** %6, align 8
  %42 = call i32 @nand_cleanup(%struct.nand_chip* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load i32, i32* %8, align 4
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %43, %33
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local i32 @nand_scan_with_ids(%struct.nand_chip*, i32, %struct.nand_flash_dev*) #1

declare dso_local i32 @mtd_device_register(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @nand_cleanup(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
