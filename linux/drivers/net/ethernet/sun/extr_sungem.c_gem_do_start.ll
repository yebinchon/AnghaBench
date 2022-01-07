; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_do_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_do_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.gem = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to enable chip on PCI bus !\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@gem_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to request irq !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @gem_do_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gem_do_start(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.gem*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.gem* @netdev_priv(%struct.net_device* %6)
  store %struct.gem* %7, %struct.gem** %4, align 8
  %8 = load %struct.gem*, %struct.gem** %4, align 8
  %9 = call i32 @gem_get_cell(%struct.gem* %8)
  %10 = load %struct.gem*, %struct.gem** %4, align 8
  %11 = getelementptr inbounds %struct.gem, %struct.gem* %10, i32 0, i32 0
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = call i32 @pci_enable_device(%struct.TYPE_3__* %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %1
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = call i32 @netdev_err(%struct.net_device* %17, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.gem*, %struct.gem** %4, align 8
  %20 = call i32 @gem_put_cell(%struct.gem* %19)
  %21 = load i32, i32* @ENXIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %62

23:                                               ; preds = %1
  %24 = load %struct.gem*, %struct.gem** %4, align 8
  %25 = getelementptr inbounds %struct.gem, %struct.gem* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = call i32 @pci_set_master(%struct.TYPE_3__* %26)
  %28 = load %struct.gem*, %struct.gem** %4, align 8
  %29 = call i32 @gem_reinit_chip(%struct.gem* %28)
  %30 = load %struct.gem*, %struct.gem** %4, align 8
  %31 = getelementptr inbounds %struct.gem, %struct.gem* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @gem_interrupt, align 4
  %36 = load i32, i32* @IRQF_SHARED, align 4
  %37 = load %struct.net_device*, %struct.net_device** %3, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = bitcast %struct.net_device* %40 to i8*
  %42 = call i32 @request_irq(i32 %34, i32 %35, i32 %36, i32 %39, i8* %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %23
  %46 = load %struct.net_device*, %struct.net_device** %3, align 8
  %47 = call i32 @netdev_err(%struct.net_device* %46, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %48 = load %struct.gem*, %struct.gem** %4, align 8
  %49 = call i32 @gem_reset(%struct.gem* %48)
  %50 = load %struct.gem*, %struct.gem** %4, align 8
  %51 = call i32 @gem_clean_rings(%struct.gem* %50)
  %52 = load %struct.gem*, %struct.gem** %4, align 8
  %53 = call i32 @gem_put_cell(%struct.gem* %52)
  %54 = load i32, i32* %5, align 4
  store i32 %54, i32* %2, align 4
  br label %62

55:                                               ; preds = %23
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @netif_device_attach(%struct.net_device* %56)
  %58 = load %struct.gem*, %struct.gem** %4, align 8
  %59 = call i32 @gem_netif_start(%struct.gem* %58)
  %60 = load %struct.gem*, %struct.gem** %4, align 8
  %61 = call i32 @gem_init_phy(%struct.gem* %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %55, %45, %16
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @gem_get_cell(%struct.gem*) #1

declare dso_local i32 @pci_enable_device(%struct.TYPE_3__*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

declare dso_local i32 @gem_put_cell(%struct.gem*) #1

declare dso_local i32 @pci_set_master(%struct.TYPE_3__*) #1

declare dso_local i32 @gem_reinit_chip(%struct.gem*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @gem_reset(%struct.gem*) #1

declare dso_local i32 @gem_clean_rings(%struct.gem*) #1

declare dso_local i32 @netif_device_attach(%struct.net_device*) #1

declare dso_local i32 @gem_netif_start(%struct.gem*) #1

declare dso_local i32 @gem_init_phy(%struct.gem*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
