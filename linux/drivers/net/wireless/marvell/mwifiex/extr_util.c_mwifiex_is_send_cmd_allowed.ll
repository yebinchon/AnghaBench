; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_is_send_cmd_allowed.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_is_send_cmd_allowed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_is_send_cmd_allowed(%struct.mwifiex_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %3, align 8
  %4 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %5 = icmp ne %struct.mwifiex_private* %4, null
  br i1 %5, label %6, label %14

6:                                                ; preds = %1
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @ISSUPP_TDLS_ENABLED(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %6, %1
  store i32 1, i32* %2, align 4
  br label %25

15:                                               ; preds = %6
  %16 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %17 = call i64 @mwifiex_is_tdls_chan_switching(%struct.mwifiex_private* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %3, align 8
  %21 = call i64 @mwifiex_is_tdls_off_chan(%struct.mwifiex_private* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15
  store i32 0, i32* %2, align 4
  br label %25

24:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23, %14
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ISSUPP_TDLS_ENABLED(i32) #1

declare dso_local i64 @mwifiex_is_tdls_chan_switching(%struct.mwifiex_private*) #1

declare dso_local i64 @mwifiex_is_tdls_off_chan(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
