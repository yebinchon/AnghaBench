; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_ctxt_region_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cudbg_lib.c_cudbg_get_ctxt_region_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32 }
%struct.cudbg_region_info = type { i32, i32, i32 }
%struct.cudbg_mem_desc = type { i32, i32 }
%struct.cudbg_meminfo = type { i32 }

@CTXT_EGRESS = common dso_local global i64 0, align 8
@CTXT_INGRESS = common dso_local global i64 0, align 8
@cudbg_region = common dso_local global i32* null, align 8
@SGE_FLM_CFG_A = common dso_local global i32 0, align 4
@CTXT_FLM = common dso_local global i64 0, align 8
@CUDBG_MAX_FL_QIDS = common dso_local global i32 0, align 4
@SGE_CTXT_SIZE = common dso_local global i32 0, align 4
@CTXT_CNM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.cudbg_region_info*, i32*)* @cudbg_get_ctxt_region_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cudbg_get_ctxt_region_info(%struct.adapter* %0, %struct.cudbg_region_info* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.cudbg_region_info*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.cudbg_mem_desc, align 4
  %9 = alloca %struct.cudbg_meminfo, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.cudbg_region_info* %1, %struct.cudbg_region_info** %6, align 8
  store i32* %2, i32** %7, align 8
  %16 = load %struct.adapter*, %struct.adapter** %5, align 8
  %17 = call i32 @cudbg_fill_meminfo(%struct.adapter* %16, %struct.cudbg_meminfo* %9)
  store i32 %17, i32* %15, align 4
  %18 = load i32, i32* %15, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %15, align 4
  store i32 %21, i32* %4, align 4
  br label %129

22:                                               ; preds = %3
  %23 = load i64, i64* @CTXT_EGRESS, align 8
  store i64 %23, i64* %10, align 8
  br label %24

24:                                               ; preds = %94, %22
  %25 = load i64, i64* %10, align 8
  %26 = load i64, i64* @CTXT_INGRESS, align 8
  %27 = icmp sle i64 %25, %26
  br i1 %27, label %28, label %97

28:                                               ; preds = %24
  store i64 0, i64* %13, align 8
  %29 = call i32 @memset(%struct.cudbg_mem_desc* %8, i32 0, i32 8)
  store i64 0, i64* %11, align 8
  br label %30

30:                                               ; preds = %82, %28
  %31 = load i64, i64* %11, align 8
  %32 = getelementptr inbounds %struct.cudbg_meminfo, %struct.cudbg_meminfo* %9, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @ARRAY_SIZE(i32 %33)
  %35 = icmp slt i64 %31, %34
  br i1 %35, label %36, label %85

36:                                               ; preds = %30
  %37 = load %struct.adapter*, %struct.adapter** %5, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32*, i32** @cudbg_region, align 8
  %40 = load i64, i64* %10, align 8
  %41 = getelementptr inbounds i32, i32* %39, i64 %40
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @cudbg_get_mem_region(%struct.adapter* %37, %struct.cudbg_meminfo* %9, i64 %38, i32 %42, %struct.cudbg_mem_desc* %8)
  store i32 %43, i32* %15, align 4
  %44 = load i32, i32* %15, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %81, label %46

46:                                               ; preds = %36
  store i64 1, i64* %13, align 8
  %47 = load %struct.adapter*, %struct.adapter** %5, align 8
  %48 = load i64, i64* %11, align 8
  %49 = getelementptr inbounds %struct.cudbg_mem_desc, %struct.cudbg_mem_desc* %8, i32 0, i32 1
  %50 = getelementptr inbounds %struct.cudbg_mem_desc, %struct.cudbg_mem_desc* %8, i32 0, i32 0
  %51 = call i32 @cudbg_get_mem_relative(%struct.adapter* %47, %struct.cudbg_meminfo* %9, i64 %48, i32* %49, i32* %50)
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %55, i64 %56
  %58 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %57, i32 0, i32 0
  store i32 0, i32* %58, align 4
  br label %85

59:                                               ; preds = %46
  %60 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %61 = load i64, i64* %10, align 8
  %62 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %60, i64 %61
  %63 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %62, i32 0, i32 0
  store i32 1, i32* %63, align 4
  %64 = getelementptr inbounds %struct.cudbg_mem_desc, %struct.cudbg_mem_desc* %8, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %67 = load i64, i64* %10, align 8
  %68 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %66, i64 %67
  %69 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %68, i32 0, i32 2
  store i32 %65, i32* %69, align 4
  %70 = getelementptr inbounds %struct.cudbg_mem_desc, %struct.cudbg_mem_desc* %8, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %73 = load i64, i64* %10, align 8
  %74 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %72, i64 %73
  %75 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load i64, i64* %11, align 8
  %77 = trunc i64 %76 to i32
  %78 = load i32*, i32** %7, align 8
  %79 = load i64, i64* %10, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  store i32 %77, i32* %80, align 4
  br label %85

81:                                               ; preds = %36
  br label %82

82:                                               ; preds = %81
  %83 = load i64, i64* %11, align 8
  %84 = add nsw i64 %83, 1
  store i64 %84, i64* %11, align 8
  br label %30

85:                                               ; preds = %59, %54, %30
  %86 = load i64, i64* %13, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %93, label %88

88:                                               ; preds = %85
  %89 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %90 = load i64, i64* %10, align 8
  %91 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %89, i64 %90
  %92 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %91, i32 0, i32 0
  store i32 0, i32* %92, align 4
  br label %93

93:                                               ; preds = %88, %85
  br label %94

94:                                               ; preds = %93
  %95 = load i64, i64* %10, align 8
  %96 = add nsw i64 %95, 1
  store i64 %96, i64* %10, align 8
  br label %24

97:                                               ; preds = %24
  %98 = load %struct.adapter*, %struct.adapter** %5, align 8
  %99 = load i32, i32* @SGE_FLM_CFG_A, align 4
  %100 = call i64 @t4_read_reg(%struct.adapter* %98, i32 %99)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = call i32 @HDRSTARTFLQ_G(i64 %101)
  store i32 %102, i32* %14, align 4
  %103 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %104 = load i64, i64* @CTXT_FLM, align 8
  %105 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %103, i64 %104
  %106 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %105, i32 0, i32 0
  store i32 1, i32* %106, align 4
  %107 = load i32, i32* @CUDBG_MAX_FL_QIDS, align 4
  %108 = load i32, i32* %14, align 4
  %109 = ashr i32 %107, %108
  %110 = load i32, i32* @SGE_CTXT_SIZE, align 4
  %111 = mul nsw i32 %109, %110
  %112 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %113 = load i64, i64* @CTXT_FLM, align 8
  %114 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %112, i64 %113
  %115 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %114, i32 0, i32 1
  store i32 %111, i32* %115, align 4
  %116 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %117 = load i64, i64* @CTXT_CNM, align 8
  %118 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %116, i64 %117
  %119 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %118, i32 0, i32 0
  store i32 1, i32* %119, align 4
  %120 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %121 = load i64, i64* @CTXT_FLM, align 8
  %122 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %120, i64 %121
  %123 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.cudbg_region_info*, %struct.cudbg_region_info** %6, align 8
  %126 = load i64, i64* @CTXT_CNM, align 8
  %127 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %125, i64 %126
  %128 = getelementptr inbounds %struct.cudbg_region_info, %struct.cudbg_region_info* %127, i32 0, i32 1
  store i32 %124, i32* %128, align 4
  store i32 0, i32* %4, align 4
  br label %129

129:                                              ; preds = %97, %20
  %130 = load i32, i32* %4, align 4
  ret i32 %130
}

declare dso_local i32 @cudbg_fill_meminfo(%struct.adapter*, %struct.cudbg_meminfo*) #1

declare dso_local i32 @memset(%struct.cudbg_mem_desc*, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(i32) #1

declare dso_local i32 @cudbg_get_mem_region(%struct.adapter*, %struct.cudbg_meminfo*, i64, i32, %struct.cudbg_mem_desc*) #1

declare dso_local i32 @cudbg_get_mem_relative(%struct.adapter*, %struct.cudbg_meminfo*, i64, i32*, i32*) #1

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @HDRSTARTFLQ_G(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
