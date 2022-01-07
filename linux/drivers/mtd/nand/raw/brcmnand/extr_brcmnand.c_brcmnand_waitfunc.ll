; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_waitfunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_waitfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.brcmnand_host = type { %struct.brcmnand_controller* }
%struct.brcmnand_controller = type { i64, i32 }

@.str = private unnamed_addr constant [23 x i8] c"wait on native cmd %d\0A\00", align 1
@BRCMNAND_CMD_START = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"timeout waiting for command %#02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"intfc status %08x\0A\00", align 1
@BRCMNAND_INTFC_STATUS = common dso_local global i32 0, align 4
@INTFC_FLASH_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @brcmnand_waitfunc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_waitfunc(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.brcmnand_host*, align 8
  %4 = alloca %struct.brcmnand_controller*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %8 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %7)
  store %struct.brcmnand_host* %8, %struct.brcmnand_host** %3, align 8
  %9 = load %struct.brcmnand_host*, %struct.brcmnand_host** %3, align 8
  %10 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %9, i32 0, i32 0
  %11 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %10, align 8
  store %struct.brcmnand_controller* %11, %struct.brcmnand_controller** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %13 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %16 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @dev_dbg(i32 %14, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %17)
  %19 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %20 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %1
  %24 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %25 = call i32 @brcmstb_nand_wait_for_completion(%struct.nand_chip* %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %23, %1
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %48

29:                                               ; preds = %26
  %30 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %31 = load i32, i32* @BRCMNAND_CMD_START, align 4
  %32 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %30, i32 %31)
  %33 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %34 = call i32 @brcmnand_cmd_shift(%struct.brcmnand_controller* %33)
  %35 = ashr i32 %32, %34
  store i32 %35, i32* %6, align 4
  %36 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %37 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @dev_err_ratelimited(i32 %38, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  %41 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %42 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %45 = load i32, i32* @BRCMNAND_INTFC_STATUS, align 4
  %46 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %44, i32 %45)
  %47 = call i32 @dev_err_ratelimited(i32 %43, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %46)
  br label %48

48:                                               ; preds = %29, %26
  %49 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %50 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %49, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %4, align 8
  %52 = load i32, i32* @BRCMNAND_INTFC_STATUS, align 4
  %53 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %51, i32 %52)
  %54 = load i32, i32* @INTFC_FLASH_STATUS, align 4
  %55 = and i32 %53, %54
  ret i32 %55
}

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64) #1

declare dso_local i32 @brcmstb_nand_wait_for_completion(%struct.nand_chip*) #1

declare dso_local i32 @brcmnand_read_reg(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @brcmnand_cmd_shift(%struct.brcmnand_controller*) #1

declare dso_local i32 @dev_err_ratelimited(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
