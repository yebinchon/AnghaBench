; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_op_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nfc_op_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atmel_nfc_op = type { i32, i32 }

@ATMEL_HSMC_NFC_SR_ERRORS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atmel_nfc_op*, i32)* @atmel_nfc_op_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmel_nfc_op_done(%struct.atmel_nfc_op* %0, i32 %1) #0 {
  %3 = alloca %struct.atmel_nfc_op*, align 8
  %4 = alloca i32, align 4
  store %struct.atmel_nfc_op* %0, %struct.atmel_nfc_op** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @ATMEL_HSMC_NFC_SR_ERRORS, align 4
  %7 = and i32 %5, %6
  %8 = load %struct.atmel_nfc_op*, %struct.atmel_nfc_op** %3, align 8
  %9 = getelementptr inbounds %struct.atmel_nfc_op, %struct.atmel_nfc_op* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 4
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.atmel_nfc_op*, %struct.atmel_nfc_op** %3, align 8
  %14 = getelementptr inbounds %struct.atmel_nfc_op, %struct.atmel_nfc_op* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = and i32 %12, %15
  %17 = load %struct.atmel_nfc_op*, %struct.atmel_nfc_op** %3, align 8
  %18 = getelementptr inbounds %struct.atmel_nfc_op, %struct.atmel_nfc_op* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %19, %16
  store i32 %20, i32* %18, align 4
  %21 = load %struct.atmel_nfc_op*, %struct.atmel_nfc_op** %3, align 8
  %22 = getelementptr inbounds %struct.atmel_nfc_op, %struct.atmel_nfc_op* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load %struct.atmel_nfc_op*, %struct.atmel_nfc_op** %3, align 8
  %27 = getelementptr inbounds %struct.atmel_nfc_op, %struct.atmel_nfc_op* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br label %30

30:                                               ; preds = %25, %2
  %31 = phi i1 [ true, %2 ], [ %29, %25 ]
  %32 = zext i1 %31 to i32
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
