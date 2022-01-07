; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_buf_irq_pref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_buf_irq_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.omap_nand_info = type { i32, %struct.TYPE_4__, i32, %struct.TYPE_3__, i32, i32, i32, i32*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@OMAP_NAND_IO_WRITE = common dso_local global i32 0, align 4
@PREFETCH_FIFOTHRESHOLD_MAX = common dso_local global i32 0, align 4
@loops_per_jiffy = common dso_local global i64 0, align 8
@OMAP_NAND_TIMEOUT_MS = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @omap_write_buf_irq_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_write_buf_irq_pref(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.omap_nand_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %14 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %13)
  store %struct.mtd_info* %14, %struct.mtd_info** %7, align 8
  %15 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %16 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %15)
  store %struct.omap_nand_info* %16, %struct.omap_nand_info** %8, align 8
  store i32 0, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %19 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sle i32 %17, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @omap_write_buf_pref(%struct.nand_chip* %23, i32* %24, i32 %25)
  br label %111

27:                                               ; preds = %3
  %28 = load i32, i32* @OMAP_NAND_IO_WRITE, align 4
  %29 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %30 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %29, i32 0, i32 8
  store i32 %28, i32* %30, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %33 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %32, i32 0, i32 7
  store i32* %31, i32** %33, align 8
  %34 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %35 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %34, i32 0, i32 4
  %36 = call i32 @init_completion(i32* %35)
  %37 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %38 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @PREFETCH_FIFOTHRESHOLD_MAX, align 4
  %41 = mul nsw i32 %40, 3
  %42 = sdiv i32 %41, 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %45 = call i32 @omap_prefetch_enable(i32 %39, i32 %42, i32 0, i32 %43, i32 1, %struct.omap_nand_info* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %27
  br label %93

49:                                               ; preds = %27
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %52 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %54 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @enable_irq(i32 %55)
  %57 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %58 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @enable_irq(i32 %59)
  %61 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %62 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %61, i32 0, i32 4
  %63 = call i32 @wait_for_completion(i32* %62)
  store i64 0, i64* %10, align 8
  %64 = load i64, i64* @loops_per_jiffy, align 8
  %65 = load i32, i32* @OMAP_NAND_TIMEOUT_MS, align 4
  %66 = call i64 @msecs_to_jiffies(i32 %65)
  %67 = mul i64 %64, %66
  store i64 %67, i64* %11, align 8
  br label %68

68:                                               ; preds = %85, %49
  %69 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %70 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i64 @readl(i32 %72)
  store i64 %73, i64* %12, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @PREFETCH_STATUS_COUNT(i64 %74)
  store i64 %75, i64* %12, align 8
  %76 = call i32 (...) @cpu_relax()
  br label %77

77:                                               ; preds = %68
  %78 = load i64, i64* %12, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %77
  %81 = load i64, i64* %10, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %10, align 8
  %83 = load i64, i64* %11, align 8
  %84 = icmp ult i64 %81, %83
  br label %85

85:                                               ; preds = %80, %77
  %86 = phi i1 [ false, %77 ], [ %84, %80 ]
  br i1 %86, label %68, label %87

87:                                               ; preds = %85
  %88 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %89 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %92 = call i32 @omap_prefetch_reset(i32 %90, %struct.omap_nand_info* %91)
  br label %111

93:                                               ; preds = %48
  %94 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %95 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %94, i32 0, i32 1
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %106

101:                                              ; preds = %93
  %102 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @omap_write_buf16(%struct.mtd_info* %102, i32* %103, i32 %104)
  br label %111

106:                                              ; preds = %93
  %107 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @omap_write_buf8(%struct.mtd_info* %107, i32* %108, i32 %109)
  br label %111

111:                                              ; preds = %22, %87, %106, %101
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i32 @omap_write_buf_pref(%struct.nand_chip*, i32*, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @omap_prefetch_enable(i32, i32, i32, i32, i32, %struct.omap_nand_info*) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @readl(i32) #1

declare dso_local i64 @PREFETCH_STATUS_COUNT(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @omap_prefetch_reset(i32, %struct.omap_nand_info*) #1

declare dso_local i32 @omap_write_buf16(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @omap_write_buf8(%struct.mtd_info*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
