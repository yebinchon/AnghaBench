; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwl_set_tx_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwl_set_tx_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, i64, i64, i32, %struct.TYPE_2__*, i32, %struct.iwl_rxon_context* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_rxon_context = type { i32, i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@IWL_TX_POWER_CALIB_DISABLED = common dso_local global i32 0, align 4
@IWLAGN_TX_POWER_TARGET_POWER_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Requested user TXPOWER %d below lower limit %d.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [49 x i8] c"Requested user TXPOWER %d above upper limit %d.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Deferring tx power set\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, i64, i32)* @iwl_set_tx_power to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_set_tx_power(%struct.iwl_priv* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.iwl_rxon_context*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %12, i32 0, i32 6
  %14 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %13, align 8
  %15 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %16 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %14, i64 %15
  store %struct.iwl_rxon_context* %16, %struct.iwl_rxon_context** %11, align 8
  %17 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %18 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load i32, i32* @IWL_TX_POWER_CALIB_DISABLED, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %122

24:                                               ; preds = %3
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 5
  %27 = call i32 @lockdep_assert_held(i32* %26)
  %28 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %29 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %24
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %4, align 4
  br label %122

37:                                               ; preds = %33, %24
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @IWLAGN_TX_POWER_TARGET_POWER_MIN, align 8
  %40 = icmp slt i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %37
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %43 = load i64, i64* %6, align 8
  %44 = load i64, i64* @IWLAGN_TX_POWER_TARGET_POWER_MIN, align 8
  %45 = call i32 @IWL_WARN(%struct.iwl_priv* %42, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %43, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %122

48:                                               ; preds = %37
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %51 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %50, i32 0, i32 4
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @DIV_ROUND_UP(i64 %54, i32 2)
  %56 = icmp sgt i64 %49, %55
  br i1 %56, label %57, label %68

57:                                               ; preds = %48
  %58 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %61 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %60, i32 0, i32 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @IWL_WARN(%struct.iwl_priv* %58, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0), i64 %59, i64 %64)
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %122

68:                                               ; preds = %48
  %69 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %70 = call i32 @iwl_is_ready_rf(%struct.iwl_priv* %69)
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %75, label %72

72:                                               ; preds = %68
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %122

75:                                               ; preds = %68
  %76 = load i64, i64* %6, align 8
  %77 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %78 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* @STATUS_SCANNING, align 4
  %80 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %81 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %80, i32 0, i32 3
  %82 = call i64 @test_bit(i32 %79, i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %91, label %84

84:                                               ; preds = %75
  %85 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %86 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %85, i32 0, i32 1
  %87 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %11, align 8
  %88 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %87, i32 0, i32 0
  %89 = call i64 @memcmp(i32* %86, i32* %88, i32 4)
  %90 = icmp ne i64 %89, 0
  br label %91

91:                                               ; preds = %84, %75
  %92 = phi i1 [ true, %75 ], [ %90, %84 ]
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %10, align 4
  %94 = load i32, i32* %10, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %102, label %99

99:                                               ; preds = %96
  %100 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %101 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %100, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %122

102:                                              ; preds = %96, %91
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %104 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  store i64 %105, i64* %9, align 8
  %106 = load i64, i64* %6, align 8
  %107 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %108 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %107, i32 0, i32 1
  store i64 %106, i64* %108, align 8
  %109 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %110 = call i32 @iwlagn_send_tx_power(%struct.iwl_priv* %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* %8, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %120

113:                                              ; preds = %102
  %114 = load i64, i64* %9, align 8
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %116 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %115, i32 0, i32 1
  store i64 %114, i64* %116, align 8
  %117 = load i64, i64* %9, align 8
  %118 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %119 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %118, i32 0, i32 2
  store i64 %117, i64* %119, align 8
  br label %120

120:                                              ; preds = %113, %102
  %121 = load i32, i32* %8, align 4
  store i32 %121, i32* %4, align 4
  br label %122

122:                                              ; preds = %120, %99, %72, %57, %41, %36, %23
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*, i64, i64) #1

declare dso_local i64 @DIV_ROUND_UP(i64, i32) #1

declare dso_local i32 @iwl_is_ready_rf(%struct.iwl_priv*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwlagn_send_tx_power(%struct.iwl_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
