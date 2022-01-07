; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity2.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_check_blocks_with_parity2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"CSEMI\00", align 1
@CSEM_REG_CSEM_PRTY_STS_0 = common dso_local global i32 0, align 4
@CSEM_REG_CSEM_PRTY_STS_1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"PXP\00", align 1
@PXP_REG_PXP_PRTY_STS = common dso_local global i32 0, align 4
@PXP2_REG_PXP2_PRTY_STS_0 = common dso_local global i32 0, align 4
@PXP2_REG_PXP2_PRTY_STS_1 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"PXPPCICLOCKCLIENT\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"CFC\00", align 1
@CFC_REG_CFC_PRTY_STS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [4 x i8] c"CDU\00", align 1
@CDU_REG_CDU_PRTY_STS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"DMAE\00", align 1
@DMAE_REG_DMAE_PRTY_STS = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [4 x i8] c"IGU\00", align 1
@HC_REG_HC_PRTY_STS = common dso_local global i32 0, align 4
@IGU_REG_IGU_PRTY_STS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"MISC\00", align 1
@MISC_REG_MISC_PRTY_STS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i32, i32*, i32)* @bnx2x_check_blocks_with_parity2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_check_blocks_with_parity2(%struct.bnx2x* %0, i32 %1, i32* %2, i32 %3) #0 {
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

12:                                               ; preds = %115, %4
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %118

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
  br i1 %23, label %24, label %114

24:                                               ; preds = %15
  store i32 1, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %109

27:                                               ; preds = %24
  %28 = load i32, i32* %9, align 4
  switch i32 %28, label %108 [
    i32 133, label %29
    i32 129, label %40
    i32 128, label %54
    i32 134, label %59
    i32 135, label %67
    i32 132, label %75
    i32 131, label %83
    i32 130, label %100
  ]

29:                                               ; preds = %27
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = call i32 @_print_next_block(i32 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %35 = load i32, i32* @CSEM_REG_CSEM_PRTY_STS_0, align 4
  %36 = call i32 @_print_parity(%struct.bnx2x* %34, i32 %35)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %38 = load i32, i32* @CSEM_REG_CSEM_PRTY_STS_1, align 4
  %39 = call i32 @_print_parity(%struct.bnx2x* %37, i32 %38)
  br label %108

40:                                               ; preds = %27
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = call i32 @_print_next_block(i32 %42, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %46 = load i32, i32* @PXP_REG_PXP_PRTY_STS, align 4
  %47 = call i32 @_print_parity(%struct.bnx2x* %45, i32 %46)
  %48 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %49 = load i32, i32* @PXP2_REG_PXP2_PRTY_STS_0, align 4
  %50 = call i32 @_print_parity(%struct.bnx2x* %48, i32 %49)
  %51 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %52 = load i32, i32* @PXP2_REG_PXP2_PRTY_STS_1, align 4
  %53 = call i32 @_print_parity(%struct.bnx2x* %51, i32 %52)
  br label %108

54:                                               ; preds = %27
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %55, align 4
  %58 = call i32 @_print_next_block(i32 %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %108

59:                                               ; preds = %27
  %60 = load i32*, i32** %7, align 8
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  %63 = call i32 @_print_next_block(i32 %61, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %64 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %65 = load i32, i32* @CFC_REG_CFC_PRTY_STS, align 4
  %66 = call i32 @_print_parity(%struct.bnx2x* %64, i32 %65)
  br label %108

67:                                               ; preds = %27
  %68 = load i32*, i32** %7, align 8
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = call i32 @_print_next_block(i32 %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0))
  %72 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %73 = load i32, i32* @CDU_REG_CDU_PRTY_STS, align 4
  %74 = call i32 @_print_parity(%struct.bnx2x* %72, i32 %73)
  br label %108

75:                                               ; preds = %27
  %76 = load i32*, i32** %7, align 8
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %76, align 4
  %79 = call i32 @_print_next_block(i32 %77, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0))
  %80 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %81 = load i32, i32* @DMAE_REG_DMAE_PRTY_STS, align 4
  %82 = call i32 @_print_parity(%struct.bnx2x* %80, i32 %81)
  br label %108

83:                                               ; preds = %27
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = call i32 @_print_next_block(i32 %85, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %88 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %89 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %83
  %92 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %93 = load i32, i32* @HC_REG_HC_PRTY_STS, align 4
  %94 = call i32 @_print_parity(%struct.bnx2x* %92, i32 %93)
  br label %99

95:                                               ; preds = %83
  %96 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %97 = load i32, i32* @IGU_REG_IGU_PRTY_STS, align 4
  %98 = call i32 @_print_parity(%struct.bnx2x* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %91
  br label %108

100:                                              ; preds = %27
  %101 = load i32*, i32** %7, align 8
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 4
  %104 = call i32 @_print_next_block(i32 %102, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %105 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %106 = load i32, i32* @MISC_REG_MISC_PRTY_STS, align 4
  %107 = call i32 @_print_parity(%struct.bnx2x* %105, i32 %106)
  br label %108

108:                                              ; preds = %27, %100, %99, %75, %67, %59, %54, %40, %29
  br label %109

109:                                              ; preds = %108, %24
  %110 = load i32, i32* %9, align 4
  %111 = xor i32 %110, -1
  %112 = load i32, i32* %6, align 4
  %113 = and i32 %112, %111
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %109, %15
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %11, align 4
  br label %12

118:                                              ; preds = %12
  %119 = load i32, i32* %10, align 4
  ret i32 %119
}

declare dso_local i32 @_print_next_block(i32, i8*) #1

declare dso_local i32 @_print_parity(%struct.bnx2x*, i32) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
