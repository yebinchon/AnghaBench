; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_tdls_oper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_cfg80211.c_mwifiex_cfg80211_tdls_oper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.mwifiex_private = type { i64, i32, i64 }

@WIPHY_FLAG_SUPPORTS_TDLS = common dso_local global i32 0, align 4
@WIPHY_FLAG_TDLS_EXTERNAL_SETUP = common dso_local global i32 0, align 4
@ENOTSUPP = common dso_local global i32 0, align 4
@MWIFIEX_BSS_TYPE_STA = common dso_local global i64 0, align 8
@MSG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TDLS peer=%pM, oper=%d\0A\00", align 1
@MWIFIEX_TDLS_ENABLE_LINK = common dso_local global i32 0, align 4
@MWIFIEX_TDLS_DISABLE_LINK = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"tdls_oper: teardown from driver not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"tdls_oper: setup from driver not supported\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"tdls_oper: discovery from driver not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"tdls_oper: operation not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32)* @mwifiex_cfg80211_tdls_oper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_cfg80211_tdls_oper(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wiphy*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.mwifiex_private*, align 8
  store %struct.wiphy* %0, %struct.wiphy** %6, align 8
  store %struct.net_device* %1, %struct.net_device** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %7, align 8
  %12 = call %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device* %11)
  store %struct.mwifiex_private* %12, %struct.mwifiex_private** %10, align 8
  %13 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %14 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @WIPHY_FLAG_SUPPORTS_TDLS, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %4
  %20 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %21 = getelementptr inbounds %struct.wiphy, %struct.wiphy* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WIPHY_FLAG_TDLS_EXTERNAL_SETUP, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %19, %4
  %27 = load i32, i32* @ENOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %5, align 4
  br label %93

29:                                               ; preds = %19
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %31 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MWIFIEX_BSS_TYPE_STA, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %35, %29
  %41 = load i32, i32* @ENOTSUPP, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %5, align 4
  br label %93

43:                                               ; preds = %35
  %44 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %45 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @MSG, align 4
  %48 = load i32*, i32** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %46, i32 %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* %48, i32 %49)
  %51 = load i32, i32* %9, align 4
  switch i32 %51, label %80 [
    i32 130, label %52
    i32 132, label %54
    i32 128, label %56
    i32 129, label %64
    i32 131, label %72
  ]

52:                                               ; preds = %43
  %53 = load i32, i32* @MWIFIEX_TDLS_ENABLE_LINK, align 4
  store i32 %53, i32* %9, align 4
  br label %88

54:                                               ; preds = %43
  %55 = load i32, i32* @MWIFIEX_TDLS_DISABLE_LINK, align 4
  store i32 %55, i32* %9, align 4
  br label %88

56:                                               ; preds = %43
  %57 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %58 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ERROR, align 4
  %61 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %59, i32 %60, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %93

64:                                               ; preds = %43
  %65 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %66 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ERROR, align 4
  %69 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %67, i32 %68, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %93

72:                                               ; preds = %43
  %73 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %74 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @ERROR, align 4
  %77 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %75, i32 %76, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %5, align 4
  br label %93

80:                                               ; preds = %43
  %81 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %82 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* @ERROR, align 4
  %85 = call i32 (i32, i32, i8*, ...) @mwifiex_dbg(i32 %83, i32 %84, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %86 = load i32, i32* @ENOTSUPP, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %5, align 4
  br label %93

88:                                               ; preds = %54, %52
  %89 = load %struct.mwifiex_private*, %struct.mwifiex_private** %10, align 8
  %90 = load i32*, i32** %8, align 8
  %91 = load i32, i32* %9, align 4
  %92 = call i32 @mwifiex_tdls_oper(%struct.mwifiex_private* %89, i32* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  br label %93

93:                                               ; preds = %88, %80, %72, %64, %56, %40, %26
  %94 = load i32, i32* %5, align 4
  ret i32 %94
}

declare dso_local %struct.mwifiex_private* @mwifiex_netdev_get_priv(%struct.net_device*) #1

declare dso_local i32 @mwifiex_dbg(i32, i32, i8*, ...) #1

declare dso_local i32 @mwifiex_tdls_oper(%struct.mwifiex_private*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
