; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"BRB\00", align 1
@BRB1_REG_BRB1_PRTY_STS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [7 x i8] c"PARSER\00", align 1
@PRS_REG_PRS_PRTY_STS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"TSDM\00", align 1
@TSDM_REG_TSDM_PRTY_STS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"SEARCHER\00", align 1
@SRC_REG_SRC_PRTY_STS = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [4 x i8] c"TCM\00", align 1
@TCM_REG_TCM_PRTY_STS = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"TSEMI\00", align 1
@TSEM_REG_TSEM_PRTY_STS_0 = common dso_local global i64 0, align 8
@TSEM_REG_TSEM_PRTY_STS_1 = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [4 x i8] c"XPB\00", align 1
@GRCBASE_XPB = common dso_local global i64 0, align 8
@PB_REG_PB_PRTY_STS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32*, i32)* @bnx2x_check_blocks_with_parity0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_check_blocks_with_parity0(%struct.bnx2x* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %99, %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %102

15:                                               ; preds = %12
  %16 = load i32, i32* %11, align 4
  %17 = zext i32 %16 to i64
  %18 = shl i64 1, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* %9, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %98

24:                                               ; preds = %15
  %25 = load i32, i32* %10, align 4
  %26 = or i32 %25, 1
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %8, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %93

29:                                               ; preds = %24
  %30 = load i32, i32* %9, align 4
  switch i32 %30, label %92 [
    i32 134, label %31
    i32 133, label %39
    i32 129, label %47
    i32 131, label %55
    i32 130, label %63
    i32 128, label %71
    i32 132, label %82
  ]

31:                                               ; preds = %29
  %32 = load i32*, i32** %7, align 8
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %32, align 4
  %35 = call i32 @_print_next_block(i32 %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %37 = load i64, i64* @BRB1_REG_BRB1_PRTY_STS, align 8
  %38 = call i32 @_print_parity(%struct.bnx2x* %36, i64 %37)
  br label %92

39:                                               ; preds = %29
  %40 = load i32*, i32** %7, align 8
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %40, align 4
  %43 = call i32 @_print_next_block(i32 %41, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %45 = load i64, i64* @PRS_REG_PRS_PRTY_STS, align 8
  %46 = call i32 @_print_parity(%struct.bnx2x* %44, i64 %45)
  br label %92

47:                                               ; preds = %29
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  %51 = call i32 @_print_next_block(i32 %49, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %53 = load i64, i64* @TSDM_REG_TSDM_PRTY_STS, align 8
  %54 = call i32 @_print_parity(%struct.bnx2x* %52, i64 %53)
  br label %92

55:                                               ; preds = %29
  %56 = load i32*, i32** %7, align 8
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  %59 = call i32 @_print_next_block(i32 %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0))
  %60 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %61 = load i64, i64* @SRC_REG_SRC_PRTY_STS, align 8
  %62 = call i32 @_print_parity(%struct.bnx2x* %60, i64 %61)
  br label %92

63:                                               ; preds = %29
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = call i32 @_print_next_block(i32 %65, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %68 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %69 = load i64, i64* @TCM_REG_TCM_PRTY_STS, align 8
  %70 = call i32 @_print_parity(%struct.bnx2x* %68, i64 %69)
  br label %92

71:                                               ; preds = %29
  %72 = load i32*, i32** %7, align 8
  %73 = load i32, i32* %72, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %72, align 4
  %75 = call i32 @_print_next_block(i32 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %76 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %77 = load i64, i64* @TSEM_REG_TSEM_PRTY_STS_0, align 8
  %78 = call i32 @_print_parity(%struct.bnx2x* %76, i64 %77)
  %79 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %80 = load i64, i64* @TSEM_REG_TSEM_PRTY_STS_1, align 8
  %81 = call i32 @_print_parity(%struct.bnx2x* %79, i64 %80)
  br label %92

82:                                               ; preds = %29
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %83, align 4
  %86 = call i32 @_print_next_block(i32 %84, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %87 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %88 = load i64, i64* @GRCBASE_XPB, align 8
  %89 = load i64, i64* @PB_REG_PB_PRTY_STS, align 8
  %90 = add nsw i64 %88, %89
  %91 = call i32 @_print_parity(%struct.bnx2x* %87, i64 %90)
  br label %92

92:                                               ; preds = %29, %82, %71, %63, %55, %47, %39, %31
  br label %93

93:                                               ; preds = %92, %24
  %94 = load i32, i32* %9, align 4
  %95 = xor i32 %94, -1
  %96 = load i32, i32* %6, align 4
  %97 = and i32 %96, %95
  store i32 %97, i32* %6, align 4
  br label %98

98:                                               ; preds = %93, %15
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %11, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %11, align 4
  br label %12

102:                                              ; preds = %12
  %103 = load i32, i32* %10, align 4
  ret i32 %103
}

declare dso_local i32 @_print_next_block(i32, i8*) #1

declare dso_local i32 @_print_parity(%struct.bnx2x*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
