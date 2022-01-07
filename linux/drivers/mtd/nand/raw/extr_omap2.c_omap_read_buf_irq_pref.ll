; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_read_buf_irq_pref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_read_buf_irq_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.omap_nand_info = type { i32, %struct.TYPE_2__, i32, i32, i32, i32, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@OMAP_NAND_IO_READ = common dso_local global i32 0, align 4
@PREFETCH_FIFOTHRESHOLD_MAX = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @omap_read_buf_irq_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_read_buf_irq_pref(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.omap_nand_info*, align 8
  %9 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %11 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %10)
  store %struct.mtd_info* %11, %struct.mtd_info** %7, align 8
  %12 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %13 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %12)
  store %struct.omap_nand_info* %13, %struct.omap_nand_info** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp sle i32 %14, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %3
  %20 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @omap_read_buf_pref(%struct.nand_chip* %20, i32* %21, i32 %22)
  br label %83

24:                                               ; preds = %3
  %25 = load i32, i32* @OMAP_NAND_IO_READ, align 4
  %26 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %27 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %26, i32 0, i32 7
  store i32 %25, i32* %27, align 8
  %28 = load i32*, i32** %5, align 8
  %29 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %30 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %29, i32 0, i32 6
  store i32* %28, i32** %30, align 8
  %31 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %32 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %31, i32 0, i32 3
  %33 = call i32 @init_completion(i32* %32)
  %34 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %35 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @PREFETCH_FIFOTHRESHOLD_MAX, align 4
  %38 = sdiv i32 %37, 2
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %41 = call i32 @omap_prefetch_enable(i32 %36, i32 %38, i32 0, i32 %39, i32 0, %struct.omap_nand_info* %40)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %24
  br label %65

45:                                               ; preds = %24
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %48 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %50 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @enable_irq(i32 %51)
  %53 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %54 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @enable_irq(i32 %55)
  %57 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %58 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %57, i32 0, i32 3
  %59 = call i32 @wait_for_completion(i32* %58)
  %60 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %61 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %64 = call i32 @omap_prefetch_reset(i32 %62, %struct.omap_nand_info* %63)
  br label %83

65:                                               ; preds = %44
  %66 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %67 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %65
  %74 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @omap_read_buf16(%struct.mtd_info* %74, i32* %75, i32 %76)
  br label %83

78:                                               ; preds = %65
  %79 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @omap_read_buf8(%struct.mtd_info* %79, i32* %80, i32 %81)
  br label %83

83:                                               ; preds = %19, %45, %78, %73
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i32 @omap_read_buf_pref(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @omap_prefetch_enable(i32, i32, i32, i32, i32, %struct.omap_nand_info*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @omap_prefetch_reset(i32, %struct.omap_nand_info*) #1

declare dso_local i32 @omap_read_buf16(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @omap_read_buf8(%struct.mtd_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
