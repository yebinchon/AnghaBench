; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_enable_hwecc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_omap2.c_omap_enable_hwecc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nand_chip = type { i32 }
%struct.omap_nand_info = type { i32, %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@NAND_BUSWIDTH_16 = common dso_local global i32 0, align 4
@ECCCLEAR = common dso_local global i32 0, align 4
@ECC1 = common dso_local global i32 0, align 4
@ECCSIZE1_SHIFT = common dso_local global i32 0, align 4
@ECC1RESULTSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error: unrecognized Mode[%d]!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nand_chip*, i32)* @omap_enable_hwecc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_enable_hwecc(%struct.nand_chip* %0, i32 %1) #0 {
  %3 = alloca %struct.nand_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_nand_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nand_chip* %0, %struct.nand_chip** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %9 = call i32 @nand_to_mtd(%struct.nand_chip* %8)
  %10 = call %struct.omap_nand_info* @mtd_to_omap(i32 %9)
  store %struct.omap_nand_info* %10, %struct.omap_nand_info** %5, align 8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %3, align 8
  %12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NAND_BUSWIDTH_16, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 1, i32 0
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* @ECCCLEAR, align 4
  %20 = load i32, i32* @ECC1, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %24 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @writel(i32 %22, i32 %26)
  %28 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %29 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = ashr i32 %32, 1
  %34 = sub nsw i32 %33, 1
  %35 = load i32, i32* @ECCSIZE1_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = load i32, i32* @ECC1RESULTSIZE, align 4
  %38 = or i32 %36, %37
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %41 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @writel(i32 %39, i32 %43)
  %45 = load i32, i32* %4, align 4
  switch i32 %45, label %62 [
    i32 130, label %46
    i32 128, label %46
    i32 129, label %55
  ]

46:                                               ; preds = %2, %2
  %47 = load i32, i32* @ECCCLEAR, align 4
  %48 = load i32, i32* @ECC1, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %51 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @writel(i32 %49, i32 %53)
  br label %69

55:                                               ; preds = %2
  %56 = load i32, i32* @ECCCLEAR, align 4
  %57 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %58 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @writel(i32 %56, i32 %60)
  br label %69

62:                                               ; preds = %2
  %63 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %64 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %63, i32 0, i32 2
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @dev_info(i32* %66, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %62, %55, %46
  %70 = load i32, i32* %6, align 4
  %71 = shl i32 %70, 7
  %72 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %73 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 1
  %76 = or i32 %71, %75
  %77 = or i32 %76, 1
  store i32 %77, i32* %7, align 4
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.omap_nand_info*, %struct.omap_nand_info** %5, align 8
  %80 = getelementptr inbounds %struct.omap_nand_info, %struct.omap_nand_info* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @writel(i32 %78, i32 %82)
  ret void
}

declare dso_local %struct.omap_nand_info* @mtd_to_omap(i32) #1

declare dso_local i32 @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
