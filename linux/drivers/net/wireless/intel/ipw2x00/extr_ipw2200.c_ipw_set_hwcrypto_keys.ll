; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_set_hwcrypto_keys.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2200.c_ipw_set_hwcrypto_keys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_priv = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32, i32, i32 }

@SEC_ACTIVE_KEY = common dso_local global i32 0, align 4
@DCT_FLAG_EXT_SECURITY_CCM = common dso_local global i32 0, align 4
@DCW_WEP_KEY_SEC_TYPE_CCM = common dso_local global i32 0, align 4
@DCT_FLAG_EXT_SECURITY_TKIP = common dso_local global i32 0, align 4
@DCW_WEP_KEY_SEC_TYPE_WEP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipw_priv*)* @ipw_set_hwcrypto_keys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipw_set_hwcrypto_keys(%struct.ipw_priv* %0) #0 {
  %2 = alloca %struct.ipw_priv*, align 8
  store %struct.ipw_priv* %0, %struct.ipw_priv** %2, align 8
  %3 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %4 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %83 [
    i32 128, label %9
    i32 129, label %41
    i32 130, label %62
    i32 131, label %82
  ]

9:                                                ; preds = %1
  %10 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %11 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %9
  %20 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %21 = load i32, i32* @DCT_FLAG_EXT_SECURITY_CCM, align 4
  %22 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %23 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ipw_send_tgi_tx_key(%struct.ipw_priv* %20, i32 %21, i32 %27)
  br label %29

29:                                               ; preds = %19, %9
  %30 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %31 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %30, i32 0, i32 0
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %29
  %37 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %38 = load i32, i32* @DCW_WEP_KEY_SEC_TYPE_CCM, align 4
  %39 = call i32 @ipw_send_wep_keys(%struct.ipw_priv* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %29
  br label %84

41:                                               ; preds = %1
  %42 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %43 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SEC_ACTIVE_KEY, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %41
  %52 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %53 = load i32, i32* @DCT_FLAG_EXT_SECURITY_TKIP, align 4
  %54 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %55 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ipw_send_tgi_tx_key(%struct.ipw_priv* %52, i32 %53, i32 %59)
  br label %61

61:                                               ; preds = %51, %41
  br label %84

62:                                               ; preds = %1
  %63 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %64 = load i32, i32* @DCW_WEP_KEY_SEC_TYPE_WEP, align 4
  %65 = call i32 @ipw_send_wep_keys(%struct.ipw_priv* %63, i32 %64)
  %66 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %67 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %68 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %67, i32 0, i32 0
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @ipw_set_hw_decrypt_unicast(%struct.ipw_priv* %66, i32 %72)
  %74 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %75 = load %struct.ipw_priv*, %struct.ipw_priv** %2, align 8
  %76 = getelementptr inbounds %struct.ipw_priv, %struct.ipw_priv* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ipw_set_hw_decrypt_multicast(%struct.ipw_priv* %74, i32 %80)
  br label %84

82:                                               ; preds = %1
  br label %83

83:                                               ; preds = %1, %82
  br label %84

84:                                               ; preds = %83, %62, %61, %40
  ret void
}

declare dso_local i32 @ipw_send_tgi_tx_key(%struct.ipw_priv*, i32, i32) #1

declare dso_local i32 @ipw_send_wep_keys(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_set_hw_decrypt_unicast(%struct.ipw_priv*, i32) #1

declare dso_local i32 @ipw_set_hw_decrypt_multicast(%struct.ipw_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
