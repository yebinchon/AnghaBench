; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_fill_le_tcam_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_fill_le_tcam_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cudbg_tcam = type { i32, i32, i32, i32, i32, i32 }

@LE_DB_TID_HASHBASE_A = common dso_local global i32 0, align 4
@LE_DB_ROUTING_TABLE_INDEX_A = common dso_local global i32 0, align 4
@LE_DB_CLCAM_TID_BASE_A = common dso_local global i32 0, align 4
@LE_DB_CLIP_TABLE_INDEX_A = common dso_local global i32 0, align 4
@LE_DB_FILTER_TABLE_INDEX_A = common dso_local global i32 0, align 4
@LE_DB_SERVER_INDEX_A = common dso_local global i32 0, align 4
@LE_DB_CONFIG_A = common dso_local global i32 0, align 4
@HASHEN_S = common dso_local global i32 0, align 4
@LE_DB_HASH_CONFIG_A = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@ASLIPCOMPEN_F = common dso_local global i32 0, align 4
@CUDBG_MAX_TID_COMP_EN = common dso_local global i32 0, align 4
@CUDBG_MAX_TID_COMP_DIS = common dso_local global i32 0, align 4
@CUDBG_MAX_TCAM_TID = common dso_local global i32 0, align 4
@CUDBG_T6_CLIP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cudbg_fill_le_tcam_info(%struct.adapter* %0, %struct.cudbg_tcam* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cudbg_tcam*, align 8
  %5 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cudbg_tcam* %1, %struct.cudbg_tcam** %4, align 8
  %6 = load %struct.adapter*, %struct.adapter** %3, align 8
  %7 = load i32, i32* @LE_DB_TID_HASHBASE_A, align 4
  %8 = call i32 @t4_read_reg(%struct.adapter* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %11 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load %struct.adapter*, %struct.adapter** %3, align 8
  %13 = load i32, i32* @LE_DB_ROUTING_TABLE_INDEX_A, align 4
  %14 = call i32 @t4_read_reg(%struct.adapter* %12, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %17 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @is_t6(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %2
  %25 = load %struct.adapter*, %struct.adapter** %3, align 8
  %26 = load i32, i32* @LE_DB_CLCAM_TID_BASE_A, align 4
  %27 = call i32 @t4_read_reg(%struct.adapter* %25, i32 %26)
  store i32 %27, i32* %5, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = load i32, i32* @LE_DB_CLIP_TABLE_INDEX_A, align 4
  %31 = call i32 @t4_read_reg(%struct.adapter* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %35 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 4
  %36 = load %struct.adapter*, %struct.adapter** %3, align 8
  %37 = load i32, i32* @LE_DB_FILTER_TABLE_INDEX_A, align 4
  %38 = call i32 @t4_read_reg(%struct.adapter* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %41 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 4
  %42 = load %struct.adapter*, %struct.adapter** %3, align 8
  %43 = load i32, i32* @LE_DB_SERVER_INDEX_A, align 4
  %44 = call i32 @t4_read_reg(%struct.adapter* %42, i32 %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %47 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 4
  %48 = load %struct.adapter*, %struct.adapter** %3, align 8
  %49 = load i32, i32* @LE_DB_CONFIG_A, align 4
  %50 = call i32 @t4_read_reg(%struct.adapter* %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @HASHEN_S, align 4
  %53 = ashr i32 %51, %52
  %54 = and i32 %53, 1
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %89

56:                                               ; preds = %32
  %57 = load %struct.adapter*, %struct.adapter** %3, align 8
  %58 = load i32, i32* @LE_DB_HASH_CONFIG_A, align 4
  %59 = call i32 @t4_read_reg(%struct.adapter* %57, i32 %58)
  store i32 %59, i32* %5, align 4
  %60 = load %struct.adapter*, %struct.adapter** %3, align 8
  %61 = getelementptr inbounds %struct.adapter, %struct.adapter* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i64 @CHELSIO_CHIP_VERSION(i32 %63)
  %65 = load i64, i64* @CHELSIO_T5, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %76

67:                                               ; preds = %56
  %68 = load i32, i32* %5, align 4
  %69 = and i32 %68, 1048575
  %70 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %71 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %75 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %74, i32 0, i32 5
  store i32 %73, i32* %75, align 4
  br label %88

76:                                               ; preds = %56
  %77 = load i32, i32* %5, align 4
  %78 = call i32 @HASHTIDSIZE_G(i32 %77)
  store i32 %78, i32* %5, align 4
  %79 = load i32, i32* %5, align 4
  %80 = shl i32 1, %79
  store i32 %80, i32* %5, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %83 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = add nsw i32 %81, %84
  %86 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %87 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %76, %67
  br label %114

89:                                               ; preds = %32
  %90 = load %struct.adapter*, %struct.adapter** %3, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i64 @is_t6(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %109

96:                                               ; preds = %89
  %97 = load i32, i32* %5, align 4
  %98 = load i32, i32* @ASLIPCOMPEN_F, align 4
  %99 = and i32 %97, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %96
  %102 = load i32, i32* @CUDBG_MAX_TID_COMP_EN, align 4
  br label %105

103:                                              ; preds = %96
  %104 = load i32, i32* @CUDBG_MAX_TID_COMP_DIS, align 4
  br label %105

105:                                              ; preds = %103, %101
  %106 = phi i32 [ %102, %101 ], [ %104, %103 ]
  %107 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %108 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %107, i32 0, i32 5
  store i32 %106, i32* %108, align 4
  br label %113

109:                                              ; preds = %89
  %110 = load i32, i32* @CUDBG_MAX_TCAM_TID, align 4
  %111 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %112 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %111, i32 0, i32 5
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %109, %105
  br label %114

114:                                              ; preds = %113, %88
  %115 = load %struct.adapter*, %struct.adapter** %3, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i64 @is_t6(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %127

121:                                              ; preds = %114
  %122 = load i32, i32* @CUDBG_T6_CLIP, align 4
  %123 = load %struct.cudbg_tcam*, %struct.cudbg_tcam** %4, align 8
  %124 = getelementptr inbounds %struct.cudbg_tcam, %struct.cudbg_tcam* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 4
  br label %127

127:                                              ; preds = %121, %114
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i64 @is_t6(i32) #1

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @HASHTIDSIZE_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
