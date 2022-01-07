; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_hist_data_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_hist_data_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_histogram_data* }
%struct.mwifiex_histogram_data = type { i32 }

@MWIFIEX_HIST_MAX_SAMPLES = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_hist_data_add(%struct.mwifiex_private* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_histogram_data*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %11 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %10, i32 0, i32 0
  %12 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %11, align 8
  store %struct.mwifiex_histogram_data* %12, %struct.mwifiex_histogram_data** %9, align 8
  %13 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %9, align 8
  %14 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %13, i32 0, i32 0
  %15 = call i64 @atomic_read(i32* %14)
  %16 = load i64, i64* @MWIFIEX_HIST_MAX_SAMPLES, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %20 = call i32 @mwifiex_hist_data_reset(%struct.mwifiex_private* %19)
  br label %21

21:                                               ; preds = %18, %4
  %22 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @mwifiex_hist_data_set(%struct.mwifiex_private* %22, i32 %23, i32 %24, i32 %25)
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @mwifiex_hist_data_reset(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_hist_data_set(%struct.mwifiex_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
