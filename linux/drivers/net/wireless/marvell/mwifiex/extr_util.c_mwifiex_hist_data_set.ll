; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_hist_data_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_hist_data_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_histogram_data* }
%struct.mwifiex_histogram_data = type { i32*, i32*, i32*, i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_hist_data_set(%struct.mwifiex_private* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.mwifiex_private*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mwifiex_histogram_data*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.mwifiex_private*, %struct.mwifiex_private** %5, align 8
  %13 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %12, i32 0, i32 0
  %14 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %13, align 8
  store %struct.mwifiex_histogram_data* %14, %struct.mwifiex_histogram_data** %9, align 8
  %15 = load i32, i32* %8, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %10, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %17, %18
  store i32 %19, i32* %11, align 4
  %20 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %9, align 8
  %21 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %20, i32 0, i32 4
  %22 = call i32 @atomic_inc(i32* %21)
  %23 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %9, align 8
  %24 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %23, i32 0, i32 3
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %6, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = call i32 @atomic_inc(i32* %27)
  %29 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %9, align 8
  %30 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = add nsw i32 %32, 128
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  %36 = call i32 @atomic_inc(i32* %35)
  %37 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %9, align 8
  %38 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 128
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = call i32 @atomic_inc(i32* %43)
  %45 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %9, align 8
  %46 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %48, 128
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = call i32 @atomic_inc(i32* %51)
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
