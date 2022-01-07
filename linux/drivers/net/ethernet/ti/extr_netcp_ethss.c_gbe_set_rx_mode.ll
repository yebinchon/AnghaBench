; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ti/extr_netcp_ethss.c_gbe_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gbe_intf = type { %struct.gbe_priv* }
%struct.gbe_priv = type { i32, i32, i32, %struct.cpsw_ale* }
%struct.cpsw_ale = type { i32 }

@ETIMEDOUT = common dso_local global i32 0, align 4
@ALE_PORT_NOLEARN = common dso_local global i32 0, align 4
@ALE_PORT_NO_SA_UPDATE = common dso_local global i32 0, align 4
@ALE_P0_UNI_FLOOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"promiscuous mode disabled\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@ALE_AGEOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"promiscuous mode enabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @gbe_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gbe_set_rx_mode(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.gbe_intf*, align 8
  %7 = alloca %struct.gbe_priv*, align 8
  %8 = alloca %struct.cpsw_ale*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.gbe_intf*
  store %struct.gbe_intf* %13, %struct.gbe_intf** %6, align 8
  %14 = load %struct.gbe_intf*, %struct.gbe_intf** %6, align 8
  %15 = getelementptr inbounds %struct.gbe_intf, %struct.gbe_intf* %14, i32 0, i32 0
  %16 = load %struct.gbe_priv*, %struct.gbe_priv** %15, align 8
  store %struct.gbe_priv* %16, %struct.gbe_priv** %7, align 8
  %17 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %18 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %17, i32 0, i32 3
  %19 = load %struct.cpsw_ale*, %struct.cpsw_ale** %18, align 8
  store %struct.cpsw_ale* %19, %struct.cpsw_ale** %8, align 8
  %20 = load i32, i32* @ETIMEDOUT, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %11, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %47, %2
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %25 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp sle i32 %23, %26
  br i1 %27, label %28, label %50

28:                                               ; preds = %22
  %29 = load %struct.cpsw_ale*, %struct.cpsw_ale** %8, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* @ALE_PORT_NOLEARN, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %29, i32 %30, i32 %31, i32 %36)
  %38 = load %struct.cpsw_ale*, %struct.cpsw_ale** %8, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @ALE_PORT_NO_SA_UPDATE, align 4
  %41 = load i32, i32* %5, align 4
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = xor i1 %43, true
  %45 = zext i1 %44 to i32
  %46 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %38, i32 %39, i32 %40, i32 %45)
  br label %47

47:                                               ; preds = %28
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %22

50:                                               ; preds = %22
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %50
  %54 = load %struct.cpsw_ale*, %struct.cpsw_ale** %8, align 8
  %55 = load i32, i32* @ALE_P0_UNI_FLOOD, align 4
  %56 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %54, i32 0, i32 %55, i32 0)
  %57 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %58 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @dev_vdbg(i32 %59, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %109

61:                                               ; preds = %50
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* @HZ, align 8
  %64 = add i64 %62, %63
  store i64 %64, i64* %9, align 8
  %65 = load %struct.cpsw_ale*, %struct.cpsw_ale** %8, align 8
  %66 = load i32, i32* @ALE_AGEOUT, align 4
  %67 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %65, i32 0, i32 %66, i32 1)
  br label %68

68:                                               ; preds = %76, %61
  %69 = call i32 (...) @cpu_relax()
  %70 = load %struct.cpsw_ale*, %struct.cpsw_ale** %8, align 8
  %71 = load i32, i32* @ALE_AGEOUT, align 4
  %72 = call i64 @cpsw_ale_control_get(%struct.cpsw_ale* %70, i32 0, i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 0, i32* %11, align 4
  br label %81

75:                                               ; preds = %68
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* @jiffies, align 8
  %79 = call i64 @time_after(i64 %77, i64 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %68, label %81

81:                                               ; preds = %76, %74
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load %struct.cpsw_ale*, %struct.cpsw_ale** %8, align 8
  %86 = load i32, i32* @ALE_AGEOUT, align 4
  %87 = call i64 @cpsw_ale_control_get(%struct.cpsw_ale* %85, i32 0, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %91, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* %11, align 4
  store i32 %90, i32* %3, align 4
  br label %109

91:                                               ; preds = %84, %81
  %92 = load %struct.cpsw_ale*, %struct.cpsw_ale** %8, align 8
  %93 = load i32, i32* @ALE_AGEOUT, align 4
  %94 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %92, i32 0, i32 %93, i32 1)
  %95 = load %struct.cpsw_ale*, %struct.cpsw_ale** %8, align 8
  %96 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %97 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @GBE_PORT_MASK(i32 %98)
  %100 = call i32 @cpsw_ale_flush_multicast(%struct.cpsw_ale* %95, i32 %99, i32 -1)
  %101 = load %struct.cpsw_ale*, %struct.cpsw_ale** %8, align 8
  %102 = load i32, i32* @ALE_P0_UNI_FLOOD, align 4
  %103 = call i32 @cpsw_ale_control_set(%struct.cpsw_ale* %101, i32 0, i32 %102, i32 1)
  %104 = load %struct.gbe_priv*, %struct.gbe_priv** %7, align 8
  %105 = getelementptr inbounds %struct.gbe_priv, %struct.gbe_priv* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dev_vdbg(i32 %106, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %108 = load i32, i32* %11, align 4
  store i32 %108, i32* %3, align 4
  br label %109

109:                                              ; preds = %91, %89, %53
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local i32 @cpsw_ale_control_set(%struct.cpsw_ale*, i32, i32, i32) #1

declare dso_local i32 @dev_vdbg(i32, i8*) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i64 @cpsw_ale_control_get(%struct.cpsw_ale*, i32, i32) #1

declare dso_local i64 @time_after(i64, i64) #1

declare dso_local i32 @cpsw_ale_flush_multicast(%struct.cpsw_ale*, i32, i32) #1

declare dso_local i32 @GBE_PORT_MASK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
