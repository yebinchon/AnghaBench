; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_loopbacktest.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc911x.c_smsc911x_phy_loopbacktest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.phy_device* }
%struct.phy_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.smsc911x_data = type { i8*, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@MIN_PACKET_SIZE = common dso_local global i32 0, align 4
@HW_CFG = common dso_local global i32 0, align 4
@HW_CFG_TX_FIF_SZ_ = common dso_local global i32 0, align 4
@HW_CFG_SF_ = common dso_local global i32 0, align 4
@TX_CFG = common dso_local global i32 0, align 4
@TX_CFG_TX_ON_ = common dso_local global i32 0, align 4
@RX_CFG = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_LOOPBACK = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@MAC_CR_FDPX_ = common dso_local global i32 0, align 4
@MAC_CR_TXEN_ = common dso_local global i32 0, align 4
@MAC_CR_RXEN_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @smsc911x_phy_loopbacktest to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc911x_phy_loopbacktest(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smsc911x_data*, align 8
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %9 = load %struct.net_device*, %struct.net_device** %2, align 8
  %10 = call %struct.smsc911x_data* @netdev_priv(%struct.net_device* %9)
  store %struct.smsc911x_data* %10, %struct.smsc911x_data** %3, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = getelementptr inbounds %struct.net_device, %struct.net_device* %11, i32 0, i32 0
  %13 = load %struct.phy_device*, %struct.phy_device** %12, align 8
  store %struct.phy_device* %13, %struct.phy_device** %4, align 8
  %14 = load i32, i32* @EIO, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %5, align 4
  %16 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %17 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @eth_broadcast_addr(i8* %18)
  store i32 6, i32* %6, align 4
  br label %20

20:                                               ; preds = %32, %1
  %21 = load i32, i32* %6, align 4
  %22 = icmp ult i32 %21, 12
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %6, align 4
  %25 = trunc i32 %24 to i8
  %26 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %27 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = load i32, i32* %6, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i8, i8* %28, i64 %30
  store i8 %25, i8* %31, align 1
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %6, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %37 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 12
  store i8 0, i8* %39, align 1
  %40 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %41 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds i8, i8* %42, i64 13
  store i8 0, i8* %43, align 1
  store i32 14, i32* %6, align 4
  br label %44

44:                                               ; preds = %57, %35
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @MIN_PACKET_SIZE, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %60

48:                                               ; preds = %44
  %49 = load i32, i32* %6, align 4
  %50 = trunc i32 %49 to i8
  %51 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %52 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %51, i32 0, i32 0
  %53 = load i8*, i8** %52, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  store i8 %50, i8* %56, align 1
  br label %57

57:                                               ; preds = %48
  %58 = load i32, i32* %6, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %6, align 4
  br label %44

60:                                               ; preds = %44
  %61 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %62 = load i32, i32* @HW_CFG, align 4
  %63 = call i32 @smsc911x_reg_read(%struct.smsc911x_data* %61, i32 %62)
  store i32 %63, i32* %7, align 4
  %64 = load i32, i32* @HW_CFG_TX_FIF_SZ_, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* @HW_CFG_SF_, align 4
  %68 = load i32, i32* %7, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %7, align 4
  %70 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %71 = load i32, i32* @HW_CFG, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %70, i32 %71, i32 %72)
  %74 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %75 = load i32, i32* @TX_CFG, align 4
  %76 = load i32, i32* @TX_CFG_TX_ON_, align 4
  %77 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %74, i32 %75, i32 %76)
  %78 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %79 = load i32, i32* @RX_CFG, align 4
  %80 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %81 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %80, i32 0, i32 3
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  %84 = and i32 %83, 3
  %85 = shl i32 %84, 8
  %86 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %78, i32 %79, i32 %85)
  store i32 0, i32* %6, align 4
  br label %87

87:                                               ; preds = %142, %60
  %88 = load i32, i32* %6, align 4
  %89 = icmp ult i32 %88, 10
  br i1 %89, label %90, label %145

