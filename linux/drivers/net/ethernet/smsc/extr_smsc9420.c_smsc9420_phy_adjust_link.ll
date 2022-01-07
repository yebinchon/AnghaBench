; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_phy_adjust_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_phy_adjust_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { i64 }
%struct.smsc9420_pdata = type { i64, i32, i32 }

@MAC_CR = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"full duplex mode\0A\00", align 1
@MAC_CR_FDPX_ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"half duplex mode\0A\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"carrier OK\0A\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"no carrier\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smsc9420_phy_adjust_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_phy_adjust_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %7)
  store %struct.smsc9420_pdata* %8, %struct.smsc9420_pdata** %3, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load %struct.phy_device*, %struct.phy_device** %10, align 8
  store %struct.phy_device* %11, %struct.phy_device** %4, align 8
  %12 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %13 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %14, %17
  br i1 %18, label %19, label %60

19:                                               ; preds = %1
  %20 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %21 = load i32, i32* @MAC_CR, align 4
  %22 = call i32 @smsc9420_reg_read(%struct.smsc9420_pdata* %20, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %24 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %19
  %28 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %29 = load i32, i32* @link, align 4
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %31 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @netif_dbg(%struct.smsc9420_pdata* %28, i32 %29, i32 %32, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @MAC_CR_FDPX_, align 4
  %35 = load i32, i32* %6, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %6, align 4
  br label %48

37:                                               ; preds = %19
  %38 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %39 = load i32, i32* @link, align 4
  %40 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %41 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @netif_dbg(%struct.smsc9420_pdata* %38, i32 %39, i32 %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @MAC_CR_FDPX_, align 4
  %45 = xor i32 %44, -1
  %46 = load i32, i32* %6, align 4
  %47 = and i32 %46, %45
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %37, %27
  %49 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %50 = load i32, i32* @MAC_CR, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %49, i32 %50, i32 %51)
  %53 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %54 = call i32 @smsc9420_phy_update_flowcontrol(%struct.smsc9420_pdata* %53)
  %55 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %59 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  br label %60

60:                                               ; preds = %48, %1
  %61 = load %struct.net_device*, %struct.net_device** %2, align 8
  %62 = call i32 @netif_carrier_ok(%struct.net_device* %61)
  store i32 %62, i32* %5, align 4
  %63 = load i32, i32* %5, align 4
  %64 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %65 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %68, label %89

68:                                               ; preds = %60
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %73 = load i32, i32* @link, align 4
  %74 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %75 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @netif_dbg(%struct.smsc9420_pdata* %72, i32 %73, i32 %76, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0))
  br label %85

78:                                               ; preds = %68
  %79 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %80 = load i32, i32* @link, align 4
  %81 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %82 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @netif_dbg(%struct.smsc9420_pdata* %79, i32 %80, i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  br label %85

85:                                               ; preds = %78, %71
  %86 = load i32, i32* %5, align 4
  %87 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %88 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 8
  br label %89

89:                                               ; preds = %85, %60
  ret void
}

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc9420_reg_read(%struct.smsc9420_pdata*, i32) #1

declare dso_local i32 @netif_dbg(%struct.smsc9420_pdata*, i32, i32, i8*) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_phy_update_flowcontrol(%struct.smsc9420_pdata*) #1

declare dso_local i32 @netif_carrier_ok(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
