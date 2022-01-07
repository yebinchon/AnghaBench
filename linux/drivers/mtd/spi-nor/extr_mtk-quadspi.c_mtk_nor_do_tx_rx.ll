; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_do_tx_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/spi-nor/extr_mtk-quadspi.c_mtk_nor_do_tx_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtk_nor = type { i64 }

@MTK_NOR_MAX_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@MTK_NOR_CNT_REG = common dso_local global i64 0, align 8
@MTK_NOR_MAX_RX_TX_SHIFT = common dso_local global i32 0, align 4
@MTK_NOR_PRG_CMD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtk_nor*, i32, i32*, i32, i32*, i32)* @mtk_nor_do_tx_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mtk_nor_do_tx_rx(%struct.mtk_nor* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.mtk_nor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mtk_nor* %0, %struct.mtk_nor** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %18 = load i32, i32* %11, align 4
  %19 = add nsw i32 1, %18
  %20 = load i32, i32* %13, align 4
  %21 = add nsw i32 %19, %20
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* @MTK_NOR_MAX_SHIFT, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %118

28:                                               ; preds = %6
  %29 = load i32, i32* %14, align 4
  %30 = mul nsw i32 %29, 8
  %31 = load %struct.mtk_nor*, %struct.mtk_nor** %8, align 8
  %32 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MTK_NOR_CNT_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @writeb(i32 %30, i64 %35)
  %37 = load i32, i32* @MTK_NOR_MAX_RX_TX_SHIFT, align 4
  %38 = sub nsw i32 %37, 1
  store i32 %38, i32* %17, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.mtk_nor*, %struct.mtk_nor** %8, align 8
  %41 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %17, align 4
  %44 = call i64 @MTK_NOR_PRG_REG(i32 %43)
  %45 = add nsw i64 %42, %44
  %46 = call i32 @writeb(i32 %39, i64 %45)
  %47 = load i32, i32* %17, align 4
  %48 = add nsw i32 %47, -1
  store i32 %48, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %49

49:                                               ; preds = %66, %28
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %50, %51
  br i1 %52, label %53, label %71

53:                                               ; preds = %49
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %15, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mtk_nor*, %struct.mtk_nor** %8, align 8
  %60 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %17, align 4
  %63 = call i64 @MTK_NOR_PRG_REG(i32 %62)
  %64 = add nsw i64 %61, %63
  %65 = call i32 @writeb(i32 %58, i64 %64)
  br label %66

66:                                               ; preds = %53
  %67 = load i32, i32* %15, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %17, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %17, align 4
  br label %49

71:                                               ; preds = %49
  br label %72

72:                                               ; preds = %75, %71
  %73 = load i32, i32* %17, align 4
  %74 = icmp sge i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.mtk_nor*, %struct.mtk_nor** %8, align 8
  %77 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %17, align 4
  %80 = call i64 @MTK_NOR_PRG_REG(i32 %79)
  %81 = add nsw i64 %78, %80
  %82 = call i32 @writeb(i32 0, i64 %81)
  %83 = load i32, i32* %17, align 4
  %84 = add nsw i32 %83, -1
  store i32 %84, i32* %17, align 4
  br label %72

85:                                               ; preds = %72
  %86 = load %struct.mtk_nor*, %struct.mtk_nor** %8, align 8
  %87 = load i32, i32* @MTK_NOR_PRG_CMD, align 4
  %88 = call i32 @mtk_nor_execute_cmd(%struct.mtk_nor* %86, i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %7, align 4
  br label %118

93:                                               ; preds = %85
  %94 = load i32, i32* %13, align 4
  %95 = sub nsw i32 %94, 1
  store i32 %95, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %96

96:                                               ; preds = %112, %93
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %117

100:                                              ; preds = %96
  %101 = load %struct.mtk_nor*, %struct.mtk_nor** %8, align 8
  %102 = getelementptr inbounds %struct.mtk_nor, %struct.mtk_nor* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i32, i32* %17, align 4
  %105 = call i64 @MTK_NOR_SHREG(i32 %104)
  %106 = add nsw i64 %103, %105
  %107 = call i32 @readb(i64 %106)
  %108 = load i32*, i32** %12, align 8
  %109 = load i32, i32* %15, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  store i32 %107, i32* %111, align 4
  br label %112

112:                                              ; preds = %100
  %113 = load i32, i32* %15, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %17, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %17, align 4
  br label %96

117:                                              ; preds = %96
  store i32 0, i32* %7, align 4
  br label %118

118:                                              ; preds = %117, %91, %25
  %119 = load i32, i32* %7, align 4
  ret i32 %119
}

declare dso_local i32 @writeb(i32, i64) #1

declare dso_local i64 @MTK_NOR_PRG_REG(i32) #1

declare dso_local i32 @mtk_nor_execute_cmd(%struct.mtk_nor*, i32) #1

declare dso_local i32 @readb(i64) #1

declare dso_local i64 @MTK_NOR_SHREG(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
