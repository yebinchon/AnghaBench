; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_hwif.c_stmmac_dwmac1_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/stmicro/stmmac/extr_hwif.c_stmmac_dwmac1_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stmmac_priv = type { i64, i32, i32, %struct.TYPE_2__*, %struct.mac_device_info* }
%struct.TYPE_2__ = type { i64 }
%struct.mac_device_info = type { i32* }

@.str = private unnamed_addr constant [32 x i8] c"Enhanced/Alternate descriptors\0A\00", align 1
@DWMAC_CORE_3_50 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Enabled extended descriptors\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"Extended descriptors not supported\0A\00", align 1
@enh_desc_ops = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [20 x i8] c"Normal descriptors\0A\00", align 1
@ndesc_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stmmac_priv*)* @stmmac_dwmac1_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_dwmac1_quirks(%struct.stmmac_priv* %0) #0 {
  %2 = alloca %struct.stmmac_priv*, align 8
  %3 = alloca %struct.mac_device_info*, align 8
  store %struct.stmmac_priv* %0, %struct.stmmac_priv** %2, align 8
  %4 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %5 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %4, i32 0, i32 4
  %6 = load %struct.mac_device_info*, %struct.mac_device_info** %5, align 8
  store %struct.mac_device_info* %6, %struct.mac_device_info** %3, align 8
  %7 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %8 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %7, i32 0, i32 3
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %15 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dev_info(i32 %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %18 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %19 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DWMAC_CORE_3_50, align 8
  %22 = icmp sge i64 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %13
  %24 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %25 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_info(i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %29 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %28, i32 0, i32 1
  store i32 1, i32* %29, align 8
  br label %35

30:                                               ; preds = %13
  %31 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %32 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_warn(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %37 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %36, i32 0, i32 0
  store i32* @enh_desc_ops, i32** %37, align 8
  br label %45

38:                                               ; preds = %1
  %39 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %40 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_info(i32 %41, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %43 = load %struct.mac_device_info*, %struct.mac_device_info** %3, align 8
  %44 = getelementptr inbounds %struct.mac_device_info, %struct.mac_device_info* %43, i32 0, i32 0
  store i32* @ndesc_ops, i32** %44, align 8
  br label %45

45:                                               ; preds = %38, %35
  %46 = load %struct.stmmac_priv*, %struct.stmmac_priv** %2, align 8
  %47 = call i32 @stmmac_dwmac_mode_quirk(%struct.stmmac_priv* %46)
  ret i32 0
}

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @stmmac_dwmac_mode_quirk(%struct.stmmac_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
