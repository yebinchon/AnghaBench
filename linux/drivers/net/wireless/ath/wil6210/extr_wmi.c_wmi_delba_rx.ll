; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_delba_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_wmi.c_wmi_delba_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.wmi_rcp_delba_cmd = type { i32, i64, i64, i32 }

@WIL6210_RX_DESC_MAX_CID = common dso_local global i64 0, align 8
@CIDXTID_EXTENDED_CID_TID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"delba_rx: (CID %d TID %d reason %d)\0A\00", align 1
@WMI_RCP_DELBA_CMDID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wmi_delba_rx(%struct.wil6210_priv* %0, i64 %1, i64 %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.wmi_rcp_delba_cmd, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %12 = bitcast %struct.wmi_rcp_delba_cmd* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 32, i1 false)
  %13 = getelementptr inbounds %struct.wmi_rcp_delba_cmd, %struct.wmi_rcp_delba_cmd* %11, i32 0, i32 3
  %14 = load i32, i32* %10, align 4
  %15 = call i32 @cpu_to_le16(i32 %14)
  store i32 %15, i32* %13, align 8
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @WIL6210_RX_DESC_MAX_CID, align 8
  %18 = icmp sge i64 %16, %17
  br i1 %18, label %19, label %26

19:                                               ; preds = %5
  %20 = load i32, i32* @CIDXTID_EXTENDED_CID_TID, align 4
  %21 = getelementptr inbounds %struct.wmi_rcp_delba_cmd, %struct.wmi_rcp_delba_cmd* %11, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds %struct.wmi_rcp_delba_cmd, %struct.wmi_rcp_delba_cmd* %11, i32 0, i32 2
  store i64 %22, i64* %23, align 8
  %24 = load i64, i64* %9, align 8
  %25 = getelementptr inbounds %struct.wmi_rcp_delba_cmd, %struct.wmi_rcp_delba_cmd* %11, i32 0, i32 1
  store i64 %24, i64* %25, align 8
  br label %31

26:                                               ; preds = %5
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @mk_cidxtid(i64 %27, i64 %28)
  %30 = getelementptr inbounds %struct.wmi_rcp_delba_cmd, %struct.wmi_rcp_delba_cmd* %11, i32 0, i32 0
  store i32 %29, i32* %30, align 8
  br label %31

31:                                               ; preds = %26, %19
  %32 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = call i32 @wil_dbg_wmi(%struct.wil6210_priv* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34, i32 %35)
  %37 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %38 = load i32, i32* @WMI_RCP_DELBA_CMDID, align 4
  %39 = load i64, i64* %7, align 8
  %40 = call i32 @wmi_send(%struct.wil6210_priv* %37, i32 %38, i64 %39, %struct.wmi_rcp_delba_cmd* %11, i32 32)
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @mk_cidxtid(i64, i64) #2

declare dso_local i32 @wil_dbg_wmi(%struct.wil6210_priv*, i8*, i64, i64, i32) #2

declare dso_local i32 @wmi_send(%struct.wil6210_priv*, i32, i64, %struct.wmi_rcp_delba_cmd*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
