; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_snoc.c_ath10k_snoc_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32 }
%struct.ath10k_snoc = type { %struct.ath10k_clk_info* }
%struct.ath10k_clk_info = type { i32, i32, i64 }

@clk_cfg = common dso_local global i32 0, align 4
@ATH10K_DBG_SNOC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"snoc clock %s being enabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to set clock %s freq %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"failed to enable clock %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ath10k*)* @ath10k_snoc_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath10k_snoc_clk_init(%struct.ath10k* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ath10k*, align 8
  %4 = alloca %struct.ath10k_snoc*, align 8
  %5 = alloca %struct.ath10k_clk_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ath10k* %0, %struct.ath10k** %3, align 8
  %8 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %9 = call %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k* %8)
  store %struct.ath10k_snoc* %9, %struct.ath10k_snoc** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %72, %1
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @clk_cfg, align 4
  %13 = call i32 @ARRAY_SIZE(i32 %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %75

15:                                               ; preds = %10
  %16 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %17 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %16, i32 0, i32 0
  %18 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %18, i64 %20
  store %struct.ath10k_clk_info* %21, %struct.ath10k_clk_info** %5, align 8
  %22 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %23 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %72

27:                                               ; preds = %15
  %28 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %29 = load i32, i32* @ATH10K_DBG_SNOC, align 4
  %30 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %31 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @ath10k_dbg(%struct.ath10k* %28, i32 %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %35 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %58

38:                                               ; preds = %27
  %39 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %40 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %43 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @clk_set_rate(i32 %41, i64 %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %38
  %49 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %50 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %51 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %54 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %49, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %52, i64 %55)
  br label %76

57:                                               ; preds = %38
  br label %58

58:                                               ; preds = %57, %27
  %59 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %60 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @clk_prepare_enable(i32 %61)
  store i32 %62, i32* %6, align 4
  %63 = load i32, i32* %6, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.ath10k*, %struct.ath10k** %3, align 8
  %67 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %68 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (%struct.ath10k*, i8*, i32, ...) @ath10k_err(%struct.ath10k* %66, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %69)
  br label %76

71:                                               ; preds = %58
  br label %72

72:                                               ; preds = %71, %26
  %73 = load i32, i32* %7, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %7, align 4
  br label %10

75:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %104

76:                                               ; preds = %65, %48
  %77 = load i32, i32* %7, align 4
  %78 = sub nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %99, %76
  %80 = load i32, i32* %7, align 4
  %81 = icmp sge i32 %80, 0
  br i1 %81, label %82, label %102

82:                                               ; preds = %79
  %83 = load %struct.ath10k_snoc*, %struct.ath10k_snoc** %4, align 8
  %84 = getelementptr inbounds %struct.ath10k_snoc, %struct.ath10k_snoc* %83, i32 0, i32 0
  %85 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %85, i64 %87
  store %struct.ath10k_clk_info* %88, %struct.ath10k_clk_info** %5, align 8
  %89 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %90 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %94, label %93

93:                                               ; preds = %82
  br label %99

94:                                               ; preds = %82
  %95 = load %struct.ath10k_clk_info*, %struct.ath10k_clk_info** %5, align 8
  %96 = getelementptr inbounds %struct.ath10k_clk_info, %struct.ath10k_clk_info* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @clk_disable_unprepare(i32 %97)
  br label %99

99:                                               ; preds = %94, %93
  %100 = load i32, i32* %7, align 4
  %101 = add nsw i32 %100, -1
  store i32 %101, i32* %7, align 4
  br label %79

102:                                              ; preds = %79
  %103 = load i32, i32* %6, align 4
  store i32 %103, i32* %2, align 4
  br label %104

104:                                              ; preds = %102, %75
  %105 = load i32, i32* %2, align 4
  ret i32 %105
}

declare dso_local %struct.ath10k_snoc* @ath10k_snoc_priv(%struct.ath10k*) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @ath10k_dbg(%struct.ath10k*, i32, i8*, i32) #1

declare dso_local i32 @clk_set_rate(i32, i64) #1

declare dso_local i32 @ath10k_err(%struct.ath10k*, i8*, i32, ...) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
