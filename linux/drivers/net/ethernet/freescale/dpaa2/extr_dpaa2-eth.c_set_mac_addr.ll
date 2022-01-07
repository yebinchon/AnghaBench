; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_set_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/dpaa2/extr_dpaa2-eth.c_set_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dpaa2_eth_priv = type { i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.device* }
%struct.device = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"dpni_get_port_mac_addr() failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"dpni_get_primary_mac_addr() failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"dpni_set_primary_mac_addr() failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"device(s) have all-zero hwaddr, replaced with random\0A\00", align 1
@NET_ADDR_PERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dpaa2_eth_priv*)* @set_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_mac_addr(%struct.dpaa2_eth_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dpaa2_eth_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dpaa2_eth_priv* %0, %struct.dpaa2_eth_priv** %3, align 8
  %11 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %12 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %11, i32 0, i32 2
  %13 = load %struct.net_device*, %struct.net_device** %12, align 8
  store %struct.net_device* %13, %struct.net_device** %4, align 8
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load %struct.device*, %struct.device** %16, align 8
  store %struct.device* %17, %struct.device** %5, align 8
  %18 = load i32, i32* @ETH_ALEN, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %6, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %7, align 8
  %22 = load i32, i32* @ETH_ALEN, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %8, align 8
  %25 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %26 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %29 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @dpni_get_port_mac_addr(i32 %27, i32 0, i32 %30, i32* %21)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %1
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = call i32 @dev_err(%struct.device* %35, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %37 = load i32, i32* %9, align 4
  store i32 %37, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

38:                                               ; preds = %1
  %39 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %40 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %43 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @dpni_get_primary_mac_addr(i32 %41, i32 0, i32 %44, i32* %24)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %38
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @dev_err(%struct.device* %49, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

52:                                               ; preds = %38
  %53 = call i64 @is_zero_ether_addr(i32* %21)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %81, label %55

55:                                               ; preds = %52
  %56 = call i32 @ether_addr_equal(i32* %21, i32* %24)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %73, label %58

58:                                               ; preds = %55
  %59 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %60 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %63 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dpni_set_primary_mac_addr(i32 %61, i32 0, i32 %64, i32* %21)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %72

68:                                               ; preds = %58
  %69 = load %struct.device*, %struct.device** %5, align 8
  %70 = call i32 @dev_err(%struct.device* %69, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %71 = load i32, i32* %9, align 4
  store i32 %71, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

72:                                               ; preds = %58
  br label %73

73:                                               ; preds = %72, %55
  %74 = load %struct.net_device*, %struct.net_device** %4, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.net_device*, %struct.net_device** %4, align 8
  %78 = getelementptr inbounds %struct.net_device, %struct.net_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @memcpy(i32* %76, i32* %21, i32 %79)
  br label %118

81:                                               ; preds = %52
  %82 = call i64 @is_zero_ether_addr(i32* %24)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %109

84:                                               ; preds = %81
  %85 = load %struct.net_device*, %struct.net_device** %4, align 8
  %86 = call i32 @eth_hw_addr_random(%struct.net_device* %85)
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = call i32 @dev_dbg_once(%struct.device* %87, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %89 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %90 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.dpaa2_eth_priv*, %struct.dpaa2_eth_priv** %3, align 8
  %93 = getelementptr inbounds %struct.dpaa2_eth_priv, %struct.dpaa2_eth_priv* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.net_device*, %struct.net_device** %4, align 8
  %96 = getelementptr inbounds %struct.net_device, %struct.net_device* %95, i32 0, i32 1
  %97 = load i32*, i32** %96, align 8
  %98 = call i32 @dpni_set_primary_mac_addr(i32 %91, i32 0, i32 %94, i32* %97)
  store i32 %98, i32* %9, align 4
  %99 = load i32, i32* %9, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %105

101:                                              ; preds = %84
  %102 = load %struct.device*, %struct.device** %5, align 8
  %103 = call i32 @dev_err(%struct.device* %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %104 = load i32, i32* %9, align 4
  store i32 %104, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

105:                                              ; preds = %84
  %106 = load i32, i32* @NET_ADDR_PERM, align 4
  %107 = load %struct.net_device*, %struct.net_device** %4, align 8
  %108 = getelementptr inbounds %struct.net_device, %struct.net_device* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  br label %117

109:                                              ; preds = %81
  %110 = load %struct.net_device*, %struct.net_device** %4, align 8
  %111 = getelementptr inbounds %struct.net_device, %struct.net_device* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = load %struct.net_device*, %struct.net_device** %4, align 8
  %114 = getelementptr inbounds %struct.net_device, %struct.net_device* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i32 @memcpy(i32* %112, i32* %24, i32 %115)
  br label %117

117:                                              ; preds = %109, %105
  br label %118

118:                                              ; preds = %117, %73
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %119

119:                                              ; preds = %118, %101, %68, %48, %34
  %120 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dpni_get_port_mac_addr(i32, i32, i32, i32*) #2

declare dso_local i32 @dev_err(%struct.device*, i8*) #2

declare dso_local i32 @dpni_get_primary_mac_addr(i32, i32, i32, i32*) #2

declare dso_local i64 @is_zero_ether_addr(i32*) #2

declare dso_local i32 @ether_addr_equal(i32*, i32*) #2

declare dso_local i32 @dpni_set_primary_mac_addr(i32, i32, i32, i32*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @eth_hw_addr_random(%struct.net_device*) #2

declare dso_local i32 @dev_dbg_once(%struct.device*, i8*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
