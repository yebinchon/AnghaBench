; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_wait_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_marvell_nand.c_marvell_nfc_wait_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.marvell_nfc = type { i32, i32 }

@IRQ_TIMEOUT = common dso_local global i32 0, align 4
@NDCR_RDYM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Timeout waiting for RB signal\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32)* @marvell_nfc_wait_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @marvell_nfc_wait_op(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.marvell_nfc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.marvell_nfc* @to_marvell_nfc(i32 %11)
  store %struct.marvell_nfc* %12, %struct.marvell_nfc** %6, align 8
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @IRQ_TIMEOUT, align 4
  store i32 %16, i32* %5, align 4
  br label %17

17:                                               ; preds = %15, %2
  %18 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %19 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %18, i32 0, i32 1
  %20 = call i32 @init_completion(i32* %19)
  %21 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %22 = load i32, i32* @NDCR_RDYM, align 4
  %23 = call i32 @marvell_nfc_enable_int(%struct.marvell_nfc* %21, i32 %22)
  %24 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %25 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %24, i32 0, i32 1
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @msecs_to_jiffies(i32 %26)
  %28 = call i32 @wait_for_completion_timeout(i32* %25, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %30 = load i32, i32* @NDCR_RDYM, align 4
  %31 = call i32 @marvell_nfc_disable_int(%struct.marvell_nfc* %29, i32 %30)
  %32 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %33 = call i32 @NDSR_RDY(i32 0)
  %34 = call i32 @NDSR_RDY(i32 1)
  %35 = or i32 %33, %34
  %36 = call i32 @marvell_nfc_clear_int(%struct.marvell_nfc* %32, i32 %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %8, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %17
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %39
  %43 = load %struct.marvell_nfc*, %struct.marvell_nfc** %6, align 8
  %44 = getelementptr inbounds %struct.marvell_nfc, %struct.marvell_nfc* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %39, %17
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %42
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.marvell_nfc* @to_marvell_nfc(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @marvell_nfc_enable_int(%struct.marvell_nfc*, i32) #1

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @marvell_nfc_disable_int(%struct.marvell_nfc*, i32) #1

declare dso_local i32 @marvell_nfc_clear_int(%struct.marvell_nfc*, i32) #1

declare dso_local i32 @NDSR_RDY(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
