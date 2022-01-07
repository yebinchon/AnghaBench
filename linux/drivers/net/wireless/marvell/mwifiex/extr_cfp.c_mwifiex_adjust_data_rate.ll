; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_adjust_data_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfp.c_mwifiex_adjust_data_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32 }

@MWIFIEX_RATE_INDEX_MCS0 = common dso_local global i32 0, align 4
@MWIFIEX_BW20_MCS_NUM = common dso_local global i32 0, align 4
@MWIFIEX_RATE_INDEX_OFDM0 = common dso_local global i32 0, align 4
@MWIFIEX_MAX_AC_RX_RATES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_adjust_data_rate(%struct.mwifiex_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %6, align 4
  %9 = call i32 @BIT(i32 0)
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %23

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @BIT(i32 1)
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %12
  %18 = load i32, i32* @MWIFIEX_RATE_INDEX_MCS0, align 4
  %19 = load i32, i32* @MWIFIEX_BW20_MCS_NUM, align 4
  %20 = add nsw i32 %18, %19
  %21 = load i32, i32* %5, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %7, align 4
  br label %44

23:                                               ; preds = %12, %3
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @BIT(i32 0)
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load i32, i32* @MWIFIEX_RATE_INDEX_MCS0, align 4
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %29, %30
  store i32 %31, i32* %7, align 4
  br label %43

32:                                               ; preds = %23
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MWIFIEX_RATE_INDEX_OFDM0, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load i32, i32* %5, align 4
  %38 = sub nsw i32 %37, 1
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i32 [ %38, %36 ], [ %40, %39 ]
  store i32 %42, i32* %7, align 4
  br label %43

43:                                               ; preds = %41, %28
  br label %44

44:                                               ; preds = %43, %17
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @MWIFIEX_MAX_AC_RX_RATES, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load i32, i32* @MWIFIEX_MAX_AC_RX_RATES, align 4
  %50 = sub nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %48, %44
  %52 = load i32, i32* %7, align 4
  ret i32 %52
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
