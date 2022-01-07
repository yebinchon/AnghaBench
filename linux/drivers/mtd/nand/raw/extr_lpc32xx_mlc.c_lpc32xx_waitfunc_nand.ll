; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_waitfunc_nand.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_lpc32xx_mlc.c_lpc32xx_waitfunc_nand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.lpc32xx_nand_host = type { i32, i32 }

@MLCISR_NAND_READY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Warning: NAND not ready.\0A\00", align 1
@NAND_STATUS_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*)* @lpc32xx_waitfunc_nand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpc32xx_waitfunc_nand(%struct.nand_chip* %0) #0 {
  %2 = alloca %struct.nand_chip*, align 8
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.lpc32xx_nand_host*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %2, align 8
  %5 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %6 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %5)
  store %struct.mtd_info* %6, %struct.mtd_info** %3, align 8
  %7 = load %struct.nand_chip*, %struct.nand_chip** %2, align 8
  %8 = call %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip* %7)
  store %struct.lpc32xx_nand_host* %8, %struct.lpc32xx_nand_host** %4, align 8
  %9 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %10 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @MLC_ISR(i32 %11)
  %13 = call i32 @readb(i32 %12)
  %14 = load i32, i32* @MLCISR_NAND_READY, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %38

18:                                               ; preds = %1
  %19 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %20 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %19, i32 0, i32 1
  %21 = call i32 @wait_for_completion(i32* %20)
  br label %22

22:                                               ; preds = %32, %18
  %23 = load %struct.lpc32xx_nand_host*, %struct.lpc32xx_nand_host** %4, align 8
  %24 = getelementptr inbounds %struct.lpc32xx_nand_host, %struct.lpc32xx_nand_host* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @MLC_ISR(i32 %25)
  %27 = call i32 @readb(i32 %26)
  %28 = load i32, i32* @MLCISR_NAND_READY, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br i1 %31, label %32, label %37

32:                                               ; preds = %22
  %33 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 0
  %35 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = call i32 (...) @cpu_relax()
  br label %22

37:                                               ; preds = %22
  br label %38

38:                                               ; preds = %37, %17
  %39 = load i32, i32* @NAND_STATUS_READY, align 4
  ret i32 %39
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.lpc32xx_nand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @readb(i32) #1

declare dso_local i32 @MLC_ISR(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
