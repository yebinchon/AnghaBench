; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_tasklet.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/p54/extr_p54pci.c_p54p_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.p54p_priv* }
%struct.p54p_priv = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.p54p_ring_control* }
%struct.p54p_ring_control = type { i32, i32, i32, i32 }

@dev_int = common dso_local global i32 0, align 4
@ISL38XX_DEV_INT_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @p54p_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @p54p_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.p54p_priv*, align 8
  %5 = alloca %struct.p54p_ring_control*, align 8
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.ieee80211_hw*
  store %struct.ieee80211_hw* %7, %struct.ieee80211_hw** %3, align 8
  %8 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %9 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %8, i32 0, i32 0
  %10 = load %struct.p54p_priv*, %struct.p54p_priv** %9, align 8
  store %struct.p54p_priv* %10, %struct.p54p_priv** %4, align 8
  %11 = load %struct.p54p_priv*, %struct.p54p_priv** %4, align 8
  %12 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %11, i32 0, i32 8
  %13 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %12, align 8
  store %struct.p54p_ring_control* %13, %struct.p54p_ring_control** %5, align 8
  %14 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %15 = load %struct.p54p_priv*, %struct.p54p_priv** %4, align 8
  %16 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %15, i32 0, i32 7
  %17 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %5, align 8
  %18 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %5, align 8
  %21 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ARRAY_SIZE(i32 %22)
  %24 = load %struct.p54p_priv*, %struct.p54p_priv** %4, align 8
  %25 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %24, i32 0, i32 6
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @p54p_check_tx_ring(%struct.ieee80211_hw* %14, i32* %16, i32 3, i32 %19, i32 %23, i32 %26)
  %28 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %29 = load %struct.p54p_priv*, %struct.p54p_priv** %4, align 8
  %30 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %29, i32 0, i32 5
  %31 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %5, align 8
  %32 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %5, align 8
  %35 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ARRAY_SIZE(i32 %36)
  %38 = load %struct.p54p_priv*, %struct.p54p_priv** %4, align 8
  %39 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @p54p_check_tx_ring(%struct.ieee80211_hw* %28, i32* %30, i32 1, i32 %33, i32 %37, i32 %40)
  %42 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %43 = load %struct.p54p_priv*, %struct.p54p_priv** %4, align 8
  %44 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %43, i32 0, i32 3
  %45 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %5, align 8
  %46 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %5, align 8
  %49 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ARRAY_SIZE(i32 %50)
  %52 = load %struct.p54p_priv*, %struct.p54p_priv** %4, align 8
  %53 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @p54p_check_rx_ring(%struct.ieee80211_hw* %42, i32* %44, i32 2, i32 %47, i32 %51, i32 %54)
  %56 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %57 = load %struct.p54p_priv*, %struct.p54p_priv** %4, align 8
  %58 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %57, i32 0, i32 1
  %59 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %5, align 8
  %60 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.p54p_ring_control*, %struct.p54p_ring_control** %5, align 8
  %63 = getelementptr inbounds %struct.p54p_ring_control, %struct.p54p_ring_control* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ARRAY_SIZE(i32 %64)
  %66 = load %struct.p54p_priv*, %struct.p54p_priv** %4, align 8
  %67 = getelementptr inbounds %struct.p54p_priv, %struct.p54p_priv* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @p54p_check_rx_ring(%struct.ieee80211_hw* %56, i32* %58, i32 0, i32 %61, i32 %65, i32 %68)
  %70 = call i32 (...) @wmb()
  %71 = load i32, i32* @dev_int, align 4
  %72 = load i32, i32* @ISL38XX_DEV_INT_UPDATE, align 4
  %73 = call i32 @cpu_to_le32(i32 %72)
  %74 = call i32 @P54P_WRITE(i32 %71, i32 %73)
  ret void
}

declare dso_local i32 @p54p_check_tx_ring(%struct.ieee80211_hw*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

declare dso_local i32 @p54p_check_rx_ring(%struct.ieee80211_hw*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @P54P_WRITE(i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
