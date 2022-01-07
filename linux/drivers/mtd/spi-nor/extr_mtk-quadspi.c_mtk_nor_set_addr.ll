; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_set_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_set_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nor = type { i64 }

@MTK_NOR_RADR0_REG = common dso_local global i64 0, align 8
@MTK_NOR_RADR3_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mtk_nor*, i32)* @mtk_nor_set_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mtk_nor_set_addr(%struct.mtk_nor* %0, i32 %1) #0 {
  %3 = alloca %struct.mtk_nor*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mtk_nor* %0, %struct.mtk_nor** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mtk_nor*, %struct.mtk_nor** %3, align 8
  %7 = call i32 @mtk_nor_set_addr_width(%struct.mtk_nor* %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %26, %2
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %29

11:                                               ; preds = %8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %12, 255
  %14 = load %struct.mtk_nor*, %struct.mtk_nor** %3, align 8
  %15 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MTK_NOR_RADR0_REG, align 8
  %18 = add nsw i64 %16, %17
  %19 = load i32, i32* %5, align 4
  %20 = mul nsw i32 %19, 4
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = call i32 @writeb(i32 %13, i64 %22)
  %24 = load i32, i32* %4, align 4
  %25 = ashr i32 %24, 8
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %11
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %8

29:                                               ; preds = %8
  %30 = load i32, i32* %4, align 4
  %31 = and i32 %30, 255
  %32 = load %struct.mtk_nor*, %struct.mtk_nor** %3, align 8
  %33 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @MTK_NOR_RADR3_REG, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @writeb(i32 %31, i64 %36)
  ret void
}

declare dso_local i32 @mtk_nor_set_addr_width(%struct.mtk_nor*) #1

declare dso_local i32 @writeb(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
