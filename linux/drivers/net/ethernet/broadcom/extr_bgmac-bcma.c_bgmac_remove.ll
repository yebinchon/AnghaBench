; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma.c_bgmac_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_bgmac-bcma.c_bgmac_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_device = type { i32 }
%struct.bgmac = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcma_device*)* @bgmac_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bgmac_remove(%struct.bcma_device* %0) #0 {
  %2 = alloca %struct.bcma_device*, align 8
  %3 = alloca %struct.bgmac*, align 8
  store %struct.bcma_device* %0, %struct.bcma_device** %2, align 8
  %4 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %5 = call %struct.bgmac* @bcma_get_drvdata(%struct.bcma_device* %4)
  store %struct.bgmac* %5, %struct.bgmac** %3, align 8
  %6 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %7 = getelementptr inbounds %struct.bgmac, %struct.bgmac* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @bcma_mdio_mii_unregister(i32 %8)
  %10 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %11 = call i32 @bgmac_enet_remove(%struct.bgmac* %10)
  %12 = load %struct.bcma_device*, %struct.bcma_device** %2, align 8
  %13 = call i32 @bcma_set_drvdata(%struct.bcma_device* %12, i32* null)
  %14 = load %struct.bgmac*, %struct.bgmac** %3, align 8
  %15 = call i32 @kfree(%struct.bgmac* %14)
  ret void
}

declare dso_local %struct.bgmac* @bcma_get_drvdata(%struct.bcma_device*) #1

declare dso_local i32 @bcma_mdio_mii_unregister(i32) #1

declare dso_local i32 @bgmac_enet_remove(%struct.bgmac*) #1

declare dso_local i32 @bcma_set_drvdata(%struct.bcma_device*, i32*) #1

declare dso_local i32 @kfree(%struct.bgmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
