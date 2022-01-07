; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_write_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxc_nand.c_mxc_nand_write_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.mxc_nand_host = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mtd_info*, i32)*, i32 (%struct.nand_chip*, i32)* }

@NAND_CMD_SEQIN = common dso_local global i32 0, align 4
@NFC_INPUT = common dso_local global i32 0, align 4
@NAND_CMD_PAGEPROG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @mxc_nand_write_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxc_nand_write_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.mxc_nand_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %12 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %11)
  store %struct.mtd_info* %12, %struct.mtd_info** %9, align 8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %14 = call %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip* %13)
  store %struct.mxc_nand_host* %14, %struct.mxc_nand_host** %10, align 8
  %15 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %16 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 2
  %19 = load i32 (%struct.nand_chip*, i32)*, i32 (%struct.nand_chip*, i32)** %18, align 8
  %20 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i32 %19(%struct.nand_chip* %20, i32 %21)
  %23 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %24 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %26, align 8
  %28 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %29 = load i32, i32* @NAND_CMD_SEQIN, align 4
  %30 = call i32 %27(%struct.mxc_nand_host* %28, i32 %29, i32 0)
  %31 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @mxc_do_addr_cycle(%struct.mtd_info* %31, i32 0, i32 %32)
  %34 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %35 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32*, i32** %6, align 8
  %38 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @memcpy32_toio(i32 %36, i32* %37, i32 %40)
  %42 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %43 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %44 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @copy_spare(%struct.mtd_info* %42, i32 0, i32 %45)
  %47 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %48 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %47, i32 0, i32 0
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32 (%struct.mtd_info*, i32)*, i32 (%struct.mtd_info*, i32)** %50, align 8
  %52 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %53 = load i32, i32* @NFC_INPUT, align 4
  %54 = call i32 %51(%struct.mtd_info* %52, i32 %53)
  %55 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %56 = getelementptr inbounds %struct.mxc_nand_host, %struct.mxc_nand_host* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32 (%struct.mxc_nand_host*, i32, i32)*, i32 (%struct.mxc_nand_host*, i32, i32)** %58, align 8
  %60 = load %struct.mxc_nand_host*, %struct.mxc_nand_host** %10, align 8
  %61 = load i32, i32* @NAND_CMD_PAGEPROG, align 4
  %62 = call i32 %59(%struct.mxc_nand_host* %60, i32 %61, i32 1)
  %63 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @mxc_do_addr_cycle(%struct.mtd_info* %63, i32 0, i32 %64)
  ret i32 0
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.mxc_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @mxc_do_addr_cycle(%struct.mtd_info*, i32, i32) #1

declare dso_local i32 @memcpy32_toio(i32, i32*, i32) #1

declare dso_local i32 @copy_spare(%struct.mtd_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
