; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_is_tdls_chan_switching.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_is_tdls_chan_switching.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mwifiex_sta_node = type { i32 }

@TDLS_CHAN_SWITCHING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_is_tdls_chan_switching(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  %4 = alloca %struct.mwifiex_sta_node*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %5 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %6 = icmp ne %struct.mwifiex_private* %5, null
  br i1 %6, label %7, label %15

7:                                                ; preds = %1
  %8 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %9 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ISSUPP_TDLS_ENABLED(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %24

16:                                               ; preds = %7
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %18 = load i32, i32* @TDLS_CHAN_SWITCHING, align 4
  %19 = call %struct.mwifiex_sta_node* @mwifiex_get_tdls_sta_entry(%struct.mwifiex_private* %17, i32 %18)
  store %struct.mwifiex_sta_node* %19, %struct.mwifiex_sta_node** %4, align 8
  %20 = load %struct.mwifiex_sta_node*, %struct.mwifiex_sta_node** %4, align 8
  %21 = icmp ne %struct.mwifiex_sta_node* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 1, i32* %2, align 4
  br label %24

23:                                               ; preds = %16
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @ISSUPP_TDLS_ENABLED(i32) #1

declare dso_local %struct.mwifiex_sta_node* @mwifiex_get_tdls_sta_entry(%struct.mwifiex_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
