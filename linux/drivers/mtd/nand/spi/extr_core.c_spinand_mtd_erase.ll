; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_mtd_erase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/spi/extr_core.c_spinand_mtd_erase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.erase_info = type { i32 }
%struct.spinand_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.erase_info*)* @spinand_mtd_erase to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spinand_mtd_erase(%struct.mtd_info* %0, %struct.erase_info* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.erase_info*, align 8
  %5 = alloca %struct.spinand_device*, align 8
  %6 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.erase_info* %1, %struct.erase_info** %4, align 8
  %7 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %8 = call %struct.spinand_device* @mtd_to_spinand(%struct.mtd_info* %7)
  store %struct.spinand_device* %8, %struct.spinand_device** %5, align 8
  %9 = load %struct.spinand_device*, %struct.spinand_device** %5, align 8
  %10 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %9, i32 0, i32 0
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %13 = load %struct.erase_info*, %struct.erase_info** %4, align 8
  %14 = call i32 @nanddev_mtd_erase(%struct.mtd_info* %12, %struct.erase_info* %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.spinand_device*, %struct.spinand_device** %5, align 8
  %16 = getelementptr inbounds %struct.spinand_device, %struct.spinand_device* %15, i32 0, i32 0
  %17 = call i32 @mutex_unlock(i32* %16)
  %18 = load i32, i32* %6, align 4
  ret i32 %18
}

declare dso_local %struct.spinand_device* @mtd_to_spinand(%struct.mtd_info*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nanddev_mtd_erase(%struct.mtd_info*, %struct.erase_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
