; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_pbt_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_collect_pbt_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64, i32 }
%struct.cudbg_error = type { i32 }
%struct.cudbg_pbt_tables = type { i32*, i32*, i32*, i32* }

@CUDBG_CHAC_PBT_ADDR = common dso_local global i64 0, align 8
@CUDBG_PBT_DYNAMIC_ENTRIES = common dso_local global i32 0, align 4
@CUDBG_PBT_STATIC_ENTRIES = common dso_local global i32 0, align 4
@CUDBG_CHAC_PBT_LRF = common dso_local global i64 0, align 8
@CUDBG_LRF_ENTRIES = common dso_local global i32 0, align 4
@CUDBG_CHAC_PBT_DATA = common dso_local global i64 0, align 8
@CUDBG_PBT_DATA_ENTRIES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cudbg_collect_pbt_tables(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cudbg_init*, align 8
  %6 = alloca %struct.cudbg_buffer*, align 8
  %7 = alloca %struct.cudbg_error*, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.cudbg_buffer, align 8
  %10 = alloca %struct.cudbg_pbt_tables*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %5, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %6, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %7, align 8
  %14 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %15 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 0
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %8, align 8
  %17 = bitcast %struct.cudbg_buffer* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %17, i8 0, i64 16, i1 false)
  %18 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %19 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %20 = call i32 @cudbg_get_buff(%struct.cudbg_init* %18, %struct.cudbg_buffer* %19, i32 32, %struct.cudbg_buffer* %9)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %3
  %24 = load i32, i32* %12, align 4
  store i32 %24, i32* %4, align 4
  br label %165

25:                                               ; preds = %3
  %26 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %9, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.cudbg_pbt_tables*
  store %struct.cudbg_pbt_tables* %28, %struct.cudbg_pbt_tables** %10, align 8
  %29 = load i64, i64* @CUDBG_CHAC_PBT_ADDR, align 8
  store i64 %29, i64* %13, align 8
  store i32 0, i32* %11, align 4
  br label %30

30:                                               ; preds = %58, %25
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* @CUDBG_PBT_DYNAMIC_ENTRIES, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %61

