; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_print_cos_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_dcb.c_bnx2x_dcbx_print_cos_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.bnx2x_func_tx_start_params = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@BNX2X_MSG_DCB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"pfc_fw_cfg->dcb_version %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [66 x i8] c"pdev->params.dcbx_port_params.pfc.priority_non_pauseable_mask %x\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"pdev->params.dcbx_port_params.ets.cos_params[%d].pri_bitmask %x\0A\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"pdev->params.dcbx_port_params.ets.cos_params[%d].bw_tbl %x\0A\00", align 1
@.str.4 = private unnamed_addr constant [60 x i8] c"pdev->params.dcbx_port_params.ets.cos_params[%d].strict %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [63 x i8] c"pdev->params.dcbx_port_params.ets.cos_params[%d].pauseable %x\0A\00", align 1
@LLFC_DRIVER_TRAFFIC_TYPE_MAX = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [58 x i8] c"pfc_fw_cfg->traffic_type_to_priority_cos[%d].priority %x\0A\00", align 1
@.str.7 = private unnamed_addr constant [53 x i8] c"pfc_fw_cfg->traffic_type_to_priority_cos[%d].cos %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_func_tx_start_params*)* @bnx2x_dcbx_print_cos_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_dcbx_print_cos_params(%struct.bnx2x* %0, %struct.bnx2x_func_tx_start_params* %1) #0 {
  %3 = alloca %struct.bnx2x*, align 8
  %4 = alloca %struct.bnx2x_func_tx_start_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %3, align 8
  store %struct.bnx2x_func_tx_start_params* %1, %struct.bnx2x_func_tx_start_params** %4, align 8
  store i64 0, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %7 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %8 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %9 = getelementptr inbounds %struct.bnx2x_func_tx_start_params, %struct.bnx2x_func_tx_start_params* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = sext i32 %10 to i64
  %12 = call i32 (i32, i8*, i64, ...) @DP(i32 %7, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %15 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = call i32 (i32, i8*, i64, ...) @DP(i32 %13, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.1, i64 0, i64 0), i64 %19)
  store i64 0, i64* %6, align 8
  br label %21

21:                                               ; preds = %78, %2
  %22 = load i64, i64* %6, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ult i64 %22, %27
  br i1 %28, label %29, label %81

29:                                               ; preds = %21
  %30 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %31 = load i64, i64* %6, align 8
  %32 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %33 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = load i64, i64* %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i32, i8*, i64, ...) @DP(i32 %30, i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %31, i32 %40)
  %42 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %43 = load i64, i64* %6, align 8
  %44 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %45 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, i64, ...) @DP(i32 %42, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0), i64 %43, i32 %52)
  %54 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %55 = load i64, i64* %6, align 8
  %56 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %57 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 (i32, i8*, i64, ...) @DP(i32 %54, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.4, i64 0, i64 0), i64 %55, i32 %64)
  %66 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %67 = load i64, i64* %6, align 8
  %68 = load %struct.bnx2x*, %struct.bnx2x** %3, align 8
  %69 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 (i32, i8*, i64, ...) @DP(i32 %66, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.5, i64 0, i64 0), i64 %67, i32 %76)
  br label %78

78:                                               ; preds = %29
  %79 = load i64, i64* %6, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %6, align 8
  br label %21

81:                                               ; preds = %21
  store i64 0, i64* %5, align 8
  br label %82

82:                                               ; preds = %107, %81
  %83 = load i64, i64* %5, align 8
  %84 = load i64, i64* @LLFC_DRIVER_TRAFFIC_TYPE_MAX, align 8
  %85 = icmp ult i64 %83, %84
  br i1 %85, label %86, label %110

86:                                               ; preds = %82
  %87 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %88 = load i64, i64* %5, align 8
  %89 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %90 = getelementptr inbounds %struct.bnx2x_func_tx_start_params, %struct.bnx2x_func_tx_start_params* %89, i32 0, i32 0
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = load i64, i64* %5, align 8
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 (i32, i8*, i64, ...) @DP(i32 %87, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.6, i64 0, i64 0), i64 %88, i32 %95)
  %97 = load i32, i32* @BNX2X_MSG_DCB, align 4
  %98 = load i64, i64* %5, align 8
  %99 = load %struct.bnx2x_func_tx_start_params*, %struct.bnx2x_func_tx_start_params** %4, align 8
  %100 = getelementptr inbounds %struct.bnx2x_func_tx_start_params, %struct.bnx2x_func_tx_start_params* %99, i32 0, i32 0
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = load i64, i64* %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 (i32, i8*, i64, ...) @DP(i32 %97, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.7, i64 0, i64 0), i64 %98, i32 %105)
  br label %107

107:                                              ; preds = %86
  %108 = load i64, i64* %5, align 8
  %109 = add i64 %108, 1
  store i64 %109, i64* %5, align 8
  br label %82

110:                                              ; preds = %82
  ret void
}

declare dso_local i32 @DP(i32, i8*, i64, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
