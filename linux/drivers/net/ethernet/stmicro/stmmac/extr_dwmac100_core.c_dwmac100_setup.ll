; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac100_core.c_dwmac100_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_dwmac100_core.c_dwmac100_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i32, i32, %struct.mac_device_info* }
%struct.mac_device_info = type { %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i32 }

@.str = private unnamed_addr constant [11 x i8] c"\09DWMAC100\0A\00", align 1
@MAC_CONTROL_F = common dso_local global i32 0, align 4
@MAC_CONTROL_PS = common dso_local global i32 0, align 4
@MAC_MII_ADDR = common dso_local global i32 0, align 4
@MAC_MII_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dwmac100_setup(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca %struct.mac_device_info*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %4 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %5 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %4, i32 0, i32 2
  %6 = load %struct.mac_device_info*, %struct.mac_device_info** %5, align 8
  store %struct.mac_device_info* %6, %struct.mac_device_info** %3, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @dev_info(i32 %9, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %12 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %15 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* @MAC_CONTROL_F, align 4
  %17 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %18 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 4
  store i32 %16, i32* %19, align 8
  %20 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %21 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %24 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 2
  store i64 0, i64* %25, align 8
  %26 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %27 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load i32, i32* @MAC_CONTROL_PS, align 4
  %30 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %31 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load i32, i32* @MAC_MII_ADDR, align 4
  %34 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %35 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 7
  store i32 %33, i32* %36, align 4
  %37 = load i32, i32* @MAC_MII_DATA, align 4
  %38 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %39 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i32 %37, i32* %40, align 8
  %41 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %42 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i32 11, i32* %43, align 8
  %44 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %45 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  store i32 63488, i32* %46, align 4
  %47 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %48 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 2
  store i32 6, i32* %49, align 8
  %50 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %51 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 1984, i32* %52, align 4
  %53 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %54 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 4
  store i32 2, i32* %55, align 8
  %56 = call i32 @GENMASK(i32 5, i32 2)
  %57 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %58 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 5
  store i32 %56, i32* %59, align 4
  ret i32 0
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @GENMASK(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
