; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-hi3798cv200.c_dw_mci_hi3798cv200_execute_tuning.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_dw_mmc-hi3798cv200.c_dw_mci_hi3798cv200_execute_tuning.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dw_mci_slot = type { i32, %struct.dw_mci* }
%struct.dw_mci = type { i32, %struct.hi3798cv200_priv* }
%struct.hi3798cv200_priv = type { i32 }

@dw_mci_hi3798cv200_execute_tuning.degrees = internal constant [8 x i32] [i32 0, i32 45, i32 90, i32 135, i32 180, i32 225, i32 270, i32 315], align 16
@RINTSTS = common dso_local global i32 0, align 4
@ALL_INT_CLR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Tuning clk_sample[%d, %d], set[%d]\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"No valid clk_sample shift! use default\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dw_mci_slot*, i32)* @dw_mci_hi3798cv200_execute_tuning to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_mci_hi3798cv200_execute_tuning(%struct.dw_mci_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.dw_mci_slot*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.dw_mci*, align 8
  %6 = alloca %struct.hi3798cv200_priv*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.dw_mci_slot* %0, %struct.dw_mci_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %14 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %13, i32 0, i32 1
  %15 = load %struct.dw_mci*, %struct.dw_mci** %14, align 8
  store %struct.dw_mci* %15, %struct.dw_mci** %5, align 8
  %16 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %17 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %16, i32 0, i32 1
  %18 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %17, align 8
  store %struct.hi3798cv200_priv* %18, %struct.hi3798cv200_priv** %6, align 8
  store i32 -1, i32* %7, align 4
  store i32 -1, i32* %8, align 4
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  br label %19

19:                                               ; preds = %74, %2
  %20 = load i32, i32* %12, align 4
  %21 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dw_mci_hi3798cv200_execute_tuning.degrees, i64 0, i64 0))
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %77

23:                                               ; preds = %19
  %24 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %6, align 8
  %25 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [8 x i32], [8 x i32]* @dw_mci_hi3798cv200_execute_tuning.degrees, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_set_phase(i32 %26, i32 %30)
  %32 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %33 = load i32, i32* @RINTSTS, align 4
  %34 = load i32, i32* @ALL_INT_CLR, align 4
  %35 = call i32 @mci_writel(%struct.dw_mci* %32, i32 %33, i32 %34)
  %36 = load %struct.dw_mci_slot*, %struct.dw_mci_slot** %3, align 8
  %37 = getelementptr inbounds %struct.dw_mci_slot, %struct.dw_mci_slot* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @mmc_send_tuning(i32 %38, i32 %39, i32* null)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %44, label %43

43:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  br label %44

44:                                               ; preds = %43, %23
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %65

47:                                               ; preds = %44
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %47
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %56, label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %12, align 4
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  br label %56

56:                                               ; preds = %53, %50, %47
  %57 = load i32, i32* %9, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %64, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %59
  %63 = load i32, i32* %12, align 4
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %62, %59, %56
  br label %65

65:                                               ; preds = %64, %44
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %65
  %69 = load i32, i32* %8, align 4
  %70 = icmp ne i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %68
  br label %78

72:                                               ; preds = %68, %65
  %73 = load i32, i32* %9, align 4
  store i32 %73, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %74

74:                                               ; preds = %72
  %75 = load i32, i32* %12, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %12, align 4
  br label %19

77:                                               ; preds = %19
  br label %78

78:                                               ; preds = %77, %71
  %79 = load i32, i32* %11, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %136

81:                                               ; preds = %78
  %82 = load i32, i32* %7, align 4
  %83 = icmp eq i32 %82, -1
  br i1 %83, label %84, label %85

84:                                               ; preds = %81
  store i32 0, i32* %7, align 4
  br label %85

85:                                               ; preds = %84, %81
  %86 = load i32, i32* %8, align 4
  %87 = icmp eq i32 %86, -1
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dw_mci_hi3798cv200_execute_tuning.degrees, i64 0, i64 0))
  %90 = sub nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %91

91:                                               ; preds = %88, %85
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %112

95:                                               ; preds = %91
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* %8, align 4
  %98 = add nsw i32 %96, %97
  %99 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dw_mci_hi3798cv200_execute_tuning.degrees, i64 0, i64 0))
  %100 = sub nsw i32 %99, 1
  %101 = icmp sgt i32 %98, %100
  br i1 %101, label %102, label %105

102:                                              ; preds = %95
  %103 = load i32, i32* %8, align 4
  %104 = sdiv i32 %103, 2
  store i32 %104, i32* %12, align 4
  br label %111

105:                                              ; preds = %95
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([8 x i32], [8 x i32]* @dw_mci_hi3798cv200_execute_tuning.degrees, i64 0, i64 0))
  %108 = add nsw i32 %106, %107
  %109 = sub nsw i32 %108, 1
  %110 = sdiv i32 %109, 2
  store i32 %110, i32* %12, align 4
  br label %111

111:                                              ; preds = %105, %102
  br label %117

112:                                              ; preds = %91
  %113 = load i32, i32* %7, align 4
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %113, %114
  %116 = sdiv i32 %115, 2
  store i32 %116, i32* %12, align 4
  br label %117

117:                                              ; preds = %112, %111
  %118 = load %struct.hi3798cv200_priv*, %struct.hi3798cv200_priv** %6, align 8
  %119 = getelementptr inbounds %struct.hi3798cv200_priv, %struct.hi3798cv200_priv* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %12, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [8 x i32], [8 x i32]* @dw_mci_hi3798cv200_execute_tuning.degrees, i64 0, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @clk_set_phase(i32 %120, i32 %124)
  %126 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %127 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = load i32, i32* %8, align 4
  %131 = load i32, i32* %12, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [8 x i32], [8 x i32]* @dw_mci_hi3798cv200_execute_tuning.degrees, i64 0, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = call i32 @dev_dbg(i32 %128, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %129, i32 %130, i32 %134)
  br label %143

136:                                              ; preds = %78
  %137 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %138 = getelementptr inbounds %struct.dw_mci, %struct.dw_mci* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @dev_err(i32 %139, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %9, align 4
  br label %143

143:                                              ; preds = %136, %117
  %144 = load %struct.dw_mci*, %struct.dw_mci** %5, align 8
  %145 = load i32, i32* @RINTSTS, align 4
  %146 = load i32, i32* @ALL_INT_CLR, align 4
  %147 = call i32 @mci_writel(%struct.dw_mci* %144, i32 %145, i32 %146)
  %148 = load i32, i32* %9, align 4
  ret i32 %148
}

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @clk_set_phase(i32, i32) #1

declare dso_local i32 @mci_writel(%struct.dw_mci*, i32, i32) #1

declare dso_local i32 @mmc_send_tuning(i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
