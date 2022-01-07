; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_page_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_denali.c_denali_page_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.denali_controller = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i8*, i64, i32, i32)* @denali_page_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @denali_page_xfer(%struct.nand_chip* %0, i8* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nand_chip*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.denali_controller*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %14 = call %struct.denali_controller* @to_denali_controller(%struct.nand_chip* %13)
  store %struct.denali_controller* %14, %struct.denali_controller** %12, align 8
  %15 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %16 = load %struct.nand_chip*, %struct.nand_chip** %7, align 8
  %17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @denali_select_target(%struct.nand_chip* %15, i32 %18)
  %20 = load %struct.denali_controller*, %struct.denali_controller** %12, align 8
  %21 = getelementptr inbounds %struct.denali_controller, %struct.denali_controller* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %31

24:                                               ; preds = %5
  %25 = load %struct.denali_controller*, %struct.denali_controller** %12, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i64, i64* %9, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call i32 @denali_dma_xfer(%struct.denali_controller* %25, i8* %26, i64 %27, i32 %28, i32 %29)
  store i32 %30, i32* %6, align 4
  br label %38

31:                                               ; preds = %5
  %32 = load %struct.denali_controller*, %struct.denali_controller** %12, align 8
  %33 = load i8*, i8** %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @denali_pio_xfer(%struct.denali_controller* %32, i8* %33, i64 %34, i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i32, i32* %6, align 4
  ret i32 %39
}

declare dso_local %struct.denali_controller* @to_denali_controller(%struct.nand_chip*) #1

declare dso_local i32 @denali_select_target(%struct.nand_chip*, i32) #1

declare dso_local i32 @denali_dma_xfer(%struct.denali_controller*, i8*, i64, i32, i32) #1

declare dso_local i32 @denali_pio_xfer(%struct.denali_controller*, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
