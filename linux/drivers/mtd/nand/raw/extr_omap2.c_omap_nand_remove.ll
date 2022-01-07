; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.mtd_info = type { i32 }
%struct.nand_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }
%struct.omap_nand_info = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @omap_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca %struct.omap_nand_info*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %6 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %7 = call %struct.mtd_info* @platform_get_drvdata(%struct.platform_device* %6)
  store %struct.mtd_info* %7, %struct.mtd_info** %3, align 8
  %8 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %9 = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %8)
  store %struct.nand_chip* %9, %struct.nand_chip** %4, align 8
  %10 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %11 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %10)
  store %struct.omap_nand_info* %11, %struct.omap_nand_info** %5, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %1
  %18 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = call i32 @nand_bch_free(i32* %21)
  %23 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %17, %1
  %27 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %28 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %33 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @dma_release_channel(i64 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %38 = call i32 @nand_release(%struct.nand_chip* %37)
  ret i32 0
}

declare dso_local %struct.mtd_info* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.nand_chip* @mtd_to_nand(%struct.mtd_info*) #1

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i32 @nand_bch_free(i32*) #1

declare dso_local i32 @dma_release_channel(i64) #1

declare dso_local i32 @nand_release(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