90:                                               ; preds = %87
  %91 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %92 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %96 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @MII_BMCR, align 4
  %100 = load i32, i32* @BMCR_LOOPBACK, align 4
  %101 = load i32, i32* @BMCR_FULLDPLX, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @smsc911x_mii_write(i32 %94, i32 %98, i32 %99, i32 %102)
  %104 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %105 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %104, i32 0, i32 1
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @spin_lock_irqsave(i32* %105, i64 %106)
  %108 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %109 = load i32, i32* @MAC_CR, align 4
  %110 = load i32, i32* @MAC_CR_FDPX_, align 4
  %111 = load i32, i32* @MAC_CR_TXEN_, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @MAC_CR_RXEN_, align 4
  %114 = or i32 %112, %113
  %115 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %108, i32 %109, i32 %114)
  %116 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %117 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %116, i32 0, i32 1
  %118 = load i64, i64* %8, align 8
  %119 = call i32 @spin_unlock_irqrestore(i32* %117, i64 %118)
  %120 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %121 = call i64 @smsc911x_phy_check_loopbackpkt(%struct.smsc911x_data* %120)
  %122 = icmp eq i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %90
  store i32 0, i32* %5, align 4
  br label %145

124:                                              ; preds = %90
  %125 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %126 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %126, align 4
  %129 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %130 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %129, i32 0, i32 1
  %131 = load i64, i64* %8, align 8
  %132 = call i32 @spin_lock_irqsave(i32* %130, i64 %131)
  %133 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %134 = load i32, i32* @MAC_CR, align 4
  %135 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %133, i32 %134, i32 0)
  %136 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %137 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %136, i32 0, i32 1
  %138 = load i64, i64* %8, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  %140 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %141 = call i32 @smsc911x_phy_reset(%struct.smsc911x_data* %140)
  br label %142

142:                                              ; preds = %124
  %143 = load i32, i32* %6, align 4
  %144 = add i32 %143, 1
  store i32 %144, i32* %6, align 4
  br label %87

145:                                              ; preds = %123, %87
  %146 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %147 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %146, i32 0, i32 1
  %148 = load i64, i64* %8, align 8
  %149 = call i32 @spin_lock_irqsave(i32* %147, i64 %148)
  %150 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %151 = load i32, i32* @MAC_CR, align 4
  %152 = call i32 @smsc911x_mac_write(%struct.smsc911x_data* %150, i32 %151, i32 0)
  %153 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %154 = getelementptr inbounds %struct.smsc911x_data, %struct.smsc911x_data* %153, i32 0, i32 1
  %155 = load i64, i64* %8, align 8
  %156 = call i32 @spin_unlock_irqrestore(i32* %154, i64 %155)
  %157 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %158 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %157, i32 0, i32 0
  %159 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %162 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* @MII_BMCR, align 4
  %166 = call i32 @smsc911x_mii_write(i32 %160, i32 %164, i32 %165, i32 0)
  %167 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %168 = load i32, i32* @TX_CFG, align 4
  %169 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %167, i32 %168, i32 0)
  %170 = load %struct.smsc911x_data*, %struct.smsc911x_data** %3, align 8
  %171 = load i32, i32* @RX_CFG, align 4
  %172 = call i32 @smsc911x_reg_write(%struct.smsc911x_data* %170, i32 %171, i32 0)
  %173 = load i32, i32* %5, align 4
  ret i32 %173
}

declare dso_local %struct.smsc911x_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @eth_broadcast_addr(i8*) #1

declare dso_local i32 @smsc911x_reg_read(%struct.smsc911x_data*, i32) #1

declare dso_local i32 @smsc911x_reg_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @smsc911x_mii_write(i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @smsc911x_mac_write(%struct.smsc911x_data*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @smsc911x_phy_check_loopbackpkt(%struct.smsc911x_data*) #1

declare dso_local i32 @smsc911x_phy_reset(%struct.smsc911x_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
