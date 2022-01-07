; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_disable_bnx2_int_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_disable_bnx2_int_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@CNIC_DRV_STATE_USING_MSIX = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD = common dso_local global i32 0, align 4
@BNX2_PCICFG_INT_ACK_CMD_MASK_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cnic_dev*)* @cnic_disable_bnx2_int_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cnic_disable_bnx2_int_sync(%struct.cnic_dev* %0) #0 {
  %2 = alloca %struct.cnic_dev*, align 8
  %3 = alloca %struct.cnic_local*, align 8
  %4 = alloca %struct.cnic_eth_dev*, align 8
  store %struct.cnic_dev* %0, %struct.cnic_dev** %2, align 8
  %5 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %6 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %5, i32 0, i32 0
  %7 = load %struct.cnic_local*, %struct.cnic_local** %6, align 8
  store %struct.cnic_local* %7, %struct.cnic_local** %3, align 8
  %8 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %9 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %8, i32 0, i32 1
  %10 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %9, align 8
  store %struct.cnic_eth_dev* %10, %struct.cnic_eth_dev** %4, align 8
  %11 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %4, align 8
  %12 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @CNIC_DRV_STATE_USING_MSIX, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %37

18:                                               ; preds = %1
  %19 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %20 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %21 = load %struct.cnic_local*, %struct.cnic_local** %3, align 8
  %22 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD_MASK_INT, align 4
  %25 = or i32 %23, %24
  %26 = call i32 @CNIC_WR(%struct.cnic_dev* %19, i32 %20, i32 %25)
  %27 = load %struct.cnic_dev*, %struct.cnic_dev** %2, align 8
  %28 = load i32, i32* @BNX2_PCICFG_INT_ACK_CMD, align 4
  %29 = call i32 @CNIC_RD(%struct.cnic_dev* %27, i32 %28)
  %30 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %4, align 8
  %31 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i64 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @synchronize_irq(i32 %35)
  br label %37

37:                                               ; preds = %18, %17
  ret void
}

declare dso_local i32 @CNIC_WR(%struct.cnic_dev*, i32, i32) #1

declare dso_local i32 @CNIC_RD(%struct.cnic_dev*, i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
