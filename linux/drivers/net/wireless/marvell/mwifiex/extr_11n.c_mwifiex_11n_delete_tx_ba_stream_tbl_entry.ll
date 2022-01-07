; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_11n_delete_tx_ba_stream_tbl_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_11n.c_mwifiex_11n_delete_tx_ba_stream_tbl_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }
%struct.mwifiex_tx_ba_stream_tbl = type { i32 }

@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"info: tx_ba_tsr_tbl %p\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_11n_delete_tx_ba_stream_tbl_entry(%struct.mwifiex_private* %0, %struct.mwifiex_tx_ba_stream_tbl* %1) #0 {
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_tx_ba_stream_tbl*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  store %struct.mwifiex_tx_ba_stream_tbl* %1, %struct.mwifiex_tx_ba_stream_tbl** %4, align 8
  %5 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %4, align 8
  %6 = icmp ne %struct.mwifiex_tx_ba_stream_tbl* %5, null
  br i1 %6, label %13, label %7

7:                                                ; preds = %2
  %8 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %9 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %4, align 8
  %10 = call i64 @mwifiex_is_tx_ba_stream_ptr_valid(%struct.mwifiex_private* %8, %struct.mwifiex_tx_ba_stream_tbl* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %7
  br label %25

13:                                               ; preds = %7, %2
  %14 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %15 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @INFO, align 4
  %18 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %4, align 8
  %19 = call i32 @mwifiex_dbg(i32 %16, i32 %17, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.mwifiex_tx_ba_stream_tbl* %18)
  %20 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %4, align 8
  %21 = getelementptr inbounds %struct.mwifiex_tx_ba_stream_tbl, %struct.mwifiex_tx_ba_stream_tbl* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.mwifiex_tx_ba_stream_tbl*, %struct.mwifiex_tx_ba_stream_tbl** %4, align 8
  %24 = call i32 @kfree(%struct.mwifiex_tx_ba_stream_tbl* %23)
  br label %25

25:                                               ; preds = %13, %12
  ret void
}

declare dso_local i64 @mwifiex_is_tx_ba_stream_ptr_valid(%struct.mwifiex_private*, %struct.mwifiex_tx_ba_stream_tbl*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, %struct.mwifiex_tx_ba_stream_tbl*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.mwifiex_tx_ba_stream_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
