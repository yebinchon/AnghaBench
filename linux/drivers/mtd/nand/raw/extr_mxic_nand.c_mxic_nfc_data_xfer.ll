; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_data_xfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_mxic_nand.c_mxic_nfc_data_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxic_nand_ctlr = type { i32, i64 }

@INT_STS = common dso_local global i64 0, align 8
@INT_TX_EMPTY = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@INT_RX_NOT_EMPTY = common dso_local global i32 0, align 4
@RXD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"RX FIFO not empty\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mxic_nand_ctlr*, i8*, i8*, i32)* @mxic_nfc_data_xfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxic_nfc_data_xfer(%struct.mxic_nand_ctlr* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mxic_nand_ctlr*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.mxic_nand_ctlr* %0, %struct.mxic_nand_ctlr** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %131, %4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %135

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = sub i32 %20, %21
  store i32 %22, i32* %11, align 4
  store i32 -1, i32* %12, align 4
  %23 = load i32, i32* %11, align 4
  %24 = icmp ugt i32 %23, 4
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 4, i32* %11, align 4
  br label %26

26:                                               ; preds = %25, %19
  %27 = load i8*, i8** %7, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %29, label %38

29:                                               ; preds = %26
  %30 = bitcast i32* %12 to i8*
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr i8, i8* %31, i64 %33
  %35 = bitcast i8* %34 to i32*
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @memcpy(i8* %30, i32* %35, i32 %36)
  br label %38

38:                                               ; preds = %29, %26
  %39 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %6, align 8
  %40 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @INT_STS, align 8
  %43 = add nsw i64 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = load i32, i32* @INT_TX_EMPTY, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @USEC_PER_SEC, align 4
  %49 = call i32 @readl_poll_timeout(i64 %43, i32 %44, i32 %47, i32 0, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %38
  %53 = load i32, i32* %14, align 4
  store i32 %53, i32* %5, align 4
  br label %136

54:                                               ; preds = %38
  %55 = load i32, i32* %12, align 4
  %56 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %6, align 8
  %57 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i32, i32* %11, align 4
  %60 = urem i32 %59, 4
  %61 = call i64 @TXD(i32 %60)
  %62 = add nsw i64 %58, %61
  %63 = call i32 @writel(i32 %55, i64 %62)
  %64 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %6, align 8
  %65 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @INT_STS, align 8
  %68 = add nsw i64 %66, %67
  %69 = load i32, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* @INT_TX_EMPTY, align 4
  %72 = and i32 %70, %71
  %73 = load i32, i32* @USEC_PER_SEC, align 4
  %74 = call i32 @readl_poll_timeout(i64 %68, i32 %69, i32 %72, i32 0, i32 %73)
  store i32 %74, i32* %14, align 4
  %75 = load i32, i32* %14, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %54
  %78 = load i32, i32* %14, align 4
  store i32 %78, i32* %5, align 4
  br label %136

79:                                               ; preds = %54
  %80 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %6, align 8
  %81 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @INT_STS, align 8
  %84 = add nsw i64 %82, %83
  %85 = load i32, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* @INT_RX_NOT_EMPTY, align 4
  %88 = and i32 %86, %87
  %89 = load i32, i32* @USEC_PER_SEC, align 4
  %90 = call i32 @readl_poll_timeout(i64 %84, i32 %85, i32 %88, i32 0, i32 %89)
  store i32 %90, i32* %14, align 4
  %91 = load i32, i32* %14, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %79
  %94 = load i32, i32* %14, align 4
  store i32 %94, i32* %5, align 4
  br label %136

95:                                               ; preds = %79
  %96 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %6, align 8
  %97 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @RXD, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @readl(i64 %100)
  store i32 %101, i32* %12, align 4
  %102 = load i8*, i8** %8, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %104, label %116

104:                                              ; preds = %95
  %105 = load i32, i32* %11, align 4
  %106 = sub i32 4, %105
  %107 = mul i32 8, %106
  %108 = load i32, i32* %12, align 4
  %109 = ashr i32 %108, %107
  store i32 %109, i32* %12, align 4
  %110 = load i8*, i8** %8, align 8
  %111 = load i32, i32* %10, align 4
  %112 = zext i32 %111 to i64
  %113 = getelementptr i8, i8* %110, i64 %112
  %114 = load i32, i32* %11, align 4
  %115 = call i32 @memcpy(i8* %113, i32* %12, i32 %114)
  br label %116

116:                                              ; preds = %104, %95
  %117 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %6, align 8
  %118 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @INT_STS, align 8
  %121 = add nsw i64 %119, %120
  %122 = call i32 @readl(i64 %121)
  %123 = load i32, i32* @INT_RX_NOT_EMPTY, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %116
  %127 = load %struct.mxic_nand_ctlr*, %struct.mxic_nand_ctlr** %6, align 8
  %128 = getelementptr inbounds %struct.mxic_nand_ctlr, %struct.mxic_nand_ctlr* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @dev_warn(i32 %129, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %131

131:                                              ; preds = %126, %116
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* %10, align 4
  %134 = add i32 %133, %132
  store i32 %134, i32* %10, align 4
  br label %15

135:                                              ; preds = %15
  store i32 0, i32* %5, align 4
  br label %136

136:                                              ; preds = %135, %93, %77, %52
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @readl_poll_timeout(i64, i32, i32, i32, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @TXD(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
