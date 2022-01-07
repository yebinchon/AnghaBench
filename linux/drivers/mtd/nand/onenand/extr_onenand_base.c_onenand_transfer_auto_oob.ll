; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_transfer_auto_oob.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/onenand/extr_onenand_base.c_onenand_transfer_auto_oob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32, %struct.onenand_chip* }
%struct.onenand_chip = type { i32, i32 (%struct.mtd_info.0*, i32, i32, i32, i32)* }
%struct.mtd_info.0 = type opaque

@ONENAND_SPARERAM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, i32*, i32, i32)* @onenand_transfer_auto_oob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @onenand_transfer_auto_oob(%struct.mtd_info* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mtd_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.onenand_chip*, align 8
  %11 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 1
  %14 = load %struct.onenand_chip*, %struct.onenand_chip** %13, align 8
  store %struct.onenand_chip* %14, %struct.onenand_chip** %10, align 8
  %15 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %16 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %15, i32 0, i32 1
  %17 = load i32 (%struct.mtd_info.0*, i32, i32, i32, i32)*, i32 (%struct.mtd_info.0*, i32, i32, i32, i32)** %16, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %19 = bitcast %struct.mtd_info* %18 to %struct.mtd_info.0*
  %20 = load i32, i32* @ONENAND_SPARERAM, align 4
  %21 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %22 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 %17(%struct.mtd_info.0* %19, i32 %20, i32 %23, i32 0, i32 %26)
  %28 = load %struct.mtd_info*, %struct.mtd_info** %6, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load %struct.onenand_chip*, %struct.onenand_chip** %10, align 8
  %31 = getelementptr inbounds %struct.onenand_chip, %struct.onenand_chip* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @mtd_ooblayout_get_databytes(%struct.mtd_info* %28, i32* %29, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %4
  %39 = load i32, i32* %11, align 4
  store i32 %39, i32* %5, align 4
  br label %41

40:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %41

41:                                               ; preds = %40, %38
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @mtd_ooblayout_get_databytes(%struct.mtd_info*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
