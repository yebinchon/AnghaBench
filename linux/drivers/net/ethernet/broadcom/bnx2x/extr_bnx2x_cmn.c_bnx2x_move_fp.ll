; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_move_fp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_cmn.c_bnx2x_move_fp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs* }
%struct.bnx2x_sp_objs = type { i32, %struct.bnx2x_sp_objs**, %struct.bnx2x_agg_info*, i32 }
%struct.bnx2x_agg_info = type { i32 }
%struct.bnx2x_fastpath = type { i32, %struct.bnx2x_fastpath**, %struct.bnx2x_agg_info*, i32 }
%struct.bnx2x_fp_stats = type { i32, %struct.bnx2x_fp_stats**, %struct.bnx2x_agg_info*, i32 }

@FCOE_TXQ_IDX_OFFSET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, i32, i32)* @bnx2x_move_fp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_move_fp(%struct.bnx2x* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_fastpath*, align 8
  %8 = alloca %struct.bnx2x_fastpath*, align 8
  %9 = alloca %struct.bnx2x_sp_objs*, align 8
  %10 = alloca %struct.bnx2x_sp_objs*, align 8
  %11 = alloca %struct.bnx2x_fp_stats*, align 8
  %12 = alloca %struct.bnx2x_fp_stats*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.bnx2x_agg_info*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 4
  %20 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.bnx2x_sp_objs, %struct.bnx2x_sp_objs* %20, i64 %22
  %24 = bitcast %struct.bnx2x_sp_objs* %23 to %struct.bnx2x_fastpath*
  store %struct.bnx2x_fastpath* %24, %struct.bnx2x_fastpath** %7, align 8
  %25 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %26 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %25, i32 0, i32 4
  %27 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.bnx2x_sp_objs, %struct.bnx2x_sp_objs* %27, i64 %29
  %31 = bitcast %struct.bnx2x_sp_objs* %30 to %struct.bnx2x_fastpath*
  store %struct.bnx2x_fastpath* %31, %struct.bnx2x_fastpath** %8, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 3
  %34 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.bnx2x_sp_objs, %struct.bnx2x_sp_objs* %34, i64 %36
  store %struct.bnx2x_sp_objs* %37, %struct.bnx2x_sp_objs** %9, align 8
  %38 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %39 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %38, i32 0, i32 3
  %40 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %39, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.bnx2x_sp_objs, %struct.bnx2x_sp_objs* %40, i64 %42
  store %struct.bnx2x_sp_objs* %43, %struct.bnx2x_sp_objs** %10, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %45 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %44, i32 0, i32 2
  %46 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.bnx2x_sp_objs, %struct.bnx2x_sp_objs* %46, i64 %48
  %50 = bitcast %struct.bnx2x_sp_objs* %49 to %struct.bnx2x_fp_stats*
  store %struct.bnx2x_fp_stats* %50, %struct.bnx2x_fp_stats** %11, align 8
  %51 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %52 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %51, i32 0, i32 2
  %53 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.bnx2x_sp_objs, %struct.bnx2x_sp_objs* %53, i64 %55
  %57 = bitcast %struct.bnx2x_sp_objs* %56 to %struct.bnx2x_fp_stats*
  store %struct.bnx2x_fp_stats* %57, %struct.bnx2x_fp_stats** %12, align 8
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %58 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %8, align 8
  %59 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %58, i32 0, i32 2
  %60 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %59, align 8
  store %struct.bnx2x_agg_info* %60, %struct.bnx2x_agg_info** %17, align 8
  %61 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %8, align 8
  %62 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %65 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %64, i32 0, i32 3
  store i32 %63, i32* %65, align 8
  %66 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %8, align 8
  %67 = bitcast %struct.bnx2x_fastpath* %66 to %struct.bnx2x_sp_objs*
  %68 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %7, align 8
  %69 = bitcast %struct.bnx2x_fastpath* %68 to %struct.bnx2x_sp_objs*
  %70 = call i32 @memcpy(%struct.bnx2x_sp_objs* %67, %struct.bnx2x_sp_objs* %69, i32 32)
  %71 = load i32, i32* %6, align 4
  %72 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %8, align 8
  %73 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 8
  %74 = load %struct.bnx2x_agg_info*, %struct.bnx2x_agg_info** %17, align 8
  %75 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %8, align 8
  %76 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %75, i32 0, i32 2
  store %struct.bnx2x_agg_info* %74, %struct.bnx2x_agg_info** %76, align 8
  %77 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %10, align 8
  %78 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %9, align 8
  %79 = call i32 @memcpy(%struct.bnx2x_sp_objs* %77, %struct.bnx2x_sp_objs* %78, i32 32)
  %80 = load %struct.bnx2x_fp_stats*, %struct.bnx2x_fp_stats** %12, align 8
  %81 = bitcast %struct.bnx2x_fp_stats* %80 to %struct.bnx2x_sp_objs*
  %82 = load %struct.bnx2x_fp_stats*, %struct.bnx2x_fp_stats** %11, align 8
  %83 = bitcast %struct.bnx2x_fp_stats* %82 to %struct.bnx2x_sp_objs*
  %84 = call i32 @memcpy(%struct.bnx2x_sp_objs* %81, %struct.bnx2x_sp_objs* %83, i32 32)
  %85 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %86 = call i32 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x* %85)
  %87 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %88 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %86, %89
  store i32 %90, i32* %13, align 4
  %91 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %92 = call i32 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x* %91)
  %93 = load i32, i32* %5, align 4
  %94 = sub nsw i32 %92, %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %94, %95
  %97 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %98 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = mul nsw i32 %96, %99
  store i32 %100, i32* %14, align 4
  %101 = load i32, i32* %5, align 4
  %102 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %103 = call i32 @FCOE_IDX(%struct.bnx2x* %102)
  %104 = icmp eq i32 %101, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %3
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* @FCOE_TXQ_IDX_OFFSET, align 4
  %108 = add nsw i32 %106, %107
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %14, align 4
  %110 = load i32, i32* @FCOE_TXQ_IDX_OFFSET, align 4
  %111 = add nsw i32 %109, %110
  store i32 %111, i32* %16, align 4
  br label %112

