; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32*, i32*, i32, %struct.stmpe_variant_info* }
%struct.stmpe_variant_info = type { i64, i32 }

@STMPE801_ID = common dso_local global i64 0, align 8
@STMPE1600_ID = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@STMPE1801_ID = common dso_local global i64 0, align 8
@STMPE_IDX_ISR_LSB = common dso_local global i64 0, align 8
@STMPE_IDX_ISR_MSB = common dso_local global i64 0, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @stmpe_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.stmpe*, align 8
  %7 = alloca %struct.stmpe_variant_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [3 x i32], align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %20 = load i8*, i8** %5, align 8
  %21 = bitcast i8* %20 to %struct.stmpe*
  store %struct.stmpe* %21, %struct.stmpe** %6, align 8
  %22 = load %struct.stmpe*, %struct.stmpe** %6, align 8
  %23 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %22, i32 0, i32 3
  %24 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %23, align 8
  store %struct.stmpe_variant_info* %24, %struct.stmpe_variant_info** %7, align 8
  %25 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %7, align 8
  %26 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @DIV_ROUND_UP(i32 %27, i32 8)
  store i32 %28, i32* %8, align 4
  %29 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %7, align 8
  %30 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @STMPE801_ID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %2
  %35 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %7, align 8
  %36 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @STMPE1600_ID, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %34, %2
  %41 = load %struct.stmpe*, %struct.stmpe** %6, align 8
  %42 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @irq_create_mapping(i32 %43, i32 0)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @handle_nested_irq(i32 %45)
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %140

48:                                               ; preds = %34
  %49 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %7, align 8
  %50 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @STMPE1801_ID, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %61

54:                                               ; preds = %48
  %55 = load %struct.stmpe*, %struct.stmpe** %6, align 8
  %56 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i64, i64* @STMPE_IDX_ISR_LSB, align 8
  %59 = getelementptr inbounds i32, i32* %57, i64 %58
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %9, align 4
  br label %68

61:                                               ; preds = %48
  %62 = load %struct.stmpe*, %struct.stmpe** %6, align 8
  %63 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @STMPE_IDX_ISR_MSB, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %61, %54
  %69 = load %struct.stmpe*, %struct.stmpe** %6, align 8
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %8, align 4
  %72 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 0
  %73 = call i32 @stmpe_block_read(%struct.stmpe* %69, i32 %70, i32 %71, i32* %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %68
  %77 = load i32, i32* @IRQ_NONE, align 4
  store i32 %77, i32* %3, align 4
  br label %140

78:                                               ; preds = %68
  store i32 0, i32* %12, align 4
  br label %79

79:                                               ; preds = %135, %78
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %138

83:                                               ; preds = %79
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %84, %85
  %87 = sub nsw i32 %86, 1
  store i32 %87, i32* %14, align 4
  %88 = load i32, i32* %12, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds [3 x i32], [3 x i32]* %10, i64 0, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %15, align 4
  %92 = load %struct.stmpe*, %struct.stmpe** %6, align 8
  %93 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %92, i32 0, i32 1
  %94 = load i32*, i32** %93, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %15, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %15, align 4
  %101 = load i32, i32* %15, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %104, label %103

103:                                              ; preds = %83
  br label %135

104:                                              ; preds = %83
  %105 = load i32, i32* %15, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %109, %104
  %107 = load i32, i32* %15, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %128

109:                                              ; preds = %106
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @__ffs(i32 %110)
  store i32 %111, i32* %17, align 4
  %112 = load i32, i32* %14, align 4
  %113 = mul nsw i32 %112, 8
  %114 = load i32, i32* %17, align 4
  %115 = add nsw i32 %113, %114
  store i32 %115, i32* %18, align 4
  %116 = load %struct.stmpe*, %struct.stmpe** %6, align 8
  %117 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* %18, align 4
  %120 = call i32 @irq_create_mapping(i32 %118, i32 %119)
  store i32 %120, i32* %19, align 4
  %121 = load i32, i32* %19, align 4
  %122 = call i32 @handle_nested_irq(i32 %121)
  %123 = load i32, i32* %17, align 4
  %124 = shl i32 1, %123
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %15, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %15, align 4
  br label %106

128:                                              ; preds = %106
  %129 = load %struct.stmpe*, %struct.stmpe** %6, align 8
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %130, %131
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @stmpe_reg_write(%struct.stmpe* %129, i32 %132, i32 %133)
  br label %135

135:                                              ; preds = %128, %103
  %136 = load i32, i32* %12, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %12, align 4
  br label %79

138:                                              ; preds = %79
  %139 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %139, i32* %3, align 4
  br label %140

140:                                              ; preds = %138, %76, %40
  %141 = load i32, i32* %3, align 4
  ret i32 %141
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @irq_create_mapping(i32, i32) #1

declare dso_local i32 @handle_nested_irq(i32) #1

declare dso_local i32 @stmpe_block_read(%struct.stmpe*, i32, i32, i32*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @stmpe_reg_write(%struct.stmpe*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
