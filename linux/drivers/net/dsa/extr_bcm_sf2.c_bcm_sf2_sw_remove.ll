; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_bcm_sf2.c_bcm_sf2_sw_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.bcm_sf2_priv = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @bcm_sf2_sw_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm_sf2_sw_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.bcm_sf2_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.bcm_sf2_priv* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.bcm_sf2_priv* %5, %struct.bcm_sf2_priv** %3, align 8
  %6 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %7 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %6, i32 0, i32 1
  store i64 0, i64* %7, align 8
  %8 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %9 = call i32 @bcm_sf2_intr_disable(%struct.bcm_sf2_priv* %8)
  %10 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %11 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dsa_unregister_switch(i32 %14)
  %16 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %17 = getelementptr inbounds %struct.bcm_sf2_priv, %struct.bcm_sf2_priv* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @bcm_sf2_cfp_exit(i32 %20)
  %22 = load %struct.bcm_sf2_priv*, %struct.bcm_sf2_priv** %3, align 8
  %23 = call i32 @bcm_sf2_mdio_unregister(%struct.bcm_sf2_priv* %22)
  ret i32 0
}

declare dso_local %struct.bcm_sf2_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @bcm_sf2_intr_disable(%struct.bcm_sf2_priv*) #1

declare dso_local i32 @dsa_unregister_switch(i32) #1

declare dso_local i32 @bcm_sf2_cfp_exit(i32) #1

declare dso_local i32 @bcm_sf2_mdio_unregister(%struct.bcm_sf2_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
