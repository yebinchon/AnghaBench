; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_stmmac_tc.c_tc_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, i32, i32, i32*, %struct.TYPE_2__*, %struct.dma_features }
%struct.TYPE_2__ = type { i32 }
%struct.dma_features = type { i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Enabled Flow TC (entries=%d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Enabling HW TC (entries=%d, max_off=%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @tc_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tc_init(%struct.stmmac_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stmmac_priv*, align 8
  %4 = alloca %struct.dma_features*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %3, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 6
  store %struct.dma_features* %8, %struct.dma_features** %4, align 8
  %9 = load %struct.dma_features*, %struct.dma_features** %4, align 8
  %10 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %64

13:                                               ; preds = %1
  %14 = load %struct.dma_features*, %struct.dma_features** %4, align 8
  %15 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %18 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %20 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.dma_features*, %struct.dma_features** %4, align 8
  %23 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call i8* @devm_kcalloc(i32 %21, i32 %24, i32 4, i32 %25)
  %27 = bitcast i8* %26 to %struct.TYPE_2__*
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 5
  store %struct.TYPE_2__* %27, %struct.TYPE_2__** %29, align 8
  %30 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %31 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %30, i32 0, i32 5
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %13
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %135

37:                                               ; preds = %13
  store i32 0, i32* %6, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %6, align 4
  %40 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %41 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ult i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %47 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %46, i32 0, i32 5
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 0
  store i32 %45, i32* %52, align 4
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  br label %38

56:                                               ; preds = %38
  %57 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %58 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %61 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %59, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %62)
  br label %64

64:                                               ; preds = %56, %1
  %65 = load %struct.dma_features*, %struct.dma_features** %4, align 8
  %66 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %70, label %69

69:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %135

70:                                               ; preds = %64
  %71 = load %struct.dma_features*, %struct.dma_features** %4, align 8
  %72 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  switch i32 %73, label %83 [
    i32 0, label %74
    i32 1, label %77
    i32 2, label %80
  ]

74:                                               ; preds = %70
  %75 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %76 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %75, i32 0, i32 1
  store i32 64, i32* %76, align 4
  br label %86

77:                                               ; preds = %70
  %78 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %79 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %78, i32 0, i32 1
  store i32 128, i32* %79, align 4
  br label %86

80:                                               ; preds = %70
  %81 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %82 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %81, i32 0, i32 1
  store i32 256, i32* %82, align 4
  br label %86

83:                                               ; preds = %70
  %84 = load i32, i32* @EINVAL, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %2, align 4
  br label %135

86:                                               ; preds = %80, %77, %74
  %87 = load %struct.dma_features*, %struct.dma_features** %4, align 8
  %88 = getelementptr inbounds %struct.dma_features, %struct.dma_features* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  switch i32 %89, label %93 [
    i32 0, label %90
    i32 1, label %91
    i32 2, label %92
  ]

90:                                               ; preds = %86
  store i32 64, i32* %5, align 4
  br label %96

91:                                               ; preds = %86
  store i32 128, i32* %5, align 4
  br label %96

92:                                               ; preds = %86
  store i32 256, i32* %5, align 4
  br label %96

93:                                               ; preds = %86
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %135

96:                                               ; preds = %92, %91, %90
  %97 = load i32, i32* %5, align 4
  %98 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %99 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %98, i32 0, i32 2
  store i32 %97, i32* %99, align 8
  %100 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %101 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @GFP_KERNEL, align 4
  %105 = call i8* @devm_kcalloc(i32 %102, i32 %103, i32 4, i32 %104)
  %106 = bitcast i8* %105 to i32*
  %107 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %108 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %107, i32 0, i32 4
  store i32* %106, i32** %108, align 8
  %109 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %110 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = icmp ne i32* %111, null
  br i1 %112, label %116, label %113

113:                                              ; preds = %96
  %114 = load i32, i32* @ENOMEM, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %135

116:                                              ; preds = %96
  %117 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %118 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %117, i32 0, i32 4
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %5, align 4
  %121 = sub i32 %120, 1
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %119, i64 %122
  %124 = call i32 @tc_fill_all_pass_entry(i32* %123)
  %125 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %126 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %129 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load %struct.stmmac_priv*, %struct.stmmac_priv** %3, align 8
  %132 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 (i32, i8*, i32, ...) @dev_info(i32 %127, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %133)
  store i32 0, i32* %2, align 4
  br label %135

135:                                              ; preds = %116, %113, %93, %83, %69, %34
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i8* @devm_kcalloc(i32, i32, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i32, ...) #1

declare dso_local i32 @tc_fill_all_pass_entry(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
