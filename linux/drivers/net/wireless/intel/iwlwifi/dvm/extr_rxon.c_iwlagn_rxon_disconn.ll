; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_rxon_disconn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/dvm/extr_rxon.c_iwlagn_rxon_disconn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_rxon_context = type { i64, i32, i64, i32 }
%struct.iwl_rxon_cmd = type { i32 }

@IWL_RXON_CTX_BSS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"Failed to send timing (%d)!\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to restore WEP keys (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_rxon_context*)* @iwlagn_rxon_disconn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwlagn_rxon_disconn(%struct.iwl_priv* %0, %struct.iwl_rxon_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_rxon_context*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_rxon_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_rxon_context* %1, %struct.iwl_rxon_context** %5, align 8
  %8 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %9 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %8, i32 0, i32 3
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.iwl_rxon_cmd*
  store %struct.iwl_rxon_cmd* %11, %struct.iwl_rxon_cmd** %7, align 8
  %12 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @IWL_RXON_CTX_BSS, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %19 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %20 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %20, i32 0, i32 1
  %22 = call i32 @iwlagn_disable_bss(%struct.iwl_priv* %18, %struct.iwl_rxon_context* %19, i32* %21)
  store i32 %22, i32* %6, align 4
  br label %56

23:                                               ; preds = %2
  %24 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %25 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %26 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %27 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %26, i32 0, i32 1
  %28 = call i32 @iwlagn_disable_pan(%struct.iwl_priv* %24, %struct.iwl_rxon_context* %25, i32* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %23
  %32 = load i32, i32* %6, align 4
  store i32 %32, i32* %3, align 4
  br label %86

33:                                               ; preds = %23
  %34 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %35 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %55

38:                                               ; preds = %33
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %40 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %41 = call i32 @iwl_send_rxon_timing(%struct.iwl_priv* %39, %struct.iwl_rxon_context* %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @IWL_ERR(%struct.iwl_priv* %45, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* %3, align 4
  br label %86

49:                                               ; preds = %38
  %50 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %51 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %52 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %52, i32 0, i32 1
  %54 = call i32 @iwlagn_disconn_pan(%struct.iwl_priv* %50, %struct.iwl_rxon_context* %51, i32* %53)
  store i32 %54, i32* %6, align 4
  br label %55

55:                                               ; preds = %49, %33
  br label %56

56:                                               ; preds = %55, %17
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %3, align 4
  br label %86

61:                                               ; preds = %56
  %62 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %63 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %64 = call i32 @iwl_clear_ucode_stations(%struct.iwl_priv* %62, %struct.iwl_rxon_context* %63)
  %65 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %66 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %67 = call i32 @iwl_update_bcast_station(%struct.iwl_priv* %65, %struct.iwl_rxon_context* %66)
  %68 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %69 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %70 = call i32 @iwl_restore_stations(%struct.iwl_priv* %68, %struct.iwl_rxon_context* %69)
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %72 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %73 = call i32 @iwl_restore_default_wep_keys(%struct.iwl_priv* %71, %struct.iwl_rxon_context* %72)
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %61
  %77 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @IWL_ERR(%struct.iwl_priv* %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  %80 = load i32, i32* %6, align 4
  store i32 %80, i32* %3, align 4
  br label %86

81:                                               ; preds = %61
  %82 = load %struct.iwl_rxon_cmd*, %struct.iwl_rxon_cmd** %7, align 8
  %83 = load %struct.iwl_rxon_context*, %struct.iwl_rxon_context** %5, align 8
  %84 = getelementptr inbounds %struct.iwl_rxon_context, %struct.iwl_rxon_context* %83, i32 0, i32 1
  %85 = call i32 @memcpy(%struct.iwl_rxon_cmd* %82, i32* %84, i32 4)
  store i32 0, i32* %3, align 4
  br label %86

86:                                               ; preds = %81, %76, %59, %44, %31
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i32 @iwlagn_disable_bss(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32*) #1

declare dso_local i32 @iwlagn_disable_pan(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32*) #1

declare dso_local i32 @iwl_send_rxon_timing(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwlagn_disconn_pan(%struct.iwl_priv*, %struct.iwl_rxon_context*, i32*) #1

declare dso_local i32 @iwl_clear_ucode_stations(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwl_update_bcast_station(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwl_restore_stations(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @iwl_restore_default_wep_keys(%struct.iwl_priv*, %struct.iwl_rxon_context*) #1

declare dso_local i32 @memcpy(%struct.iwl_rxon_cmd*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
