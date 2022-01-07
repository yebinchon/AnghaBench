; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_update_ets_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_update_ets_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.bnx2x_dcbx_pg_params }
%struct.bnx2x_dcbx_pg_params = type { i64, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i64, i64 }
%struct.bnx2x_ets_params = type { i64, %struct.TYPE_11__*, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i64 }

@BNX2X_DCBX_STRICT_INVALID = common dso_local global i64 0, align 8
@DCBX_INVALID_COS_BW = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [32 x i8] c"COS can't be not BW and not SP\0A\00", align 1
@bnx2x_cos_state_strict = common dso_local global i32 0, align 4
@bnx2x_cos_state_bw = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"bnx2x_ets_e3b0_config failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*)* @bnx2x_dcbx_update_ets_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_update_ets_config(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.bnx2x_dcbx_pg_params*, align 8
  %4 = alloca %struct.bnx2x_ets_params, align 8
  %5 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %6 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %7 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %7, i32 0, i32 0
  store %struct.bnx2x_dcbx_pg_params* %8, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %9 = bitcast %struct.bnx2x_ets_params* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %11 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %4, i32 0, i32 0
  store i64 %12, i64* %13, align 8
  store i64 0, i64* %5, align 8
  br label %14

14:                                               ; preds = %97, %1
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %17 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ult i64 %15, %18
  br i1 %19, label %20, label %100

20:                                               ; preds = %14
  %21 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %21, i32 0, i32 1
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @BNX2X_DCBX_STRICT_INVALID, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %63

30:                                               ; preds = %20
  %31 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %32 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %31, i32 0, i32 1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %32, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @DCBX_INVALID_COS_BW, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %114

42:                                               ; preds = %30
  %43 = load i32, i32* @bnx2x_cos_state_strict, align 4
  %44 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %4, i32 0, i32 1
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 1
  store i32 %43, i32* %48, align 8
  %49 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %50 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %49, i32 0, i32 1
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %50, align 8
  %52 = load i64, i64* %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %4, i32 0, i32 1
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = load i64, i64* %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  store i64 %55, i64* %62, align 8
  br label %96

63:                                               ; preds = %20
  %64 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %65 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %64, i32 0, i32 1
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %65, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @DCBX_INVALID_COS_BW, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %114

75:                                               ; preds = %63
  %76 = load i32, i32* @bnx2x_cos_state_bw, align 4
  %77 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %4, i32 0, i32 1
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %77, align 8
  %79 = load i64, i64* %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %78, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %80, i32 0, i32 1
  store i32 %76, i32* %81, align 8
  %82 = load %struct.bnx2x_dcbx_pg_params*, %struct.bnx2x_dcbx_pg_params** %3, align 8
  %83 = getelementptr inbounds %struct.bnx2x_dcbx_pg_params, %struct.bnx2x_dcbx_pg_params* %82, i32 0, i32 1
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %83, align 8
  %85 = load i64, i64* %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds %struct.bnx2x_ets_params, %struct.bnx2x_ets_params* %4, i32 0, i32 1
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = load i64, i64* %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  store i64 %88, i64* %95, align 8
  br label %96

96:                                               ; preds = %75, %42
  br label %97

97:                                               ; preds = %96
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %5, align 8
  br label %14

100:                                              ; preds = %14
  %101 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %102 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %101, i32 0, i32 1
  %103 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %104 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %103, i32 0, i32 0
  %105 = call i64 @bnx2x_ets_e3b0_config(i32* %102, i32* %104, %struct.bnx2x_ets_params* %4)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %100
  %108 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %109 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %110 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %109, i32 0, i32 1
  %111 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %112 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %111, i32 0, i32 0
  %113 = call i32 @bnx2x_ets_disabled(i32* %110, i32* %112)
  br label %114

114:                                              ; preds = %40, %73, %107, %100
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BNX2X_ERR(i8*) #2

declare dso_local i64 @bnx2x_ets_e3b0_config(i32*, i32*, %struct.bnx2x_ets_params*) #2

declare dso_local i32 @bnx2x_ets_disabled(i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
