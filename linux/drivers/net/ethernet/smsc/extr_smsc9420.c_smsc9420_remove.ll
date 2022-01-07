; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.smsc9420_pdata = type { i32, i32, i64, i32, i32, i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@LAN9420_CPSR_ENDIAN_OFFSET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @smsc9420_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc9420_remove(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.smsc9420_pdata*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %6 = call %struct.net_device* @pci_get_drvdata(%struct.pci_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp ne %struct.net_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %63

10:                                               ; preds = %1
  %11 = load %struct.net_device*, %struct.net_device** %3, align 8
  %12 = call %struct.smsc9420_pdata* @netdev_priv(%struct.net_device* %11)
  store %struct.smsc9420_pdata* %12, %struct.smsc9420_pdata** %4, align 8
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 @unregister_netdev(%struct.net_device* %13)
  %15 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %16 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @BUG_ON(i32 %17)
  %19 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %20 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @BUG_ON(i32 %21)
  %23 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %24 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %31 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @BUG_ON(i32 %35)
  %37 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %38 = load i32, i32* @RX_RING_SIZE, align 4
  %39 = load i32, i32* @TX_RING_SIZE, align 4
  %40 = add nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %45 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %48 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pci_free_consistent(%struct.pci_dev* %37, i32 %43, i32 %46, i32 %49)
  %51 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %4, align 8
  %52 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @LAN9420_CPSR_ENDIAN_OFFSET, align 8
  %55 = sub nsw i64 %53, %54
  %56 = call i32 @iounmap(i64 %55)
  %57 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %58 = call i32 @pci_release_regions(%struct.pci_dev* %57)
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @free_netdev(%struct.net_device* %59)
  %61 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %62 = call i32 @pci_disable_device(%struct.pci_dev* %61)
  br label %63

63:                                               ; preds = %10, %9
  ret void
}

declare dso_local %struct.net_device* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local %struct.smsc9420_pdata* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pci_free_consistent(%struct.pci_dev*, i32, i32, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
