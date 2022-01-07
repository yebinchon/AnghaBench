; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_set_ringparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ethtool.c_efx_ethtool_set_ringparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_ringparam = type { i64, i32, i64, i64 }
%struct.efx_nic = type { i32 }

@EFX_MAX_DMAQ_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EFX_RXQ_MIN_ENT = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"RX queues cannot be smaller than %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"increasing TX queue size to minimum of %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_ringparam*)* @efx_ethtool_set_ringparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ethtool_set_ringparam(%struct.net_device* %0, %struct.ethtool_ringparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_ringparam*, align 8
  %6 = alloca %struct.efx_nic*, align 8
  %7 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_ringparam* %1, %struct.ethtool_ringparam** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.efx_nic* @netdev_priv(%struct.net_device* %8)
  store %struct.efx_nic* %9, %struct.efx_nic** %6, align 8
  %10 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %11 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %32, label %14

14:                                               ; preds = %2
  %15 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %32, label %19

19:                                               ; preds = %14
  %20 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @EFX_MAX_DMAQ_SIZE, align 4
  %24 = icmp sgt i32 %22, %23
  br i1 %24, label %32, label %25

25:                                               ; preds = %19
  %26 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %27 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %30 = call i64 @EFX_TXQ_MAX_ENT(%struct.efx_nic* %29)
  %31 = icmp sgt i64 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %25, %19, %14, %2
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %78

35:                                               ; preds = %25
  %36 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @EFX_RXQ_MIN_ENT, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %51

41:                                               ; preds = %35
  %42 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %43 = load i32, i32* @drv, align 4
  %44 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %45 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @EFX_RXQ_MIN_ENT, align 4
  %48 = call i32 @netif_err(%struct.efx_nic* %42, i32 %43, i32 %46, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %78

51:                                               ; preds = %35
  %52 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %53 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %56 = call i32 @EFX_TXQ_MIN_ENT(%struct.efx_nic* %55)
  %57 = call i64 @max(i64 %54, i32 %56)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %58, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %51
  %64 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %65 = load i32, i32* @drv, align 4
  %66 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %67 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @netif_warn(%struct.efx_nic* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  br label %71

71:                                               ; preds = %63, %51
  %72 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %73 = load %struct.ethtool_ringparam*, %struct.ethtool_ringparam** %5, align 8
  %74 = getelementptr inbounds %struct.ethtool_ringparam, %struct.ethtool_ringparam* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i64, i64* %7, align 8
  %77 = call i32 @efx_realloc_channels(%struct.efx_nic* %72, i32 %75, i64 %76)
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %71, %41, %32
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local %struct.efx_nic* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @EFX_TXQ_MAX_ENT(%struct.efx_nic*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local i64 @max(i64, i32) #1

declare dso_local i32 @EFX_TXQ_MIN_ENT(%struct.efx_nic*) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, i64) #1

declare dso_local i32 @efx_realloc_channels(%struct.efx_nic*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
