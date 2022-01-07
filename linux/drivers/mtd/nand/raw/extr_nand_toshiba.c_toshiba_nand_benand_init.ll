; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_toshiba.c_toshiba_nand_benand_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_nand_toshiba.c_toshiba_nand_benand_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.mtd_info = type { i32 }

@toshiba_nand_read_page_benand = common dso_local global i32 0, align 4
@toshiba_nand_read_subpage_benand = common dso_local global i32 0, align 4
@nand_write_page_raw = common dso_local global i32 0, align 4
@nand_read_page_raw_notsupp = common dso_local global i32 0, align 4
@nand_write_page_raw_notsupp = common dso_local global i32 0, align 4
@NAND_SUBPAGE_READ = common dso_local global i32 0, align 4
@nand_ooblayout_lp_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*)* @toshiba_nand_benand_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @toshiba_nand_benand_init(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %4 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %5 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %4)
  store %struct.mtd_info* %5, %struct.mtd_info** %3, align 8
  %6 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 7
  store i64 0, i64* %8, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32 512, i32* %11, align 8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  store i32 8, i32* %14, align 4
  %15 = load i32, i32* @toshiba_nand_read_page_benand, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 6
  store i32 %15, i32* %18, align 8
  %19 = load i32, i32* @toshiba_nand_read_subpage_benand, align 4
  %20 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 5
  store i32 %19, i32* %22, align 4
  %23 = load i32, i32* @nand_write_page_raw, align 4
  %24 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 4
  store i32 %23, i32* %26, align 8
  %27 = load i32, i32* @nand_read_page_raw_notsupp, align 4
  %28 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %29 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 3
  store i32 %27, i32* %30, align 4
  %31 = load i32, i32* @nand_write_page_raw_notsupp, align 4
  %32 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %33 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 2
  store i32 %31, i32* %34, align 8
  %35 = load i32, i32* @NAND_SUBPAGE_READ, align 4
  %36 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %35
  store i32 %39, i32* %37, align 8
  %40 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %41 = call i32 @mtd_set_ooblayout(%struct.mtd_info* %40, i32* @nand_ooblayout_lp_ops)
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @mtd_set_ooblayout(%struct.mtd_info*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
