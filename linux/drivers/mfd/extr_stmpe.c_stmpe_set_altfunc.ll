; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_set_altfunc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_stmpe.c_stmpe_set_altfunc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmpe = type { i32*, i32, i32, %struct.stmpe_variant_info* }
%struct.stmpe_variant_info = type { i32, i32 (%struct.stmpe.0*, i32)* }
%struct.stmpe.0 = type opaque

@STMPE_IDX_GPAFR_U_MSB = common dso_local global i64 0, align 8
@STMPE_BLOCK_GPIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stmpe_set_altfunc(%struct.stmpe* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.stmpe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.stmpe_variant_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca [8 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.stmpe* %0, %struct.stmpe** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %20 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %21 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %20, i32 0, i32 3
  %22 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %21, align 8
  store %struct.stmpe_variant_info* %22, %struct.stmpe_variant_info** %8, align 8
  %23 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %24 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @STMPE_IDX_GPAFR_U_MSB, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %8, align 8
  %30 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %10, align 4
  %32 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %33 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = mul nsw i32 %34, %35
  %37 = call i32 @DIV_ROUND_UP(i32 %36, i32 8)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = shl i32 1, %38
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %12, align 4
  %41 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %8, align 8
  %42 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %41, i32 0, i32 1
  %43 = load i32 (%struct.stmpe.0*, i32)*, i32 (%struct.stmpe.0*, i32)** %42, align 8
  %44 = icmp ne i32 (%struct.stmpe.0*, i32)* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %126

46:                                               ; preds = %3
  %47 = load i32, i32* %10, align 4
  %48 = sdiv i32 8, %47
  store i32 %48, i32* %15, align 4
  %49 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %50 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %49, i32 0, i32 2
  %51 = call i32 @mutex_lock(i32* %50)
  %52 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %53 = load i32, i32* @STMPE_BLOCK_GPIO, align 4
  %54 = call i32 @__stmpe_enable(%struct.stmpe* %52, i32 %53)
  store i32 %54, i32* %16, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %121

58:                                               ; preds = %46
  %59 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %11, align 4
  %62 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %63 = call i32 @__stmpe_block_read(%struct.stmpe* %59, i32 %60, i32 %61, i32* %62)
  store i32 %63, i32* %16, align 4
  %64 = load i32, i32* %16, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %121

67:                                               ; preds = %58
  %68 = load %struct.stmpe_variant_info*, %struct.stmpe_variant_info** %8, align 8
  %69 = getelementptr inbounds %struct.stmpe_variant_info, %struct.stmpe_variant_info* %68, i32 0, i32 1
  %70 = load i32 (%struct.stmpe.0*, i32)*, i32 (%struct.stmpe.0*, i32)** %69, align 8
  %71 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %72 = bitcast %struct.stmpe* %71 to %struct.stmpe.0*
  %73 = load i32, i32* %7, align 4
  %74 = call i32 %70(%struct.stmpe.0* %72, i32 %73)
  store i32 %74, i32* %14, align 4
  br label %75

75:                                               ; preds = %78, %67
  %76 = load i32, i32* %6, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %115

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @__ffs(i32 %79)
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %11, align 4
  %82 = load i32, i32* %17, align 4
  %83 = load i32, i32* %15, align 4
  %84 = sdiv i32 %82, %83
  %85 = sub nsw i32 %81, %84
  %86 = sub nsw i32 %85, 1
  store i32 %86, i32* %18, align 4
  %87 = load i32, i32* %17, align 4
  %88 = load i32, i32* %15, align 4
  %89 = srem i32 %87, %88
  %90 = load i32, i32* %15, align 4
  %91 = sdiv i32 8, %90
  %92 = mul nsw i32 %89, %91
  store i32 %92, i32* %19, align 4
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %19, align 4
  %95 = shl i32 %93, %94
  %96 = xor i32 %95, -1
  %97 = load i32, i32* %18, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, %96
  store i32 %101, i32* %99, align 4
  %102 = load i32, i32* %14, align 4
  %103 = load i32, i32* %19, align 4
  %104 = shl i32 %102, %103
  %105 = load i32, i32* %18, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 %106
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, %104
  store i32 %109, i32* %107, align 4
  %110 = load i32, i32* %17, align 4
  %111 = shl i32 1, %110
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %6, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %6, align 4
  br label %75

115:                                              ; preds = %75
  %116 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %11, align 4
  %119 = getelementptr inbounds [8 x i32], [8 x i32]* %13, i64 0, i64 0
  %120 = call i32 @__stmpe_block_write(%struct.stmpe* %116, i32 %117, i32 %118, i32* %119)
  store i32 %120, i32* %16, align 4
  br label %121

121:                                              ; preds = %115, %66, %57
  %122 = load %struct.stmpe*, %struct.stmpe** %5, align 8
  %123 = getelementptr inbounds %struct.stmpe, %struct.stmpe* %122, i32 0, i32 2
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %16, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %121, %45
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__stmpe_enable(%struct.stmpe*, i32) #1

declare dso_local i32 @__stmpe_block_read(%struct.stmpe*, i32, i32, i32*) #1

declare dso_local i32 @__ffs(i32) #1

declare dso_local i32 @__stmpe_block_write(%struct.stmpe*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
