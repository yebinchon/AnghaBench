; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_11n_delete_ba_stream.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_11n_delete_ba_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.host_cmd_ds_11n_delba = type { i32, i32 }

@DELBA_TID_POS = common dso_local global i32 0, align 4
@TYPE_DELBA_RECEIVE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_11n_delete_ba_stream(%struct.mwifiex_private* %0, i32* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.host_cmd_ds_11n_delba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.host_cmd_ds_11n_delba*
  store %struct.host_cmd_ds_11n_delba* %9, %struct.host_cmd_ds_11n_delba** %5, align 8
  %10 = load %struct.host_cmd_ds_11n_delba*, %struct.host_cmd_ds_11n_delba** %5, align 8
  %11 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le16_to_cpu(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DELBA_TID_POS, align 4
  %16 = ashr i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.host_cmd_ds_11n_delba*, %struct.host_cmd_ds_11n_delba** %5, align 8
  %20 = getelementptr inbounds %struct.host_cmd_ds_11n_delba, %struct.host_cmd_ds_11n_delba* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @TYPE_DELBA_RECEIVE, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @INITIATOR_BIT(i32 %23)
  %25 = call i32 @mwifiex_del_ba_tbl(%struct.mwifiex_private* %17, i32 %18, i32 %21, i32 %22, i32 %24)
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mwifiex_del_ba_tbl(%struct.mwifiex_private*, i32, i32, i32, i32) #1

declare dso_local i32 @INITIATOR_BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
