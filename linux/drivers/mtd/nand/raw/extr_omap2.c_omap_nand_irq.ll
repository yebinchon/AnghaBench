; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_nand_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_nand_info = type { i64, i32, i32, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@OMAP_NAND_IO_WRITE = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_nand_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_nand_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.omap_nand_info*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.omap_nand_info*
  store %struct.omap_nand_info* %9, %struct.omap_nand_info** %6, align 8
  %10 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %11 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %10, i32 0, i32 7
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @readl(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @PREFETCH_STATUS_FIFO_CNT(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = and i32 %17, 65532
  store i32 %18, i32* %7, align 4
  %19 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %20 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @OMAP_NAND_IO_WRITE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %79

24:                                               ; preds = %2
  %25 = load i32, i32* %4, align 4
  %26 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %27 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %109

31:                                               ; preds = %24
  %32 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %33 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %38 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %44 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %7, align 4
  br label %53

46:                                               ; preds = %36, %31
  %47 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %48 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  store i32 0, i32* %7, align 4
  br label %52

52:                                               ; preds = %51, %46
  br label %53

53:                                               ; preds = %52, %42
  %54 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %55 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %60 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %59, i32 0, i32 5
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i32*
  %63 = load i32, i32* %7, align 4
  %64 = ashr i32 %63, 2
  %65 = call i32 @iowrite32_rep(i32 %58, i32* %62, i32 %64)
  %66 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %67 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %66, i32 0, i32 5
  %68 = load i64, i64* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %73 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %72, i32 0, i32 5
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %76 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, %74
  store i32 %78, i32* %76, align 4
  br label %107

79:                                               ; preds = %2
  %80 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %81 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %80, i32 0, i32 6
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %86 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %85, i32 0, i32 5
  %87 = load i64, i64* %86, align 8
  %88 = inttoptr i64 %87 to i32*
  %89 = load i32, i32* %7, align 4
  %90 = ashr i32 %89, 2
  %91 = call i32 @ioread32_rep(i32 %84, i32* %88, i32 %90)
  %92 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %93 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %92, i32 0, i32 5
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %94, %96
  %98 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %99 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %98, i32 0, i32 5
  store i64 %97, i64* %99, align 8
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %102 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %100, %103
  br i1 %104, label %105, label %106

105:                                              ; preds = %79
  br label %109

106:                                              ; preds = %79
  br label %107

107:                                              ; preds = %106, %53
  %108 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %108, i32* %3, align 4
  br label %122

109:                                              ; preds = %105, %30
  %110 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %111 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %110, i32 0, i32 4
  %112 = call i32 @complete(i32* %111)
  %113 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %114 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @disable_irq_nosync(i32 %115)
  %117 = load %struct.omap_nand_info*, %struct.omap_nand_info** %6, align 8
  %118 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @disable_irq_nosync(i32 %119)
  %121 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %121, i32* %3, align 4
  br label %122

122:                                              ; preds = %109, %107
  %123 = load i32, i32* %3, align 4
  ret i32 %123
}

declare dso_local i32 @readl(i32) #1

declare dso_local i32 @PREFETCH_STATUS_FIFO_CNT(i32) #1

declare dso_local i32 @iowrite32_rep(i32, i32*, i32) #1

declare dso_local i32 @ioread32_rep(i32, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @disable_irq_nosync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
