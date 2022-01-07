; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_memory_rw_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_t4_memory_rw_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MA_EDRAM0_BAR_A = common dso_local global i32 0, align 4
@MEM_HMA = common dso_local global i32 0, align 4
@MEM_MC1 = common dso_local global i32 0, align 4
@MA_EXT_MEMORY0_BAR_A = common dso_local global i32 0, align 4
@MEM_MC0 = common dso_local global i32 0, align 4
@PCIE_MEM_ACCESS_BASE_WIN_A = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@WINDOW_SHIFT_X = common dso_local global i32 0, align 4
@PCIEOFST_SHIFT_X = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_memory_rw_init(%struct.adapter* %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %17 = load %struct.adapter*, %struct.adapter** %8, align 8
  %18 = load i32, i32* @MA_EDRAM0_BAR_A, align 4
  %19 = call i32 @t4_read_reg(%struct.adapter* %17, i32 %18)
  %20 = call i32 @EDRAM0_SIZE_G(i32 %19)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @MEM_HMA, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %30

24:                                               ; preds = %6
  %25 = load i32, i32* %14, align 4
  %26 = mul nsw i32 %25, 1024
  %27 = mul nsw i32 %26, 1024
  %28 = mul nsw i32 2, %27
  %29 = load i32*, i32** %11, align 8
  store i32 %28, i32* %29, align 4
  br label %55

30:                                               ; preds = %6
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @MEM_MC1, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %41

34:                                               ; preds = %30
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %14, align 4
  %37 = mul nsw i32 %36, 1024
  %38 = mul nsw i32 %37, 1024
  %39 = mul nsw i32 %35, %38
  %40 = load i32*, i32** %11, align 8
  store i32 %39, i32* %40, align 4
  br label %54

41:                                               ; preds = %30
  %42 = load %struct.adapter*, %struct.adapter** %8, align 8
  %43 = load i32, i32* @MA_EXT_MEMORY0_BAR_A, align 4
  %44 = call i32 @t4_read_reg(%struct.adapter* %42, i32 %43)
  %45 = call i32 @EXT_MEM0_SIZE_G(i32 %44)
  store i32 %45, i32* %15, align 4
  %46 = load i32, i32* @MEM_MC0, align 4
  %47 = load i32, i32* %14, align 4
  %48 = mul nsw i32 %46, %47
  %49 = load i32, i32* %15, align 4
  %50 = add nsw i32 %48, %49
  %51 = mul nsw i32 %50, 1024
  %52 = mul nsw i32 %51, 1024
  %53 = load i32*, i32** %11, align 8
  store i32 %52, i32* %53, align 4
  br label %54

54:                                               ; preds = %41, %34
  br label %55

55:                                               ; preds = %54, %24
  %56 = load %struct.adapter*, %struct.adapter** %8, align 8
  %57 = load i32, i32* @PCIE_MEM_ACCESS_BASE_WIN_A, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @PCIE_MEM_ACCESS_REG(i32 %57, i32 %58)
  %60 = call i32 @t4_read_reg(%struct.adapter* %56, i32 %59)
  store i32 %60, i32* %16, align 4
  %61 = load i32, i32* %16, align 4
  %62 = icmp eq i32 %61, -1
  br i1 %62, label %63, label %66

63:                                               ; preds = %55
  %64 = load i32, i32* @ENXIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %94

66:                                               ; preds = %55
  %67 = load i32, i32* %16, align 4
  %68 = call i32 @WINDOW_G(i32 %67)
  %69 = load i32, i32* @WINDOW_SHIFT_X, align 4
  %70 = add nsw i32 %68, %69
  %71 = shl i32 1, %70
  %72 = load i32*, i32** %13, align 8
  store i32 %71, i32* %72, align 4
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @PCIEOFST_G(i32 %73)
  %75 = load i32, i32* @PCIEOFST_SHIFT_X, align 4
  %76 = shl i32 %74, %75
  %77 = load i32*, i32** %12, align 8
  store i32 %76, i32* %77, align 4
  %78 = load %struct.adapter*, %struct.adapter** %8, align 8
  %79 = getelementptr inbounds %struct.adapter, %struct.adapter* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i64 @is_t4(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %93

84:                                               ; preds = %66
  %85 = load %struct.adapter*, %struct.adapter** %8, align 8
  %86 = getelementptr inbounds %struct.adapter, %struct.adapter* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %88, align 4
  %90 = sext i32 %89 to i64
  %91 = sub nsw i64 %90, %87
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %88, align 4
  br label %93

93:                                               ; preds = %84, %66
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %63
  %95 = load i32, i32* %7, align 4
  ret i32 %95
}

declare dso_local i32 @EDRAM0_SIZE_G(i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @EXT_MEM0_SIZE_G(i32) #1

declare dso_local i32 @PCIE_MEM_ACCESS_REG(i32, i32) #1

declare dso_local i32 @WINDOW_G(i32) #1

declare dso_local i32 @PCIEOFST_G(i32) #1

declare dso_local i64 @is_t4(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
