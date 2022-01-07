; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_fill_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/brcmnand/extr_brcmnand.c_brcmnand_fill_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.brcmnand_host = type { i32 }
%struct.brcm_nand_dma_desc = type { i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.brcmnand_host*, %struct.brcm_nand_dma_desc*, i32, i32, i8*, i32, i32, i32, i32)* @brcmnand_fill_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmnand_fill_dma_desc(%struct.brcmnand_host* %0, %struct.brcm_nand_dma_desc* %1, i32 %2, i32 %3, i8* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.brcmnand_host*, align 8
  %11 = alloca %struct.brcm_nand_dma_desc*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.brcmnand_host* %0, %struct.brcmnand_host** %10, align 8
  store %struct.brcm_nand_dma_desc* %1, %struct.brcm_nand_dma_desc** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i8* %4, i8** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %20 = call i32 @memset(%struct.brcm_nand_dma_desc* %19, i32 0, i32 80)
  %21 = load i32, i32* %18, align 4
  %22 = call i8* @lower_32_bits(i32 %21)
  %23 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %24 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %23, i32 0, i32 10
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %18, align 4
  %26 = call i8* @upper_32_bits(i32 %25)
  %27 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %28 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %27, i32 0, i32 9
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %15, align 4
  %30 = shl i32 %29, 24
  %31 = load i32, i32* %17, align 4
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 768, i32 0
  %35 = or i32 %30, %34
  %36 = load i32, i32* %16, align 4
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = or i32 %35, %40
  %42 = load i32, i32* %17, align 4
  %43 = icmp ne i32 %42, 0
  %44 = xor i1 %43, true
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = shl i32 %46, 1
  %48 = or i32 %41, %47
  %49 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %50 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load i32, i32* %13, align 4
  %52 = call i8* @lower_32_bits(i32 %51)
  %53 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %54 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %53, i32 0, i32 8
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %13, align 4
  %56 = call i8* @upper_32_bits(i32 %55)
  %57 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %58 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %57, i32 0, i32 7
  store i8* %56, i8** %58, align 8
  %59 = load i8*, i8** %14, align 8
  %60 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %61 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %60, i32 0, i32 6
  store i8* %59, i8** %61, align 8
  %62 = load i8*, i8** %14, align 8
  %63 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %64 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %63, i32 0, i32 5
  store i8* %62, i8** %64, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i8* @lower_32_bits(i32 %65)
  %67 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %68 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %67, i32 0, i32 4
  store i8* %66, i8** %68, align 8
  %69 = load i32, i32* %12, align 4
  %70 = call i8* @upper_32_bits(i32 %69)
  %71 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %72 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %71, i32 0, i32 3
  store i8* %70, i8** %72, align 8
  %73 = load %struct.brcmnand_host*, %struct.brcmnand_host** %10, align 8
  %74 = getelementptr inbounds %struct.brcmnand_host, %struct.brcmnand_host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %77 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  %78 = load %struct.brcm_nand_dma_desc*, %struct.brcm_nand_dma_desc** %11, align 8
  %79 = getelementptr inbounds %struct.brcm_nand_dma_desc, %struct.brcm_nand_dma_desc* %78, i32 0, i32 1
  store i32 1, i32* %79, align 4
  ret i32 0
}

declare dso_local i32 @memset(%struct.brcm_nand_dma_desc*, i32, i32) #1

declare dso_local i8* @lower_32_bits(i32) #1

declare dso_local i8* @upper_32_bits(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
