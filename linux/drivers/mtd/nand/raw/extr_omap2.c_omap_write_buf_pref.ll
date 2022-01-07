; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_buf_pref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_write_buf_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.omap_nand_info = type { i32, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PREFETCH_FIFOTHRESHOLD_MAX = common dso_local global i32 0, align 4
@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@loops_per_jiffy = common dso_local global i64 0, align 8
@OMAP_NAND_TIMEOUT_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @omap_write_buf_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_write_buf_pref(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.omap_nand_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %17 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %16)
  store %struct.mtd_info* %17, %struct.mtd_info** %7, align 8
  %18 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %19 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %18)
  store %struct.omap_nand_info* %19, %struct.omap_nand_info** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %20 = load i32*, i32** %5, align 8
  store i32* %20, i32** %12, align 8
  %21 = load i32, i32* %6, align 4
  %22 = srem i32 %21, 2
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %3
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %28 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @writeb(i32 %26, i32 %31)
  %33 = load i32*, i32** %5, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32* %34, i32** %12, align 8
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %24, %3
  %38 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %39 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @PREFETCH_FIFOTHRESHOLD_MAX, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %44 = call i32 @omap_prefetch_enable(i32 %40, i32 %41, i32 0, i32 %42, i32 1, %struct.omap_nand_info* %43)
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %37
  %48 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %49 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %47
  %56 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %57 = load i32*, i32** %12, align 8
  %58 = load i32, i32* %6, align 4
  %59 = call i32 @omap_write_buf16(%struct.mtd_info* %56, i32* %57, i32 %58)
  br label %65

60:                                               ; preds = %47
  %61 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %62 = load i32*, i32** %12, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @omap_write_buf8(%struct.mtd_info* %61, i32* %62, i32 %63)
  br label %65

65:                                               ; preds = %60, %55
  br label %136

66:                                               ; preds = %37
  br label %67

67:                                               ; preds = %105, %66
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %72 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i8* @readl(i32 %74)
  %76 = ptrtoint i8* %75 to i32
  store i32 %76, i32* %9, align 4
  %77 = load i32, i32* %9, align 4
  %78 = call i32 @PREFETCH_STATUS_FIFO_CNT(i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = ashr i32 %79, 1
  store i32 %80, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %81

81:                                               ; preds = %100, %70
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %9, align 4
  %84 = icmp slt i32 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %81
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br label %88

88:                                               ; preds = %85, %81
  %89 = phi i1 [ false, %81 ], [ %87, %85 ]
  br i1 %89, label %90, label %105

90:                                               ; preds = %88
  %91 = load i32*, i32** %12, align 8
  %92 = getelementptr inbounds i32, i32* %91, i32 1
  store i32* %92, i32** %12, align 8
  %93 = load i32, i32* %91, align 4
  %94 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %95 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @iowrite16(i32 %93, i32 %98)
  br label %100

100:                                              ; preds = %90
  %101 = load i32, i32* %10, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %10, align 4
  %103 = load i32, i32* %6, align 4
  %104 = sub nsw i32 %103, 2
  store i32 %104, i32* %6, align 4
  br label %81

105:                                              ; preds = %88
  br label %67

106:                                              ; preds = %67
  store i64 0, i64* %13, align 8
  %107 = load i64, i64* @loops_per_jiffy, align 8
  %108 = load i32, i32* @OMAP_NAND_TIMEOUT_MS, align 4
  %109 = call i64 @msecs_to_jiffies(i32 %108)
  %110 = mul i64 %107, %109
  store i64 %110, i64* %14, align 8
  br label %111

111:                                              ; preds = %128, %106
  %112 = call i32 (...) @cpu_relax()
  %113 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %114 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @readl(i32 %116)
  store i8* %117, i8** %15, align 8
  %118 = load i8*, i8** %15, align 8
  %119 = call i8* @PREFETCH_STATUS_COUNT(i8* %118)
  store i8* %119, i8** %15, align 8
  br label %120

120:                                              ; preds = %111
  %121 = load i8*, i8** %15, align 8
  %122 = icmp ne i8* %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i64, i64* %13, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %13, align 8
  %126 = load i64, i64* %14, align 8
  %127 = icmp ult i64 %124, %126
  br label %128

128:                                              ; preds = %123, %120
  %129 = phi i1 [ false, %120 ], [ %127, %123 ]
  br i1 %129, label %111, label %130

130:                                              ; preds = %128
  %131 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %132 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %135 = call i32 @omap_prefetch_reset(i32 %133, %struct.omap_nand_info* %134)
  br label %136

136:                                              ; preds = %130, %65
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i32 @writeb(i32, i32) #1

declare dso_local i32 @omap_prefetch_enable(i32, i32, i32, i32, i32, %struct.omap_nand_info*) #1

declare dso_local i32 @omap_write_buf16(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @omap_write_buf8(%struct.mtd_info*, i32*, i32) #1

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @PREFETCH_STATUS_FIFO_CNT(i32) #1

declare dso_local i32 @iowrite16(i32, i32) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i8* @PREFETCH_STATUS_COUNT(i8*) #1

declare dso_local i32 @omap_prefetch_reset(i32, %struct.omap_nand_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
