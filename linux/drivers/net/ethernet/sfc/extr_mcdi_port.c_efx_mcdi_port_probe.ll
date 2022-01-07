; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_port_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi_port.c_efx_mcdi_port_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { {}* }
%struct.efx_nic = type { i32, %struct.TYPE_5__, i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32 }

@efx_mcdi_phy_ops = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@MDIO_SUPPORTS_C45 = common dso_local global i32 0, align 4
@MDIO_EMULATE_C22 = common dso_local global i32 0, align 4
@efx_mcdi_mdio_read = common dso_local global i32 0, align 4
@efx_mcdi_mdio_write = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"stats buffer at %llx (virt %p phys %llx)\0A\00", align 1
@EFX_STATS_DISABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mcdi_port_probe(%struct.efx_nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  %5 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %6 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %5, i32 0, i32 3
  store %struct.TYPE_6__* @efx_mcdi_phy_ops, %struct.TYPE_6__** %6, align 8
  %7 = load i32, i32* @MDIO_SUPPORTS_C45, align 4
  %8 = load i32, i32* @MDIO_EMULATE_C22, align 4
  %9 = or i32 %7, %8
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 8
  %13 = load i32, i32* @efx_mcdi_mdio_read, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @efx_mcdi_mdio_write, align 4
  %18 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %19 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 %17, i32* %20, align 4
  %21 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 3
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = bitcast {}** %24 to i32 (%struct.efx_nic*)**
  %26 = load i32 (%struct.efx_nic*)*, i32 (%struct.efx_nic*)** %25, align 8
  %27 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %28 = call i32 %26(%struct.efx_nic* %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %1
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %2, align 4
  br label %74

33:                                               ; preds = %1
  %34 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %35 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 1
  %37 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %38 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call i32 @efx_nic_alloc_buffer(%struct.efx_nic* %34, %struct.TYPE_5__* %36, i32 %42, i32 %43)
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %4, align 4
  store i32 %48, i32* %2, align 4
  br label %74

49:                                               ; preds = %33
  %50 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %51 = load i32, i32* @probe, align 4
  %52 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %56 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @virt_to_phys(i32 %67)
  %69 = trunc i64 %68 to i32
  %70 = call i32 @netif_dbg(%struct.efx_nic* %50, i32 %51, i32 %54, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %59, i32 %63, i32 %69)
  %71 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %72 = load i32, i32* @EFX_STATS_DISABLE, align 4
  %73 = call i32 @efx_mcdi_mac_stats(%struct.efx_nic* %71, i32 %72, i32 1)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %49, %47, %31
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @efx_nic_alloc_buffer(%struct.efx_nic*, %struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32, i32) #1

declare dso_local i64 @virt_to_phys(i32) #1

declare dso_local i32 @efx_mcdi_mac_stats(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
