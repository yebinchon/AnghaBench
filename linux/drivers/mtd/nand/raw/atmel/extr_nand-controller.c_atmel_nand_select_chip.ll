; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_select_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/atmel/extr_nand-controller.c_atmel_nand_select_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.atmel_nand = type { i32, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@ATMEL_NAND_GPIO_RB = common dso_local global i64 0, align 8
@atmel_nand_dev_ready = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @atmel_nand_select_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atmel_nand_select_chip(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.atmel_nand*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %7 = call %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip* %6)
  store %struct.atmel_nand* %7, %struct.atmel_nand** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %13 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp sge i32 %11, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %10, %2
  %17 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %18 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %17, i32 0, i32 1
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %18, align 8
  %19 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  store i32* null, i32** %21, align 8
  br label %44

22:                                               ; preds = %10
  %23 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %24 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %23, i32 0, i32 2
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i64 %27
  %29 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %30 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %29, i32 0, i32 1
  store %struct.TYPE_6__* %28, %struct.TYPE_6__** %30, align 8
  %31 = load %struct.atmel_nand*, %struct.atmel_nand** %5, align 8
  %32 = getelementptr inbounds %struct.atmel_nand, %struct.atmel_nand* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @ATMEL_NAND_GPIO_RB, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %22
  %40 = load i32*, i32** @atmel_nand_dev_ready, align 8
  %41 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %42 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  store i32* %40, i32** %43, align 8
  br label %44

44:                                               ; preds = %16, %39, %22
  ret void
}

declare dso_local %struct.atmel_nand* @to_atmel_nand(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
