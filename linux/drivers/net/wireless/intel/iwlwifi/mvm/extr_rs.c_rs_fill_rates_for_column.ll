; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_fill_rates_for_column.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_fill_rates_for_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_sta = type { i32 }
%struct.rs_rate = type { i32 }

@LINK_QUAL_MAX_RETRY_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_lq_sta*, %struct.rs_rate*, i32*, i32*, i32, i32, i32, i32)* @rs_fill_rates_for_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rs_fill_rates_for_column(%struct.iwl_mvm* %0, %struct.iwl_lq_sta* %1, %struct.rs_rate* %2, i32* %3, i32* %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.iwl_mvm*, align 8
  %11 = alloca %struct.iwl_lq_sta*, align 8
  %12 = alloca %struct.rs_rate*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %10, align 8
  store %struct.iwl_lq_sta* %1, %struct.iwl_lq_sta** %11, align 8
  store %struct.rs_rate* %2, %struct.rs_rate** %12, align 8
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  store i32 0, i32* %22, align 4
  %26 = load %struct.rs_rate*, %struct.rs_rate** %12, align 8
  %27 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %23, align 4
  %29 = load i32, i32* @LINK_QUAL_MAX_RETRY_NUM, align 4
  store i32 %29, i32* %24, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %25, align 4
  store i32 0, i32* %19, align 4
  br label %32

32:                                               ; preds = %90, %9
  %33 = load i32, i32* %19, align 4
  %34 = load i32, i32* %15, align 4
  %35 = icmp slt i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i32, i32* %25, align 4
  %38 = load i32, i32* %24, align 4
  %39 = icmp slt i32 %37, %38
  br label %40

40:                                               ; preds = %36, %32
  %41 = phi i1 [ false, %32 ], [ %39, %36 ]
  br i1 %41, label %42, label %93

42:                                               ; preds = %40
  store i32 0, i32* %20, align 4
  br label %43

43:                                               ; preds = %70, %42
  %44 = load i32, i32* %20, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %25, align 4
  %49 = load i32, i32* %24, align 4
  %50 = icmp slt i32 %48, %49
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ false, %43 ], [ %50, %47 ]
  br i1 %52, label %53, label %75

53:                                               ; preds = %51
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %10, align 8
  %55 = load %struct.rs_rate*, %struct.rs_rate** %12, align 8
  %56 = call i32 @ucode_rate_from_rs_rate(%struct.iwl_mvm* %54, %struct.rs_rate* %55)
  %57 = call i32 @cpu_to_le32(i32 %56)
  store i32 %57, i32* %21, align 4
  %58 = load i32, i32* %21, align 4
  %59 = load i32*, i32** %13, align 8
  %60 = load i32, i32* %25, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  %63 = load i32, i32* %18, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %53
  %66 = load i32, i32* %17, align 4
  %67 = load %struct.rs_rate*, %struct.rs_rate** %12, align 8
  %68 = call i32 @rs_toggle_antenna(i32 %66, %struct.rs_rate* %67)
  br label %69

69:                                               ; preds = %65, %53
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %20, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %20, align 4
  %73 = load i32, i32* %25, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %25, align 4
  br label %43

75:                                               ; preds = %51
  %76 = load %struct.rs_rate*, %struct.rs_rate** %12, align 8
  %77 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %23, align 4
  %79 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %11, align 8
  %80 = load %struct.rs_rate*, %struct.rs_rate** %12, align 8
  %81 = call i32 @rs_get_lower_rate_in_column(%struct.iwl_lq_sta* %79, %struct.rs_rate* %80)
  store i32 %81, i32* %22, align 4
  %82 = load i32, i32* %22, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load %struct.rs_rate*, %struct.rs_rate** %12, align 8
  %86 = call i32 @is_legacy(%struct.rs_rate* %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %84
  br label %93

89:                                               ; preds = %84, %75
  br label %90

90:                                               ; preds = %89
  %91 = load i32, i32* %19, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %19, align 4
  br label %32

93:                                               ; preds = %88, %40
  %94 = load i32, i32* %22, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %104, label %96

96:                                               ; preds = %93
  %97 = load %struct.rs_rate*, %struct.rs_rate** %12, align 8
  %98 = call i32 @is_legacy(%struct.rs_rate* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %23, align 4
  %102 = load %struct.rs_rate*, %struct.rs_rate** %12, align 8
  %103 = getelementptr inbounds %struct.rs_rate, %struct.rs_rate* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %100, %96, %93
  %105 = load i32, i32* %25, align 4
  %106 = load i32*, i32** %14, align 8
  store i32 %105, i32* %106, align 4
  ret void
}

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @ucode_rate_from_rs_rate(%struct.iwl_mvm*, %struct.rs_rate*) #1

declare dso_local i32 @rs_toggle_antenna(i32, %struct.rs_rate*) #1

declare dso_local i32 @rs_get_lower_rate_in_column(%struct.iwl_lq_sta*, %struct.rs_rate*) #1

declare dso_local i32 @is_legacy(%struct.rs_rate*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
