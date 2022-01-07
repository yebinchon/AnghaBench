; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.bnx2x_func_init_params = type { i32, i32, i32, i32, i32, i32 }
%struct.event_ring_data = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@IGU_REG_STATISTIC_NUM_MESSAGE_SENT = common dso_local global i64 0, align 8
@BNX2X_IGU_STAS_MSG_VF_CNT = common dso_local global i32 0, align 4
@BNX2X_IGU_STAS_MSG_PF_CNT = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@HC_SP_INDEX_EQ_CONS = common dso_local global i32 0, align 4
@DEF_SB_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_pf_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pf_init(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_func_init_params, align 4
  %4 = alloca %struct.event_ring_data, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %5 = bitcast %struct.bnx2x_func_init_params* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 24, i1 false)
  %6 = bitcast %struct.event_ring_data* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 24, i1 false)
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = call i32 @CHIP_IS_E1x(%struct.bnx2x* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %57, label %10

10:                                               ; preds = %1
  %11 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %12 = load i64, i64* @IGU_REG_STATISTIC_NUM_MESSAGE_SENT, align 8
  %13 = load i32, i32* @BNX2X_IGU_STAS_MSG_VF_CNT, align 4
  %14 = mul nsw i32 %13, 4
  %15 = sext i32 %14 to i64
  %16 = add nsw i64 %12, %15
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %10
  %21 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %22 = call i32 @BP_FUNC(%struct.bnx2x* %21)
  br label %26

23:                                               ; preds = %10
  %24 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %25 = call i32 @BP_VN(%struct.bnx2x* %24)
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i32 [ %22, %20 ], [ %25, %23 ]
  %28 = mul nsw i32 %27, 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %16, %29
  %31 = call i32 @REG_WR(%struct.bnx2x* %11, i64 %30, i32 0)
  %32 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %33 = load i64, i64* @IGU_REG_STATISTIC_NUM_MESSAGE_SENT, align 8
  %34 = load i32, i32* @BNX2X_IGU_STAS_MSG_VF_CNT, align 4
  %35 = mul nsw i32 %34, 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = load i32, i32* @BNX2X_IGU_STAS_MSG_PF_CNT, align 4
  %39 = mul nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %37, %40
  %42 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %43 = call i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %26
  %46 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %47 = call i32 @BP_FUNC(%struct.bnx2x* %46)
  br label %51

48:                                               ; preds = %26
  %49 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %50 = call i32 @BP_VN(%struct.bnx2x* %49)
  br label %51

51:                                               ; preds = %48, %45
  %52 = phi i32 [ %47, %45 ], [ %50, %48 ]
  %53 = mul nsw i32 %52, 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %41, %54
  %56 = call i32 @REG_WR(%struct.bnx2x* %32, i64 %55, i32 0)
  br label %57

57:                                               ; preds = %51, %1
  %58 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 0
  store i32 1, i32* %58, align 4
  %59 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %60 = call i32 @BP_FUNC(%struct.bnx2x* %59)
  %61 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %63 = call i32 @BP_FUNC(%struct.bnx2x* %62)
  %64 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 2
  store i32 %63, i32* %64, align 4
  %65 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %66 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %65, i32 0, i32 6
  %67 = load i32, i32* %66, align 8
  %68 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 4
  store i32 %67, i32* %68, align 4
  %69 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %70 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 4
  %72 = getelementptr inbounds %struct.bnx2x_func_init_params, %struct.bnx2x_func_init_params* %3, i32 0, i32 3
  store i32 %71, i32* %72, align 4
  %73 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %74 = call i32 @bnx2x_func_init(%struct.bnx2x* %73, %struct.bnx2x_func_init_params* %3)
  %75 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %76 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %75, i32 0, i32 2
  %77 = call i32 @memset(i32* %76, i32 0, i32 4)
  %78 = load i32, i32* @SPEED_10000, align 4
  %79 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %80 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %79, i32 0, i32 4
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 8
  %82 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %83 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %84 = call i32 @bnx2x_get_cmng_fns_mode(%struct.bnx2x* %83)
  %85 = call i32 @bnx2x_cmng_fns_init(%struct.bnx2x* %82, i32 1, i32 %84)
  %86 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %87 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %57
  %92 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %93 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %94 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %93, i32 0, i32 2
  %95 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %96 = call i32 @BP_PORT(%struct.bnx2x* %95)
  %97 = call i32 @storm_memset_cmng(%struct.bnx2x* %92, i32* %94, i32 %96)
  br label %98

98:                                               ; preds = %91, %57
  %99 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %100 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @U64_HI(i32 %101)
  %103 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 3
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 1
  store i32 %102, i32* %104, align 4
  %105 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %106 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @U64_LO(i32 %107)
  %109 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  store i32 %108, i32* %110, align 4
  %111 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %112 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 2
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @HC_SP_INDEX_EQ_CONS, align 4
  %116 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 1
  store i32 %115, i32* %116, align 4
  %117 = load i32, i32* @DEF_SB_ID, align 4
  %118 = getelementptr inbounds %struct.event_ring_data, %struct.event_ring_data* %4, i32 0, i32 0
  store i32 %117, i32* %118, align 4
  %119 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %120 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %121 = call i32 @BP_FUNC(%struct.bnx2x* %120)
  %122 = call i32 @storm_memset_eq_data(%struct.bnx2x* %119, %struct.event_ring_data* %4, i32 %121)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @CHIP_IS_E1x(%struct.bnx2x*) #2

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #2

declare dso_local i64 @CHIP_MODE_IS_4_PORT(%struct.bnx2x*) #2

declare dso_local i32 @BP_FUNC(%struct.bnx2x*) #2

declare dso_local i32 @BP_VN(%struct.bnx2x*) #2

declare dso_local i32 @bnx2x_func_init(%struct.bnx2x*, %struct.bnx2x_func_init_params*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @bnx2x_cmng_fns_init(%struct.bnx2x*, i32, i32) #2

declare dso_local i32 @bnx2x_get_cmng_fns_mode(%struct.bnx2x*) #2

declare dso_local i32 @storm_memset_cmng(%struct.bnx2x*, i32*, i32) #2

declare dso_local i32 @BP_PORT(%struct.bnx2x*) #2

declare dso_local i32 @U64_HI(i32) #2

declare dso_local i32 @U64_LO(i32) #2

declare dso_local i32 @storm_memset_eq_data(%struct.bnx2x*, %struct.event_ring_data*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
