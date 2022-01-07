; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_hsmc_nand_controller = type { i32, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@ATMEL_HSMC_NFC_SR = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_SR_ERRORS = common dso_local global i32 0, align 4
@ATMEL_HSMC_NFC_IDR = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @atmel_nfc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nfc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.atmel_hsmc_nand_controller*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.atmel_hsmc_nand_controller*
  store %struct.atmel_hsmc_nand_controller* %10, %struct.atmel_hsmc_nand_controller** %5, align 8
  %11 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %5, align 8
  %12 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @ATMEL_HSMC_NFC_SR, align 4
  %16 = call i32 @regmap_read(i32 %14, i32 %15, i32* %6)
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %5, align 8
  %19 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @ATMEL_HSMC_NFC_SR_ERRORS, align 4
  %23 = or i32 %21, %22
  %24 = and i32 %17, %23
  store i32 %24, i32* %7, align 4
  %25 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %5, align 8
  %26 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %25, i32 0, i32 2
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @atmel_nfc_op_done(%struct.TYPE_4__* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %2
  %32 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %5, align 8
  %33 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @ATMEL_HSMC_NFC_IDR, align 4
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @regmap_write(i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %31, %2
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %39
  %43 = load %struct.atmel_hsmc_nand_controller*, %struct.atmel_hsmc_nand_controller** %5, align 8
  %44 = getelementptr inbounds %struct.atmel_hsmc_nand_controller, %struct.atmel_hsmc_nand_controller* %43, i32 0, i32 0
  %45 = call i32 @complete(i32* %44)
  br label %46

46:                                               ; preds = %42, %39
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %46
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  br label %53

51:                                               ; preds = %46
  %52 = load i32, i32* @IRQ_NONE, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  ret i32 %54
}

declare dso_local i32 @regmap_read(i32, i32, i32*) #1

declare dso_local i32 @atmel_nfc_op_done(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
