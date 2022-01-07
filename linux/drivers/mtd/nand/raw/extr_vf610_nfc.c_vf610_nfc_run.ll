; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_run.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_vf610_nfc.c_vf610_nfc_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vf610_nfc = type { i32 }

@NFC_COL_ADDR = common dso_local global i32 0, align 4
@COL_ADDR_MASK = common dso_local global i32 0, align 4
@COL_ADDR_SHIFT = common dso_local global i32 0, align 4
@NFC_ROW_ADDR = common dso_local global i32 0, align 4
@ROW_ADDR_MASK = common dso_local global i32 0, align 4
@ROW_ADDR_SHIFT = common dso_local global i32 0, align 4
@NFC_SECTOR_SIZE = common dso_local global i32 0, align 4
@NFC_FLASH_CMD1 = common dso_local global i32 0, align 4
@NFC_FLASH_CMD2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"col 0x%04x, row 0x%08x, cmd1 0x%08x, cmd2 0x%08x, len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vf610_nfc*, i32, i32, i32, i32, i32)* @vf610_nfc_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vf610_nfc_run(%struct.vf610_nfc* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vf610_nfc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.vf610_nfc* %0, %struct.vf610_nfc** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %13 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %14 = load i32, i32* @NFC_COL_ADDR, align 4
  %15 = load i32, i32* @COL_ADDR_MASK, align 4
  %16 = load i32, i32* @COL_ADDR_SHIFT, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @vf610_nfc_set_field(%struct.vf610_nfc* %13, i32 %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %20 = load i32, i32* @NFC_ROW_ADDR, align 4
  %21 = load i32, i32* @ROW_ADDR_MASK, align 4
  %22 = load i32, i32* @ROW_ADDR_SHIFT, align 4
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @vf610_nfc_set_field(%struct.vf610_nfc* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  %25 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %26 = load i32, i32* @NFC_SECTOR_SIZE, align 4
  %27 = load i32, i32* %12, align 4
  %28 = call i32 @vf610_nfc_write(%struct.vf610_nfc* %25, i32 %26, i32 %27)
  %29 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %30 = load i32, i32* @NFC_FLASH_CMD1, align 4
  %31 = load i32, i32* %10, align 4
  %32 = call i32 @vf610_nfc_write(%struct.vf610_nfc* %29, i32 %30, i32 %31)
  %33 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %34 = load i32, i32* @NFC_FLASH_CMD2, align 4
  %35 = load i32, i32* %11, align 4
  %36 = call i32 @vf610_nfc_write(%struct.vf610_nfc* %33, i32 %34, i32 %35)
  %37 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %38 = getelementptr inbounds %struct.vf610_nfc, %struct.vf610_nfc* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dev_dbg(i32 %39, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %41, i32 %42, i32 %43, i32 %44)
  %46 = load %struct.vf610_nfc*, %struct.vf610_nfc** %7, align 8
  %47 = call i32 @vf610_nfc_done(%struct.vf610_nfc* %46)
  ret void
}

declare dso_local i32 @vf610_nfc_set_field(%struct.vf610_nfc*, i32, i32, i32, i32) #1

declare dso_local i32 @vf610_nfc_write(%struct.vf610_nfc*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @vf610_nfc_done(%struct.vf610_nfc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
