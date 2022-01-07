; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_read_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_read_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i64 }
%struct.mtd_info = type { i32 }
%struct.brcmnand_host = type { i32 }

@FC_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nand_chip*, i32*, i32, i32)* @brcmnand_read_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_read_page(%struct.nand_chip* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nand_chip*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mtd_info*, align 8
  %10 = alloca %struct.brcmnand_host*, align 8
  %11 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %9, align 8
  %14 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %15 = call %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip* %14)
  store %struct.brcmnand_host* %15, %struct.brcmnand_host** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %4
  %19 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %20 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i32*
  br label %24

23:                                               ; preds = %4
  br label %24

24:                                               ; preds = %23, %18
  %25 = phi i32* [ %22, %18 ], [ null, %23 ]
  store i32* %25, i32** %11, align 8
  %26 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @nand_read_page_op(%struct.nand_chip* %26, i32 %27, i32 0, i32* null, i32 0)
  %29 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %30 = load %struct.nand_chip*, %struct.nand_chip** %5, align 8
  %31 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %32 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.mtd_info*, %struct.mtd_info** %9, align 8
  %35 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @FC_SHIFT, align 4
  %38 = ashr i32 %36, %37
  %39 = load i32*, i32** %6, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = call i32 @brcmnand_read(%struct.mtd_info* %29, %struct.nand_chip* %30, i32 %33, i32 %38, i32* %39, i32* %40)
  ret i32 %41
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.brcmnand_host* @nand_get_controller_data(%struct.nand_chip*) #1

declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i32*, i32) #1

declare dso_local i32 @brcmnand_read(%struct.mtd_info*, %struct.nand_chip*, i32, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
