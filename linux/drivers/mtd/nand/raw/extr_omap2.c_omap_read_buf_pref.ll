; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_read_buf_pref.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_read_buf_pref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.mtd_info = type { i32 }
%struct.omap_nand_info = type { i32, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@PREFETCH_FIFOTHRESHOLD_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32*, i32)* @omap_read_buf_pref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_read_buf_pref(%struct.nand_chip* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mtd_info*, align 8
  %8 = alloca %struct.omap_nand_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  store %struct.nand_chip* %0, %struct.nand_chip** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %13 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %12)
  store %struct.mtd_info* %13, %struct.mtd_info** %7, align 8
  %14 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %15 = call %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info* %14)
  store %struct.omap_nand_info* %15, %struct.omap_nand_info** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32*, i32** %5, align 8
  store i32* %16, i32** %11, align 8
  %17 = load i32, i32* %6, align 4
  %18 = srem i32 %17, 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %50

20:                                               ; preds = %3
  %21 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %22 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %20
  %29 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %30 = load i32*, i32** %5, align 8
  %31 = load i32, i32* %6, align 4
  %32 = srem i32 %31, 4
  %33 = call i32 @omap_read_buf16(%struct.mtd_info* %29, i32* %30, i32 %32)
  br label %40

34:                                               ; preds = %20
  %35 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %36 = load i32*, i32** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = srem i32 %37, 4
  %39 = call i32 @omap_read_buf8(%struct.mtd_info* %35, i32* %36, i32 %38)
  br label %40

40:                                               ; preds = %34, %28
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %6, align 4
  %43 = srem i32 %42, 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %41, i64 %44
  store i32* %45, i32** %11, align 8
  %46 = load i32, i32* %6, align 4
  %47 = srem i32 %46, 4
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, %47
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %40, %3
  %51 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %52 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @PREFETCH_FIFOTHRESHOLD_MAX, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %57 = call i32 @omap_prefetch_enable(i32 %53, i32 %54, i32 0, i32 %55, i32 0, %struct.omap_nand_info* %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %79

60:                                               ; preds = %50
  %61 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %62 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %60
  %69 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %70 = load i32*, i32** %11, align 8
  %71 = load i32, i32* %6, align 4
  %72 = call i32 @omap_read_buf16(%struct.mtd_info* %69, i32* %70, i32 %71)
  br label %78

73:                                               ; preds = %60
  %74 = load %struct.mtd_info*, %struct.mtd_info** %7, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @omap_read_buf8(%struct.mtd_info* %74, i32* %75, i32 %76)
  br label %78

78:                                               ; preds = %73, %68
  br label %115

79:                                               ; preds = %50
  br label %80

80:                                               ; preds = %106, %79
  %81 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %82 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @readl(i32 %84)
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = call i32 @PREFETCH_STATUS_FIFO_CNT(i32 %86)
  store i32 %87, i32* %9, align 4
  %88 = load i32, i32* %9, align 4
  %89 = ashr i32 %88, 2
  store i32 %89, i32* %9, align 4
  %90 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %91 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %90, i32 0, i32 1
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32*, i32** %11, align 8
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @ioread32_rep(i32 %94, i32* %95, i32 %96)
  %98 = load i32, i32* %9, align 4
  %99 = load i32*, i32** %11, align 8
  %100 = sext i32 %98 to i64
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  store i32* %101, i32** %11, align 8
  %102 = load i32, i32* %9, align 4
  %103 = shl i32 %102, 2
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %6, align 4
  br label %106

106:                                              ; preds = %80
  %107 = load i32, i32* %6, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %80, label %109

109:                                              ; preds = %106
  %110 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %111 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.omap_nand_info*, %struct.omap_nand_info** %8, align 8
  %114 = call i32 @omap_prefetch_reset(i32 %112, %struct.omap_nand_info* %113)
  br label %115

115:                                              ; preds = %109, %78
  ret void
}

declare dso_local %struct.mtd_info* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local %struct.omap_nand_info* @mtd_to_omap(%struct.mtd_info*) #1

declare dso_local i32 @omap_read_buf16(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @omap_read_buf8(%struct.mtd_info*, i32*, i32) #1

declare dso_local i32 @omap_prefetch_enable(i32, i32, i32, i32, i32, %struct.omap_nand_info*) #1

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @PREFETCH_STATUS_FIFO_CNT(i32) #1

declare dso_local i32 @ioread32_rep(i32, i32*, i32) #1

declare dso_local i32 @omap_prefetch_reset(i32, %struct.omap_nand_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
