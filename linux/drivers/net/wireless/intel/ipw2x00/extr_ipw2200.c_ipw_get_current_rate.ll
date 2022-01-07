; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_get_current_rate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_get_current_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { i32, i64 }

@STATUS_ASSOCIATED = common dso_local global i32 0, align 4
@IPW_REAL_RATE_RX_PACKET_THRESHOLD = common dso_local global i64 0, align 8
@IPW_ORD_STAT_TX_CURR_RATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"failed querying ordinals.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw_priv*)* @ipw_get_current_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw_get_current_rate(%struct.ipw_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipw_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ipw_priv* %0, %struct.ipw_priv** %3, align 8
  store i32 4, i32* %5, align 4
  %7 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %8 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @STATUS_ASSOCIATED, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %16 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @IPW_REAL_RATE_RX_PACKET_THRESHOLD, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %22 = load i32, i32* @IPW_ORD_STAT_TX_CURR_RATE, align 4
  %23 = call i32 @ipw_get_ordinal(%struct.ipw_priv* %21, i32 %22, i32* %4, i32* %5)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %20
  %27 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

28:                                               ; preds = %20
  br label %32

29:                                               ; preds = %14
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %3, align 8
  %31 = call i32 @ipw_get_max_rate(%struct.ipw_priv* %30)
  store i32 %31, i32* %2, align 4
  br label %47

32:                                               ; preds = %28
  %33 = load i32, i32* %4, align 4
  switch i32 %33, label %46 [
    i32 136, label %34
    i32 134, label %35
    i32 130, label %36
    i32 129, label %37
    i32 128, label %38
    i32 139, label %39
    i32 138, label %40
    i32 137, label %41
    i32 135, label %42
    i32 133, label %43
    i32 132, label %44
    i32 131, label %45
  ]

34:                                               ; preds = %32
  store i32 1000000, i32* %2, align 4
  br label %47

35:                                               ; preds = %32
  store i32 2000000, i32* %2, align 4
  br label %47

36:                                               ; preds = %32
  store i32 5500000, i32* %2, align 4
  br label %47

37:                                               ; preds = %32
  store i32 6000000, i32* %2, align 4
  br label %47

38:                                               ; preds = %32
  store i32 9000000, i32* %2, align 4
  br label %47

39:                                               ; preds = %32
  store i32 11000000, i32* %2, align 4
  br label %47

40:                                               ; preds = %32
  store i32 12000000, i32* %2, align 4
  br label %47

41:                                               ; preds = %32
  store i32 18000000, i32* %2, align 4
  br label %47

42:                                               ; preds = %32
  store i32 24000000, i32* %2, align 4
  br label %47

43:                                               ; preds = %32
  store i32 36000000, i32* %2, align 4
  br label %47

44:                                               ; preds = %32
  store i32 48000000, i32* %2, align 4
  br label %47

45:                                               ; preds = %32
  store i32 54000000, i32* %2, align 4
  br label %47

46:                                               ; preds = %32
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %46, %45, %44, %43, %42, %41, %40, %39, %38, %37, %36, %35, %34, %29, %26, %13
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @ipw_get_ordinal(%struct.ipw_priv*, i32, i32*, i32*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @ipw_get_max_rate(%struct.ipw_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
