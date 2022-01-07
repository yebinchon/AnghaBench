; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_low_level_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_low_level_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { %struct.brcmnand_controller*, %struct.nand_chip }
%struct.brcmnand_controller = type { i32 }
%struct.nand_chip = type { i32 }

@LLOP_DATA_MASK = common dso_local global i32 0, align 4
@LLOP_WE = common dso_local global i32 0, align 4
@LLOP_CLE = common dso_local global i32 0, align 4
@LLOP_ALE = common dso_local global i32 0, align 4
@LLOP_RE = common dso_local global i32 0, align 4
@LLOP_RETURN_IDLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ll_op cmd %#x\0A\00", align 1
@BRCMNAND_LL_OP = common dso_local global i32 0, align 4
@CMD_LOW_LEVEL_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmnand_host*, i32, i32, i32)* @brcmnand_low_level_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_low_level_op(%struct.brcmnand_host* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.brcmnand_host*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.nand_chip*, align 8
  %10 = alloca %struct.brcmnand_controller*, align 8
  %11 = alloca i32, align 4
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.brcmnand_host*, %struct.brcmnand_host** %5, align 8
  %13 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %12, i32 0, i32 1
  store %struct.nand_chip* %13, %struct.nand_chip** %9, align 8
  %14 = load %struct.brcmnand_host*, %struct.brcmnand_host** %5, align 8
  %15 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %14, i32 0, i32 0
  %16 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %15, align 8
  store %struct.brcmnand_controller* %16, %struct.brcmnand_controller** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @LLOP_DATA_MASK, align 4
  %19 = and i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %6, align 4
  switch i32 %20, label %41 [
    i32 130, label %21
    i32 131, label %27
    i32 128, label %33
    i32 129, label %37
  ]

21:                                               ; preds = %4
  %22 = load i32, i32* @LLOP_WE, align 4
  %23 = load i32, i32* @LLOP_CLE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* %11, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %11, align 4
  br label %41

27:                                               ; preds = %4
  %28 = load i32, i32* @LLOP_WE, align 4
  %29 = load i32, i32* @LLOP_ALE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* %11, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %11, align 4
  br label %41

33:                                               ; preds = %4
  %34 = load i32, i32* @LLOP_WE, align 4
  %35 = load i32, i32* %11, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %11, align 4
  br label %41

37:                                               ; preds = %4
  %38 = load i32, i32* @LLOP_RE, align 4
  %39 = load i32, i32* %11, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %11, align 4
  br label %41

41:                                               ; preds = %4, %37, %33, %27, %21
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load i32, i32* @LLOP_RETURN_IDLE, align 4
  %46 = load i32, i32* %11, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %11, align 4
  br label %48

48:                                               ; preds = %44, %41
  %49 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %10, align 8
  %50 = getelementptr inbounds %struct.brcmnand_controller, %struct.brcmnand_controller* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %10, align 8
  %55 = load i32, i32* @BRCMNAND_LL_OP, align 4
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @brcmnand_write_reg(%struct.brcmnand_controller* %54, i32 %55, i32 %56)
  %58 = load %struct.brcmnand_controller*, %struct.brcmnand_controller** %10, align 8
  %59 = load i32, i32* @BRCMNAND_LL_OP, align 4
  %60 = call i32 @brcmnand_read_reg(%struct.brcmnand_controller* %58, i32 %59)
  %61 = load %struct.brcmnand_host*, %struct.brcmnand_host** %5, align 8
  %62 = load i32, i32* @CMD_LOW_LEVEL_OP, align 4
  %63 = call i32 @brcmnand_send_cmd(%struct.brcmnand_host* %61, i32 %62)
  %64 = load %struct.nand_chip*, %struct.nand_chip** %9, align 8
  %65 = call i32 @brcmnand_waitfunc(%struct.nand_chip* %64)
  ret i32 %65
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @brcmnand_write_reg(%struct.brcmnand_controller*, i32, i32) #1

declare dso_local i32 @brcmnand_read_reg(%struct.brcmnand_controller*, i32) #1

declare dso_local i32 @brcmnand_send_cmd(%struct.brcmnand_host*, i32) #1

declare dso_local i32 @brcmnand_waitfunc(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
