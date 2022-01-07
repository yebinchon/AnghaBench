; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_expected_tpt_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/mvm/extr_rs.c_rs_get_expected_tpt_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_lq_sta = type { i64 }
%struct.rs_tx_column = type { i64, i64 }

@IWL_RATE_COUNT = common dso_local global i32 0, align 4
@RS_LEGACY = common dso_local global i64 0, align 8
@RS_SISO = common dso_local global i64 0, align 8
@RS_MIMO2 = common dso_local global i64 0, align 8
@expected_tpt_legacy = common dso_local global i32* null, align 8
@expected_tpt_mimo2_20MHz = common dso_local global i32** null, align 8
@expected_tpt_siso_20MHz = common dso_local global i32** null, align 8
@expected_tpt_siso_40MHz = common dso_local global i32** null, align 8
@expected_tpt_siso_80MHz = common dso_local global i32** null, align 8
@expected_tpt_siso_160MHz = common dso_local global i32** null, align 8
@expected_tpt_mimo2_40MHz = common dso_local global i32** null, align 8
@expected_tpt_mimo2_80MHz = common dso_local global i32** null, align 8
@expected_tpt_mimo2_160MHz = common dso_local global i32** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.iwl_lq_sta*, %struct.rs_tx_column*, i32)* @rs_get_expected_tpt_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @rs_get_expected_tpt_table(%struct.iwl_lq_sta* %0, %struct.rs_tx_column* %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.iwl_lq_sta*, align 8
  %6 = alloca %struct.rs_tx_column*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  store %struct.iwl_lq_sta* %0, %struct.iwl_lq_sta** %5, align 8
  store %struct.rs_tx_column* %1, %struct.rs_tx_column** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @IWL_RATE_COUNT, align 4
  %10 = zext i32 %9 to i64
  %11 = load %struct.rs_tx_column*, %struct.rs_tx_column** %6, align 8
  %12 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RS_LEGACY, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.rs_tx_column*, %struct.rs_tx_column** %6, align 8
  %18 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @RS_SISO, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.rs_tx_column*, %struct.rs_tx_column** %6, align 8
  %24 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RS_MIMO2, align 8
  %27 = icmp ne i64 %25, %26
  br label %28

28:                                               ; preds = %22, %16, %3
  %29 = phi i1 [ false, %16 ], [ false, %3 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @WARN_ON_ONCE(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32*, i32** @expected_tpt_legacy, align 8
  store i32* %34, i32** %4, align 8
  br label %140

35:                                               ; preds = %28
  %36 = load %struct.rs_tx_column*, %struct.rs_tx_column** %6, align 8
  %37 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @RS_LEGACY, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i32*, i32** @expected_tpt_legacy, align 8
  store i32* %42, i32** %4, align 8
  br label %140

43:                                               ; preds = %35
  %44 = load i32**, i32*** @expected_tpt_mimo2_20MHz, align 8
  %45 = bitcast i32** %44 to i32*
  store i32* %45, i32** %8, align 8
  %46 = load %struct.rs_tx_column*, %struct.rs_tx_column** %6, align 8
  %47 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @RS_SISO, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %68

51:                                               ; preds = %43
  %52 = load i32, i32* %7, align 4
  switch i32 %52, label %65 [
    i32 130, label %53
    i32 129, label %56
    i32 128, label %59
    i32 131, label %62
  ]

53:                                               ; preds = %51
  %54 = load i32**, i32*** @expected_tpt_siso_20MHz, align 8
  %55 = bitcast i32** %54 to i32*
  store i32* %55, i32** %8, align 8
  br label %67

56:                                               ; preds = %51
  %57 = load i32**, i32*** @expected_tpt_siso_40MHz, align 8
  %58 = bitcast i32** %57 to i32*
  store i32* %58, i32** %8, align 8
  br label %67

59:                                               ; preds = %51
  %60 = load i32**, i32*** @expected_tpt_siso_80MHz, align 8
  %61 = bitcast i32** %60 to i32*
  store i32* %61, i32** %8, align 8
  br label %67

62:                                               ; preds = %51
  %63 = load i32**, i32*** @expected_tpt_siso_160MHz, align 8
  %64 = bitcast i32** %63 to i32*
  store i32* %64, i32** %8, align 8
  br label %67

65:                                               ; preds = %51
  %66 = call i64 @WARN_ON_ONCE(i32 1)
  br label %67

67:                                               ; preds = %65, %62, %59, %56, %53
  br label %94

68:                                               ; preds = %43
  %69 = load %struct.rs_tx_column*, %struct.rs_tx_column** %6, align 8
  %70 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @RS_MIMO2, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %74, label %91

74:                                               ; preds = %68
  %75 = load i32, i32* %7, align 4
  switch i32 %75, label %88 [
    i32 130, label %76
    i32 129, label %79
    i32 128, label %82
    i32 131, label %85
  ]

76:                                               ; preds = %74
  %77 = load i32**, i32*** @expected_tpt_mimo2_20MHz, align 8
  %78 = bitcast i32** %77 to i32*
  store i32* %78, i32** %8, align 8
  br label %90

79:                                               ; preds = %74
  %80 = load i32**, i32*** @expected_tpt_mimo2_40MHz, align 8
  %81 = bitcast i32** %80 to i32*
  store i32* %81, i32** %8, align 8
  br label %90

82:                                               ; preds = %74
  %83 = load i32**, i32*** @expected_tpt_mimo2_80MHz, align 8
  %84 = bitcast i32** %83 to i32*
  store i32* %84, i32** %8, align 8
  br label %90

85:                                               ; preds = %74
  %86 = load i32**, i32*** @expected_tpt_mimo2_160MHz, align 8
  %87 = bitcast i32** %86 to i32*
  store i32* %87, i32** %8, align 8
  br label %90

88:                                               ; preds = %74
  %89 = call i64 @WARN_ON_ONCE(i32 1)
  br label %90

90:                                               ; preds = %88, %85, %82, %79, %76
  br label %93

91:                                               ; preds = %68
  %92 = call i64 @WARN_ON_ONCE(i32 1)
  br label %93

93:                                               ; preds = %91, %90
  br label %94

94:                                               ; preds = %93, %67
  %95 = load %struct.rs_tx_column*, %struct.rs_tx_column** %6, align 8
  %96 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %108, label %99

99:                                               ; preds = %94
  %100 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %101 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %108, label %104

104:                                              ; preds = %99
  %105 = load i32*, i32** %8, align 8
  %106 = mul nsw i64 0, %10
  %107 = getelementptr inbounds i32, i32* %105, i64 %106
  store i32* %107, i32** %4, align 8
  br label %140

108:                                              ; preds = %99, %94
  %109 = load %struct.rs_tx_column*, %struct.rs_tx_column** %6, align 8
  %110 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %108
  %114 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %115 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %122, label %118

118:                                              ; preds = %113
  %119 = load i32*, i32** %8, align 8
  %120 = mul nsw i64 1, %10
  %121 = getelementptr inbounds i32, i32* %119, i64 %120
  store i32* %121, i32** %4, align 8
  br label %140

122:                                              ; preds = %113, %108
  %123 = load %struct.rs_tx_column*, %struct.rs_tx_column** %6, align 8
  %124 = getelementptr inbounds %struct.rs_tx_column, %struct.rs_tx_column* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %136, label %127

127:                                              ; preds = %122
  %128 = load %struct.iwl_lq_sta*, %struct.iwl_lq_sta** %5, align 8
  %129 = getelementptr inbounds %struct.iwl_lq_sta, %struct.iwl_lq_sta* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %127
  %133 = load i32*, i32** %8, align 8
  %134 = mul nsw i64 2, %10
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  store i32* %135, i32** %4, align 8
  br label %140

136:                                              ; preds = %127, %122
  %137 = load i32*, i32** %8, align 8
  %138 = mul nsw i64 3, %10
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  store i32* %139, i32** %4, align 8
  br label %140

140:                                              ; preds = %136, %132, %118, %104, %41, %33
  %141 = load i32*, i32** %4, align 8
  ret i32* %141
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
