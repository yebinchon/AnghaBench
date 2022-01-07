; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_mac_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_skge.c_genesis_mac_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skge_hw = type { i64, %struct.net_device** }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.skge_port = type { i32, i32 }

@XM_ISRC = common dso_local global i32 0, align 4
@intr = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"mac interrupt status 0x%x\0A\00", align 1
@SK_PHY_XMAC = common dso_local global i64 0, align 8
@XM_IS_INP_ASS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@XM_IS_TXF_UR = common dso_local global i32 0, align 4
@XM_MODE = common dso_local global i32 0, align 4
@XM_MD_FTF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skge_hw*, i32)* @genesis_mac_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @genesis_mac_intr(%struct.skge_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.skge_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.skge_port*, align 8
  %7 = alloca i32, align 4
  store %struct.skge_hw* %0, %struct.skge_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %9 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %8, i32 0, i32 1
  %10 = load %struct.net_device**, %struct.net_device*** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.net_device*, %struct.net_device** %10, i64 %12
  %14 = load %struct.net_device*, %struct.net_device** %13, align 8
  store %struct.net_device* %14, %struct.net_device** %5, align 8
  %15 = load %struct.net_device*, %struct.net_device** %5, align 8
  %16 = call %struct.skge_port* @netdev_priv(%struct.net_device* %15)
  store %struct.skge_port* %16, %struct.skge_port** %6, align 8
  %17 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @XM_ISRC, align 4
  %20 = call i32 @xm_read16(%struct.skge_hw* %17, i32 %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %22 = load i32, i32* @intr, align 4
  %23 = load i32, i32* @KERN_DEBUG, align 4
  %24 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %25 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @netif_printk(%struct.skge_port* %21, i32 %22, i32 %23, i32 %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %30 = getelementptr inbounds %struct.skge_hw, %struct.skge_hw* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @SK_PHY_XMAC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @XM_IS_INP_ASS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @xm_link_down(%struct.skge_hw* %40, i32 %41)
  %43 = load %struct.skge_port*, %struct.skge_port** %6, align 8
  %44 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %43, i32 0, i32 0
  %45 = load i64, i64* @jiffies, align 8
  %46 = add nsw i64 %45, 1
  %47 = call i32 @mod_timer(i32* %44, i64 %46)
  br label %48

48:                                               ; preds = %39, %34, %2
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @XM_IS_TXF_UR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %48
  %54 = load %struct.skge_hw*, %struct.skge_hw** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = load i32, i32* @XM_MODE, align 4
  %57 = load i32, i32* @XM_MD_FTF, align 4
  %58 = call i32 @xm_write32(%struct.skge_hw* %54, i32 %55, i32 %56, i32 %57)
  %59 = load %struct.net_device*, %struct.net_device** %5, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %61, align 4
  br label %64

64:                                               ; preds = %53, %48
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @xm_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @netif_printk(%struct.skge_port*, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @xm_link_down(%struct.skge_hw*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @xm_write32(%struct.skge_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
