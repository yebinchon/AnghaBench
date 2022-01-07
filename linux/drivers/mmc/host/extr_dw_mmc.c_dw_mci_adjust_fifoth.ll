; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_adjust_fifoth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc.c_dw_mci_adjust_fifoth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci = type { i32, i32, i32 }
%struct.mmc_data = type { i32 }

@dw_mci_adjust_fifoth.mszs = internal constant [8 x i32] [i32 1, i32 4, i32 8, i32 16, i32 32, i32 64, i32 128, i32 256], align 16
@FIFOTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dw_mci*, %struct.mmc_data*)* @dw_mci_adjust_fifoth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dw_mci_adjust_fifoth(%struct.dw_mci* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.dw_mci*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.dw_mci* %0, %struct.dw_mci** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  %17 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %18 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = udiv i32 %21, %22
  store i32 %23, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 1, i32* %10, align 4
  %24 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dw_mci_adjust_fifoth.mszs, i64 0, i64 0))
  %25 = sub nsw i32 %24, 1
  store i32 %25, i32* %13, align 4
  %26 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %27 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %2
  br label %85

31:                                               ; preds = %2
  %32 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %33 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sdiv i32 %34, 2
  store i32 %35, i32* %11, align 4
  %36 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %37 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %6, align 4
  %43 = urem i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %31
  br label %76

46:                                               ; preds = %31
  br label %47

47:                                               ; preds = %71, %46
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %13, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds [8 x i32], [8 x i32]* @dw_mci_adjust_fifoth.mszs, i64 0, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = srem i32 %48, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %70, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [8 x i32], [8 x i32]* @dw_mci_adjust_fifoth.mszs, i64 0, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = srem i32 %56, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %70, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %13, align 4
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %13, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* @dw_mci_adjust_fifoth.mszs, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = sub nsw i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %75

70:                                               ; preds = %55, %47
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %13, align 4
  %74 = icmp sgt i32 %73, 0
  br i1 %74, label %47, label %75

75:                                               ; preds = %71, %63
  br label %76

76:                                               ; preds = %75, %45
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* %10, align 4
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @SDMMC_SET_FIFOTH(i32 %77, i32 %78, i32 %79)
  store i32 %80, i32* %8, align 4
  %81 = load %struct.dw_mci*, %struct.dw_mci** %3, align 8
  %82 = load i32, i32* @FIFOTH, align 4
  %83 = load i32, i32* %8, align 4
  %84 = call i32 @mci_writel(%struct.dw_mci* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %76, %30
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @SDMMC_SET_FIFOTH(i32, i32, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
