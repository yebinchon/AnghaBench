; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt.c_bnxt_hwrm_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32* }
%struct.tx_cmp = type { i32 }
%struct.hwrm_cmpl = type { i32 }
%struct.hwrm_fwd_req_cmpl = type { i32 }
%struct.hwrm_async_event_cmpl = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"Invalid hwrm seq id %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Msg contains invalid VF id %x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@BNXT_HWRM_EXEC_FWD_REQ_SP_EVENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.tx_cmp*)* @bnxt_hwrm_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_hwrm_handler(%struct.bnxt* %0, %struct.tx_cmp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.tx_cmp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.hwrm_cmpl*, align 8
  %10 = alloca %struct.hwrm_fwd_req_cmpl*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.tx_cmp* %1, %struct.tx_cmp** %5, align 8
  %11 = load %struct.tx_cmp*, %struct.tx_cmp** %5, align 8
  %12 = call i32 @TX_CMP_TYPE(%struct.tx_cmp* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.tx_cmp*, %struct.tx_cmp** %5, align 8
  %14 = bitcast %struct.tx_cmp* %13 to %struct.hwrm_cmpl*
  store %struct.hwrm_cmpl* %14, %struct.hwrm_cmpl** %9, align 8
  %15 = load %struct.tx_cmp*, %struct.tx_cmp** %5, align 8
  %16 = bitcast %struct.tx_cmp* %15 to %struct.hwrm_fwd_req_cmpl*
  store %struct.hwrm_fwd_req_cmpl* %16, %struct.hwrm_fwd_req_cmpl** %10, align 8
  %17 = load i32, i32* %6, align 4
  switch i32 %17, label %96 [
    i32 129, label %18
    i32 128, label %42
    i32 130, label %91
  ]

18:                                               ; preds = %2
  %19 = load %struct.hwrm_cmpl*, %struct.hwrm_cmpl** %9, align 8
  %20 = getelementptr inbounds %struct.hwrm_cmpl, %struct.hwrm_cmpl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %25 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp eq i32 %23, %26
  br i1 %27, label %28, label %35

28:                                               ; preds = %18
  %29 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %30 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = xor i32 %31, -1
  %33 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %34 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  br label %41

35:                                               ; preds = %18
  %36 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %37 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @netdev_err(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %39)
  br label %41

41:                                               ; preds = %35, %28
  br label %97

42:                                               ; preds = %2
  %43 = load %struct.hwrm_fwd_req_cmpl*, %struct.hwrm_fwd_req_cmpl** %10, align 8
  %44 = getelementptr inbounds %struct.hwrm_fwd_req_cmpl, %struct.hwrm_fwd_req_cmpl* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @le16_to_cpu(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %49 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %47, %51
  br i1 %52, label %65, label %53

53:                                               ; preds = %42
  %54 = load i32, i32* %7, align 4
  %55 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %56 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %60 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %58, %62
  %64 = icmp sge i32 %54, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %53, %42
  %66 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @netdev_err(i32 %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  %71 = load i32, i32* @EINVAL, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %98

73:                                               ; preds = %53
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %76 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = sub nsw i32 %74, %78
  %80 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %81 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %80, i32 0, i32 2
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = call i32 @set_bit(i32 %79, i32* %83)
  %85 = load i32, i32* @BNXT_HWRM_EXEC_FWD_REQ_SP_EVENT, align 4
  %86 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %87 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %86, i32 0, i32 1
  %88 = call i32 @set_bit(i32 %85, i32* %87)
  %89 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %90 = call i32 @bnxt_queue_sp_work(%struct.bnxt* %89)
  br label %97

91:                                               ; preds = %2
  %92 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %93 = load %struct.tx_cmp*, %struct.tx_cmp** %5, align 8
  %94 = bitcast %struct.tx_cmp* %93 to %struct.hwrm_async_event_cmpl*
  %95 = call i32 @bnxt_async_event_process(%struct.bnxt* %92, %struct.hwrm_async_event_cmpl* %94)
  br label %96

96:                                               ; preds = %2, %91
  br label %97

97:                                               ; preds = %96, %73, %41
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %97, %65
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @TX_CMP_TYPE(%struct.tx_cmp*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @bnxt_queue_sp_work(%struct.bnxt*) #1

declare dso_local i32 @bnxt_async_event_process(%struct.bnxt*, %struct.hwrm_async_event_cmpl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