34:                                               ; preds = %30
  %35 = load %struct.adapter*, %struct.adapter** %8, align 8
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* %11, align 4
  %38 = mul nsw i32 %37, 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load %struct.cudbg_pbt_tables*, %struct.cudbg_pbt_tables** %10, align 8
  %42 = getelementptr inbounds %struct.cudbg_pbt_tables, %struct.cudbg_pbt_tables* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %11, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = call i32 @t4_cim_read(%struct.adapter* %35, i64 %40, i32 1, i32* %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %34
  %51 = load i32, i32* %12, align 4
  %52 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %53 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %55 = call i32 @cudbg_put_buff(%struct.cudbg_init* %54, %struct.cudbg_buffer* %9)
  %56 = load i32, i32* %12, align 4
  store i32 %56, i32* %4, align 4
  br label %165

57:                                               ; preds = %34
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %30

61:                                               ; preds = %30
  %62 = load i64, i64* @CUDBG_CHAC_PBT_ADDR, align 8
  %63 = add nsw i64 %62, 64
  store i64 %63, i64* %13, align 8
  store i32 0, i32* %11, align 4
  br label %64

64:                                               ; preds = %92, %61
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* @CUDBG_PBT_STATIC_ENTRIES, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %95

68:                                               ; preds = %64
  %69 = load %struct.adapter*, %struct.adapter** %8, align 8
  %70 = load i64, i64* %13, align 8
  %71 = load i32, i32* %11, align 4
  %72 = mul nsw i32 %71, 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %70, %73
  %75 = load %struct.cudbg_pbt_tables*, %struct.cudbg_pbt_tables** %10, align 8
  %76 = getelementptr inbounds %struct.cudbg_pbt_tables, %struct.cudbg_pbt_tables* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %11, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = call i32 @t4_cim_read(%struct.adapter* %69, i64 %74, i32 1, i32* %80)
  store i32 %81, i32* %12, align 4
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %68
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %87 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 4
  %88 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %89 = call i32 @cudbg_put_buff(%struct.cudbg_init* %88, %struct.cudbg_buffer* %9)
  %90 = load i32, i32* %12, align 4
  store i32 %90, i32* %4, align 4
  br label %165

91:                                               ; preds = %68
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %64

95:                                               ; preds = %64
  %96 = load i64, i64* @CUDBG_CHAC_PBT_LRF, align 8
  store i64 %96, i64* %13, align 8
  store i32 0, i32* %11, align 4
  br label %97

97:                                               ; preds = %125, %95
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* @CUDBG_LRF_ENTRIES, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %97
  %102 = load %struct.adapter*, %struct.adapter** %8, align 8
  %103 = load i64, i64* %13, align 8
  %104 = load i32, i32* %11, align 4
  %105 = mul nsw i32 %104, 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %103, %106
  %108 = load %struct.cudbg_pbt_tables*, %struct.cudbg_pbt_tables** %10, align 8
  %109 = getelementptr inbounds %struct.cudbg_pbt_tables, %struct.cudbg_pbt_tables* %108, i32 0, i32 1
  %110 = load i32*, i32** %109, align 8
  %111 = load i32, i32* %11, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i32, i32* %110, i64 %112
  %114 = call i32 @t4_cim_read(%struct.adapter* %102, i64 %107, i32 1, i32* %113)
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %12, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %101
  %118 = load i32, i32* %12, align 4
  %119 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %120 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %119, i32 0, i32 0
  store i32 %118, i32* %120, align 4
  %121 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %122 = call i32 @cudbg_put_buff(%struct.cudbg_init* %121, %struct.cudbg_buffer* %9)
  %123 = load i32, i32* %12, align 4
  store i32 %123, i32* %4, align 4
  br label %165

124:                                              ; preds = %101
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %11, align 4
  br label %97

128:                                              ; preds = %97
  %129 = load i64, i64* @CUDBG_CHAC_PBT_DATA, align 8
  store i64 %129, i64* %13, align 8
  store i32 0, i32* %11, align 4
  br label %130

130:                                              ; preds = %158, %128
  %131 = load i32, i32* %11, align 4
  %132 = load i32, i32* @CUDBG_PBT_DATA_ENTRIES, align 4
  %133 = icmp slt i32 %131, %132
  br i1 %133, label %134, label %161

134:                                              ; preds = %130
  %135 = load %struct.adapter*, %struct.adapter** %8, align 8
  %136 = load i64, i64* %13, align 8
  %137 = load i32, i32* %11, align 4
  %138 = mul nsw i32 %137, 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %136, %139
  %141 = load %struct.cudbg_pbt_tables*, %struct.cudbg_pbt_tables** %10, align 8
  %142 = getelementptr inbounds %struct.cudbg_pbt_tables, %struct.cudbg_pbt_tables* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds i32, i32* %143, i64 %145
  %147 = call i32 @t4_cim_read(%struct.adapter* %135, i64 %140, i32 1, i32* %146)
  store i32 %147, i32* %12, align 4
  %148 = load i32, i32* %12, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %134
  %151 = load i32, i32* %12, align 4
  %152 = load %struct.cudbg_error*, %struct.cudbg_error** %7, align 8
  %153 = getelementptr inbounds %struct.cudbg_error, %struct.cudbg_error* %152, i32 0, i32 0
  store i32 %151, i32* %153, align 4
  %154 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %155 = call i32 @cudbg_put_buff(%struct.cudbg_init* %154, %struct.cudbg_buffer* %9)
  %156 = load i32, i32* %12, align 4
  store i32 %156, i32* %4, align 4
  br label %165

157:                                              ; preds = %134
  br label %158

158:                                              ; preds = %157
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %11, align 4
  br label %130

161:                                              ; preds = %130
  %162 = load %struct.cudbg_init*, %struct.cudbg_init** %5, align 8
  %163 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %6, align 8
  %164 = call i32 @cudbg_write_and_release_buff(%struct.cudbg_init* %162, %struct.cudbg_buffer* %9, %struct.cudbg_buffer* %163)
  store i32 %164, i32* %4, align 4
  br label %165

165:                                              ; preds = %161, %150, %117, %84, %50, %23
  %166 = load i32, i32* %4, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cudbg_get_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #2

declare dso_local i32 @t4_cim_read(%struct.adapter*, i64, i32, i32*) #2

declare dso_local i32 @cudbg_put_buff(%struct.cudbg_init*, %struct.cudbg_buffer*) #2

declare dso_local i32 @cudbg_write_and_release_buff(%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_buffer*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
