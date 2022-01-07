; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_ethtool_getregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_ethtool_getregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ethtool_regs = type { i32 }
%struct.smsc911x_data = type { i32, i32 }

@ID_REV = common dso_local global i32 0, align 4
@E2P_DATA = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@WUCSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @smsc911x_ethtool_getregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc911x_ethtool_getregs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.smsc911x_data*, align 8
  %8 = alloca %struct.phy_device*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %13)
  store %struct.smsc911x_data* %14, %struct.smsc911x_data** %7, align 8
  %15 = load %struct.net_device*, %struct.net_device** %4, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load %struct.phy_device*, %struct.phy_device** %16, align 8
  store %struct.phy_device* %17, %struct.phy_device** %8, align 8
  store i32 0, i32* %11, align 4
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %12, align 8
  %20 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %21 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %24 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* @ID_REV, align 4
  store i32 %25, i32* %10, align 4
  br label %26

26:                                               ; preds = %39, %3
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @E2P_DATA, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %44

30:                                               ; preds = %26
  %31 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %31, i32 %32)
  %34 = load i32*, i32** %12, align 8
  %35 = load i32, i32* %11, align 4
  %36 = add i32 %35, 1
  store i32 %36, i32* %11, align 4
  %37 = zext i32 %35 to i64
  %38 = getelementptr inbounds i32, i32* %34, i64 %37
  store i32 %33, i32* %38, align 4
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %10, align 4
  %41 = zext i32 %40 to i64
  %42 = add i64 %41, 4
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %10, align 4
  br label %26

44:                                               ; preds = %26
  %45 = load i32, i32* @MAC_CR, align 4
  store i32 %45, i32* %10, align 4
  br label %46

46:                                               ; preds = %67, %44
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @WUCSR, align 4
  %49 = icmp ule i32 %47, %48
  br i1 %49, label %50, label %70

50:                                               ; preds = %46
  %51 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %52 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %51, i32 0, i32 0
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %56 = load i32, i32* %10, align 4
  %57 = call i32 @smsc911x_mac_read(%struct.smsc911x_data* %55, i32 %56)
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %11, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %11, align 4
  %61 = zext i32 %59 to i64
  %62 = getelementptr inbounds i32, i32* %58, i64 %61
  store i32 %57, i32* %62, align 4
  %63 = load %struct.smsc911x_data*, %struct.smsc911x_data** %7, align 8
  %64 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %63, i32 0, i32 0
  %65 = load i64, i64* %9, align 8
  %66 = call i32 @spin_unlock_irqrestore(i32* %64, i64 %65)
  br label %67

67:                                               ; preds = %50
  %68 = load i32, i32* %10, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %10, align 4
  br label %46

70:                                               ; preds = %46
  store i32 0, i32* %10, align 4
  br label %71

71:                                               ; preds = %90, %70
  %72 = load i32, i32* %10, align 4
  %73 = icmp ule i32 %72, 31
  br i1 %73, label %74, label %93

74:                                               ; preds = %71
  %75 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %76 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.phy_device*, %struct.phy_device** %8, align 8
  %80 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @smsc911x_mii_read(i32 %78, i32 %82, i32 %83)
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %11, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %11, align 4
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  br label %90

90:                                               ; preds = %74
  %91 = load i32, i32* %10, align 4
  %92 = add i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %71

93:                                               ; preds = %71
  ret void
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc911x_mac_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc911x_mii_read(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
