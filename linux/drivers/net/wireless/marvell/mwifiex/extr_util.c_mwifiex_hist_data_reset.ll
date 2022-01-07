; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_hist_data_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_util.c_mwifiex_hist_data_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { %struct.mwifiex_histogram_data* }
%struct.mwifiex_histogram_data = type { i32*, i32*, i32*, i32*, i32 }

@MWIFIEX_MAX_AC_RX_RATES = common dso_local global i32 0, align 4
@MWIFIEX_MAX_SNR = common dso_local global i32 0, align 4
@MWIFIEX_MAX_NOISE_FLR = common dso_local global i32 0, align 4
@MWIFIEX_MAX_SIG_STRENGTH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mwifiex_hist_data_reset(%struct.mwifiex_private* %0) #0 {
  %2 = alloca %struct.mwifiex_private*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_histogram_data*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %2, align 8
  %5 = load %struct.mwifiex_private*, %struct.mwifiex_private** %2, align 8
  %6 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %5, i32 0, i32 0
  %7 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %6, align 8
  store %struct.mwifiex_histogram_data* %7, %struct.mwifiex_histogram_data** %4, align 8
  %8 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %4, align 8
  %9 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %8, i32 0, i32 4
  %10 = call i32 @atomic_set(i32* %9, i32 0)
  store i32 0, i32* %3, align 4
  br label %11

11:                                               ; preds = %23, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @MWIFIEX_MAX_AC_RX_RATES, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %26

15:                                               ; preds = %11
  %16 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %4, align 8
  %17 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %16, i32 0, i32 3
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call i32 @atomic_set(i32* %21, i32 0)
  br label %23

23:                                               ; preds = %15
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %11

26:                                               ; preds = %11
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %39, %26
  %28 = load i32, i32* %3, align 4
  %29 = load i32, i32* @MWIFIEX_MAX_SNR, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %27
  %32 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %4, align 8
  %33 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @atomic_set(i32* %37, i32 0)
  br label %39

39:                                               ; preds = %31
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %27

42:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %55, %42
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @MWIFIEX_MAX_NOISE_FLR, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %58

47:                                               ; preds = %43
  %48 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %4, align 8
  %49 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %3, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  %54 = call i32 @atomic_set(i32* %53, i32 0)
  br label %55

55:                                               ; preds = %47
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %43

58:                                               ; preds = %43
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %71, %58
  %60 = load i32, i32* %3, align 4
  %61 = load i32, i32* @MWIFIEX_MAX_SIG_STRENGTH, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %59
  %64 = load %struct.mwifiex_histogram_data*, %struct.mwifiex_histogram_data** %4, align 8
  %65 = getelementptr inbounds %struct.mwifiex_histogram_data, %struct.mwifiex_histogram_data* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %3, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @atomic_set(i32* %69, i32 0)
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %3, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %3, align 4
  br label %59

74:                                               ; preds = %59
  ret void
}

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
