; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_iff2rmr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_iff2rmr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.emac_instance = type { i32 }

@EMAC_RMR_SP = common dso_local global i32 0, align 4
@EMAC_RMR_SFCS = common dso_local global i32 0, align 4
@EMAC_RMR_IAE = common dso_local global i32 0, align 4
@EMAC_RMR_BAE = common dso_local global i32 0, align 4
@EMAC_FTR_EMAC4 = common dso_local global i32 0, align 4
@EMAC4_RMR_BASE = common dso_local global i32 0, align 4
@EMAC_RMR_BASE = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@EMAC_RMR_PME = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@EMAC_RMR_PMME = common dso_local global i32 0, align 4
@EMAC_RMR_MAE = common dso_local global i32 0, align 4
@EMAC_APM821XX_REQ_JUMBO_FRAME_SIZE = common dso_local global i32 0, align 4
@EMAC4_RMR_MJS_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @emac_iff2rmr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emac_iff2rmr(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.emac_instance*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.emac_instance* @netdev_priv(%struct.net_device* %5)
  store %struct.emac_instance* %6, %struct.emac_instance** %3, align 8
  %7 = load i32, i32* @EMAC_RMR_SP, align 4
  %8 = load i32, i32* @EMAC_RMR_SFCS, align 4
  %9 = or i32 %7, %8
  %10 = load i32, i32* @EMAC_RMR_IAE, align 4
  %11 = or i32 %9, %10
  %12 = load i32, i32* @EMAC_RMR_BAE, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %4, align 4
  %14 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %15 = load i32, i32* @EMAC_FTR_EMAC4, align 4
  %16 = call i64 @emac_has_feature(%struct.emac_instance* %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load i32, i32* @EMAC4_RMR_BASE, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %4, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @EMAC_RMR_BASE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %22, %18
  %27 = load %struct.net_device*, %struct.net_device** %2, align 8
  %28 = getelementptr inbounds %struct.net_device, %struct.net_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IFF_PROMISC, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* @EMAC_RMR_PME, align 4
  %35 = load i32, i32* %4, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %64

37:                                               ; preds = %26
  %38 = load %struct.net_device*, %struct.net_device** %2, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_ALLMULTI, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i64 @netdev_mc_count(%struct.net_device* %45)
  %47 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %48 = call i64 @EMAC_XAHT_SLOTS(%struct.emac_instance* %47)
  %49 = icmp sgt i64 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44, %37
  %51 = load i32, i32* @EMAC_RMR_PMME, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %44
  %55 = load %struct.net_device*, %struct.net_device** %2, align 8
  %56 = call i32 @netdev_mc_empty(%struct.net_device* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %54
  %59 = load i32, i32* @EMAC_RMR_MAE, align 4
  %60 = load i32, i32* %4, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %58, %54
  br label %63

63:                                               ; preds = %62, %50
  br label %64

64:                                               ; preds = %63, %33
  %65 = load %struct.emac_instance*, %struct.emac_instance** %3, align 8
  %66 = load i32, i32* @EMAC_APM821XX_REQ_JUMBO_FRAME_SIZE, align 4
  %67 = call i64 @emac_has_feature(%struct.emac_instance* %65, i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %80

69:                                               ; preds = %64
  %70 = load i32, i32* @EMAC4_RMR_MJS_MASK, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %4, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %4, align 4
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = getelementptr inbounds %struct.net_device, %struct.net_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @EMAC4_RMR_MJS(i32 %76)
  %78 = load i32, i32* %4, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %69, %64
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local %struct.emac_instance* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @emac_has_feature(%struct.emac_instance*, i32) #1

declare dso_local i64 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i64 @EMAC_XAHT_SLOTS(%struct.emac_instance*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @EMAC4_RMR_MJS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
