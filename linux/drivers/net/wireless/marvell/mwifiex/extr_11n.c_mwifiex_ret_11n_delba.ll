; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_ret_11n_delba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_ret_11n_delba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_command = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.host_cmd_ds_11n_delba }
%struct.host_cmd_ds_11n_delba = type { i64, i32, i32 }
%struct.mwifiex_tx_ba_stream_tbl = type { i32, i32 }

@DELBA_TID_POS = common dso_local global i32 0, align 4
@BA_RESULT_SUCCESS = common dso_local global i64 0, align 8
@TYPE_DELBA_SENT = common dso_local global i32 0, align 4
@BA_SETUP_INPROGRESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_ret_11n_delba(%struct.mwifiex_private* %0, %struct.host_cmd_ds_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.host_cmd_ds_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.mwifiex_tx_ba_stream_tbl*, align 8
  %8 = alloca %struct.host_cmd_ds_11n_delba*, align 8
  %9 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.host_cmd_ds_command* %1, %struct.host_cmd_ds_command** %5, align 8
  %10 = load %struct.host_cmd_ds_command*, %struct.host_cmd_ds_command** %5, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_command, %struct.host_cmd_ds_command* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store %struct.host_cmd_ds_11n_delba* %12, %struct.host_cmd_ds_11n_delba** %8, align 8
  %13 = load %struct.host_cmd_ds_11n_delba*, %struct.host_cmd_ds_11n_delba** %8, align 8
  %14 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le16_to_cpu(i32 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @DELBA_TID_POS, align 4
  %19 = ashr i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.host_cmd_ds_11n_delba*, %struct.host_cmd_ds_11n_delba** %8, align 8
  %21 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @BA_RESULT_SUCCESS, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %50

25:                                               ; preds = %2
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.host_cmd_ds_11n_delba*, %struct.host_cmd_ds_11n_delba** %8, align 8
  %29 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @TYPE_DELBA_SENT, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @INITIATOR_BIT(i32 %32)
  %34 = call i32 @mwifiex_del_ba_tbl(%struct.mwifiex_private* %26, i32 %27, i32 %30, i32 %31, i32 %33)
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %36 = load i32, i32* @BA_SETUP_INPROGRESS, align 4
  %37 = call %struct.mwifiex_tx_ba_stream_tbl* @mwifiex_get_ba_status(%struct.mwifiex_private* %35, i32 %36)
  store %struct.mwifiex_tx_ba_stream_tbl* %37, %struct.mwifiex_tx_ba_stream_tbl** %7, align 8
  %38 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %7, align 8
  %39 = icmp ne %struct.mwifiex_tx_ba_stream_tbl* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %25
  %41 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %42 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %7, align 8
  %43 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %7, align 8
  %46 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @mwifiex_send_addba(%struct.mwifiex_private* %41, i32 %44, i32 %47)
  br label %49

49:                                               ; preds = %40, %25
  br label %79

50:                                               ; preds = %2
  %51 = load i32, i32* %9, align 4
  %52 = call i32 @INITIATOR_BIT(i32 %51)
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  store i32 0, i32* %3, align 4
  br label %80

55:                                               ; preds = %50
  %56 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %57 = load %struct.host_cmd_ds_11n_delba*, %struct.host_cmd_ds_11n_delba** %8, align 8
  %58 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @BA_SETUP_INPROGRESS, align 4
  %62 = call i32 @mwifiex_create_ba_tbl(%struct.mwifiex_private* %56, i32 %59, i32 %60, i32 %61)
  %63 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %64 = load i32, i32* @BA_SETUP_INPROGRESS, align 4
  %65 = call %struct.mwifiex_tx_ba_stream_tbl* @mwifiex_get_ba_status(%struct.mwifiex_private* %63, i32 %64)
  store %struct.mwifiex_tx_ba_stream_tbl* %65, %struct.mwifiex_tx_ba_stream_tbl** %7, align 8
  %66 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %7, align 8
  %67 = icmp ne %struct.mwifiex_tx_ba_stream_tbl* %66, null
  br i1 %67, label %68, label %78

68:                                               ; preds = %55
  %69 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %70 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %7, align 8
  %71 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %7, align 8
  %74 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @TYPE_DELBA_SENT, align 4
  %77 = call i32 @mwifiex_del_ba_tbl(%struct.mwifiex_private* %69, i32 %72, i32 %75, i32 %76, i32 1)
  br label %78

78:                                               ; preds = %68, %55
  br label %79

79:                                               ; preds = %78, %49
  store i32 0, i32* %3, align 4
  br label %80

80:                                               ; preds = %79, %54
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_del_ba_tbl(%struct.mwifiex_private*, i32, i32, i32, i32) #1

declare dso_local i32 @INITIATOR_BIT(i32) #1

declare dso_local %struct.mwifiex_tx_ba_stream_tbl* @mwifiex_get_ba_status(%struct.mwifiex_private*, i32) #1

declare dso_local i32 @mwifiex_send_addba(%struct.mwifiex_private*, i32, i32) #1

declare dso_local i32 @mwifiex_create_ba_tbl(%struct.mwifiex_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
