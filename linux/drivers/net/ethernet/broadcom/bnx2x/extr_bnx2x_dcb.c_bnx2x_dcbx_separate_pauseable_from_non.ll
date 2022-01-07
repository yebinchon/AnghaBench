; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_separate_pauseable_from_non.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_separate_pauseable_from_non.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.cos_help_data = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.dcbx_ets_feature = type { i32 }

@LLFC_DRIVER_TRAFFIC_TYPE_MAX = common dso_local global i64 0, align 8
@DCBX_MAX_NUM_PG_BW_ENTRIES = common dso_local global i64 0, align 8
@BNX2X_DCBX_STRICT_COS_HIGHEST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"dcbx error: Both groups must have priorities\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.cos_help_data*, i32*, %struct.dcbx_ets_feature*)* @bnx2x_dcbx_separate_pauseable_from_non to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_separate_pauseable_from_non(%struct.bnx2x* %0, %struct.cos_help_data* %1, i32* %2, %struct.dcbx_ets_feature* %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca %struct.cos_help_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dcbx_ets_feature*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store %struct.cos_help_data* %1, %struct.cos_help_data** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.dcbx_ets_feature* %3, %struct.dcbx_ets_feature** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %14 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  store i64 %14, i64* %13, align 8
  %15 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %16 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i64 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 1, i32* %19, align 4
  %20 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %21 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  store i32 0, i32* %24, align 4
  %25 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %26 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %25, i32 0, i32 0
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 0, i32* %29, align 4
  %30 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %31 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %30, i32 0, i32 0
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  store i64 0, i64* %10, align 8
  br label %35

35:                                               ; preds = %111, %4
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* %13, align 8
  %38 = icmp ult i64 %36, %37
  br i1 %38, label %39, label %114

39:                                               ; preds = %35
  %40 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %41 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* %10, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 1, %47
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %51 = call i32 @DCBX_PFC_PRI_NON_PAUSE_MASK(%struct.bnx2x* %50)
  %52 = and i32 %49, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %39
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %57 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i64 1
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %55
  store i32 %62, i32* %60, align 4
  store i64 1, i64* %11, align 8
  br label %72

63:                                               ; preds = %39
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %66 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %64
  store i32 %71, i32* %69, align 4
  store i64 0, i64* %11, align 8
  br label %72

72:                                               ; preds = %63, %54
  %73 = load i32*, i32** %7, align 8
  %74 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %75 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %73, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  store i64 %85, i64* %12, align 8
  %86 = load i64, i64* %12, align 8
  %87 = load i64, i64* @DCBX_MAX_NUM_PG_BW_ENTRIES, align 8
  %88 = icmp ult i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %72
  %90 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %91 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %92 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %91, i32 0, i32 0
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = load i64, i64* %11, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i64 %94
  %96 = load %struct.dcbx_ets_feature*, %struct.dcbx_ets_feature** %8, align 8
  %97 = getelementptr inbounds %struct.dcbx_ets_feature, %struct.dcbx_ets_feature* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i64, i64* %12, align 8
  %100 = call i32 @DCBX_PG_BW_GET(i32 %98, i64 %99)
  %101 = call i32 @bnx2x_dcbx_add_to_cos_bw(%struct.bnx2x* %90, %struct.TYPE_6__* %95, i32 %100)
  br label %110

102:                                              ; preds = %72
  %103 = load i32, i32* @BNX2X_DCBX_STRICT_COS_HIGHEST, align 4
  %104 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %105 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %105, align 8
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i64 %107
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 2
  store i32 %103, i32* %109, align 4
  br label %110

110:                                              ; preds = %102, %89
  br label %111

111:                                              ; preds = %110
  %112 = load i64, i64* %10, align 8
  %113 = add i64 %112, 1
  store i64 %113, i64* %10, align 8
  br label %35

114:                                              ; preds = %35
  %115 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %116 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %115, i32 0, i32 0
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i64 0
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = icmp eq i32 0, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %114
  %123 = load %struct.cos_help_data*, %struct.cos_help_data** %6, align 8
  %124 = getelementptr inbounds %struct.cos_help_data, %struct.cos_help_data* %123, i32 0, i32 0
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i64 1
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = icmp eq i32 0, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %122
  %131 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %130, %122, %114
  ret void
}

declare dso_local i32 @DCBX_PFC_PRI_NON_PAUSE_MASK(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_dcbx_add_to_cos_bw(%struct.bnx2x*, %struct.TYPE_6__*, i32) #1

declare dso_local i32 @DCBX_PG_BW_GET(i32, i64) #1

declare dso_local i32 @BNX2X_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
