; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_q_prep_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_main.c_bnx2x_pf_q_prep_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }
%struct.bnx2x_fastpath = type { i64, %struct.TYPE_8__**, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.bnx2x_queue_init_params = type { i64, i32**, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@BNX2X_Q_FLG_HC = common dso_local global i32 0, align 4
@BNX2X_Q_FLG_HC_EN = common dso_local global i32 0, align 4
@HC_INDEX_ETH_RX_CQ_CONS = common dso_local global i32 0, align 4
@HC_INDEX_ETH_FIRST_TX_CQ_CONS = common dso_local global i32 0, align 4
@NETIF_MSG_IFUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"fp: %d setting queue params max cos to: %d\0A\00", align 1
@FIRST_TX_COS_INDEX = common dso_local global i64 0, align 8
@ILT_PAGE_CIDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_fastpath*, %struct.bnx2x_queue_init_params*)* @bnx2x_pf_q_prep_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_pf_q_prep_init(%struct.bnx2x* %0, %struct.bnx2x_fastpath* %1, %struct.bnx2x_queue_init_params* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_fastpath*, align 8
  %6 = alloca %struct.bnx2x_queue_init_params*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_fastpath* %1, %struct.bnx2x_fastpath** %5, align 8
  store %struct.bnx2x_queue_init_params* %2, %struct.bnx2x_queue_init_params** %6, align 8
  %10 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %11 = call i32 @IS_FCOE_FP(%struct.bnx2x_fastpath* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %81, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @BNX2X_Q_FLG_HC, align 4
  %15 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %16 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %15, i32 0, i32 3
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  %18 = call i32 @__set_bit(i32 %14, i32* %17)
  %19 = load i32, i32* @BNX2X_Q_FLG_HC, align 4
  %20 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %21 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 3
  %23 = call i32 @__set_bit(i32 %19, i32* %22)
  %24 = load i32, i32* @BNX2X_Q_FLG_HC_EN, align 4
  %25 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %26 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = call i32 @__set_bit(i32 %24, i32* %27)
  %29 = load i32, i32* @BNX2X_Q_FLG_HC_EN, align 4
  %30 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %31 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 3
  %33 = call i32 @__set_bit(i32 %29, i32* %32)
  %34 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %35 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %13
  %39 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %40 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sdiv i32 1000000, %41
  br label %44

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %43, %38
  %45 = phi i32 [ %42, %38 ], [ 0, %43 ]
  %46 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %47 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %45, i32* %48, align 8
  %49 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %50 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %44
  %54 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %55 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = sdiv i32 1000000, %56
  br label %59

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58, %53
  %60 = phi i32 [ %57, %53 ], [ 0, %58 ]
  %61 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %62 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  store i32 %60, i32* %63, align 8
  %64 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %65 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %68 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %71 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 2
  store i32 %66, i32* %72, align 8
  %73 = load i32, i32* @HC_INDEX_ETH_RX_CQ_CONS, align 4
  %74 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %75 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  store i32 %73, i32* %76, align 4
  %77 = load i32, i32* @HC_INDEX_ETH_FIRST_TX_CQ_CONS, align 4
  %78 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %79 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 1
  store i32 %77, i32* %80, align 4
  br label %81

81:                                               ; preds = %59, %3
  %82 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %83 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %86 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %85, i32 0, i32 0
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @NETIF_MSG_IFUP, align 4
  %88 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %89 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %92 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = call i32 @DP(i32 %87, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %90, i64 %93)
  %95 = load i64, i64* @FIRST_TX_COS_INDEX, align 8
  store i64 %95, i64* %7, align 8
  br label %96

96:                                               ; preds = %142, %81
  %97 = load i64, i64* %7, align 8
  %98 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %99 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ult i64 %97, %100
  br i1 %101, label %102, label %145

102:                                              ; preds = %96
  %103 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %104 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %103, i32 0, i32 1
  %105 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %104, align 8
  %106 = load i64, i64* %7, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %105, i64 %106
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %112 = sdiv i32 %110, %111
  store i32 %112, i32* %8, align 4
  %113 = load %struct.bnx2x_fastpath*, %struct.bnx2x_fastpath** %5, align 8
  %114 = getelementptr inbounds %struct.bnx2x_fastpath, %struct.bnx2x_fastpath* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %114, align 8
  %116 = load i64, i64* %7, align 8
  %117 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %115, i64 %116
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* @ILT_PAGE_CIDS, align 4
  %123 = mul nsw i32 %121, %122
  %124 = sub nsw i32 %120, %123
  store i32 %124, i32* %9, align 4
  %125 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %126 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %125, i32 0, i32 2
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %126, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = load i32, i32* %9, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %135, i32 0, i32 0
  %137 = load %struct.bnx2x_queue_init_params*, %struct.bnx2x_queue_init_params** %6, align 8
  %138 = getelementptr inbounds %struct.bnx2x_queue_init_params, %struct.bnx2x_queue_init_params* %137, i32 0, i32 1
  %139 = load i32**, i32*** %138, align 8
  %140 = load i64, i64* %7, align 8
  %141 = getelementptr inbounds i32*, i32** %139, i64 %140
  store i32* %136, i32** %141, align 8
  br label %142

142:                                              ; preds = %102
  %143 = load i64, i64* %7, align 8
  %144 = add i64 %143, 1
  store i64 %144, i64* %7, align 8
  br label %96

145:                                              ; preds = %96
  ret void
}

declare dso_local i32 @IS_FCOE_FP(%struct.bnx2x_fastpath*) #1

declare dso_local i32 @__set_bit(i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