112:                                              ; preds = %105, %3
  %113 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %114 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %113, i32 0, i32 1
  %115 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %114, align 8
  %116 = load i32, i32* %16, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.bnx2x_sp_objs, %struct.bnx2x_sp_objs* %115, i64 %117
  %119 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %120 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %119, i32 0, i32 1
  %121 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %120, align 8
  %122 = load i32, i32* %15, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.bnx2x_sp_objs, %struct.bnx2x_sp_objs* %121, i64 %123
  %125 = call i32 @memcpy(%struct.bnx2x_sp_objs* %118, %struct.bnx2x_sp_objs* %124, i32 4)
  %126 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %127 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %126, i32 0, i32 1
  %128 = load %struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs** %127, align 8
  %129 = load i32, i32* %16, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.bnx2x_sp_objs, %struct.bnx2x_sp_objs* %128, i64 %130
  %132 = bitcast %struct.bnx2x_sp_objs* %131 to %struct.bnx2x_fastpath*
  %133 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %8, align 8
  %134 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %133, i32 0, i32 1
  %135 = load %struct.bnx2x_fastpath**, %struct.bnx2x_fastpath*** %134, align 8
  %136 = getelementptr inbounds %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %135, i64 0
  store %struct.bnx2x_fastpath* %132, %struct.bnx2x_fastpath** %136, align 8
  ret void
}

declare dso_local i32 @memcpy(%struct.bnx2x_sp_objs*, %struct.bnx2x_sp_objs*, i32) #1

declare dso_local i32 @BNX2X_NUM_ETH_QUEUES(%struct.bnx2x*) #1

declare dso_local i32 @FCOE_IDX(%struct.bnx2x*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
