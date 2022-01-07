; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_clean_auto_tdls.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_tdls.c_mwifiex_clean_auto_tdls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@MWIFIEX_BSS_TYPE_STA = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_clean_auto_tdls(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %3 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %4 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %3, i32 0, i32 3
  %5 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 8
  %8 = call i64 @ISSUPP_TDLS_ENABLED(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %31

10:                                               ; preds = %1
  %11 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %12 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %31

17:                                               ; preds = %10
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %31

23:                                               ; preds = %17
  %24 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %25 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %24, i32 0, i32 1
  store i32 0, i32* %25, align 8
  %26 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %27 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %26, i32 0, i32 2
  %28 = call i32 @del_timer(i32* %27)
  %29 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %30 = call i32 @mwifiex_flush_auto_tdls_list(%struct.mwifiex_private* %29)
  br label %31

31:                                               ; preds = %23, %17, %10, %1
  ret void
}

declare dso_local i64 @ISSUPP_TDLS_ENABLED(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @mwifiex_flush_auto_tdls_list(%struct.mwifiex_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
