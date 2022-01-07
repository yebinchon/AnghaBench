; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/dsa/extr_lantiq_gswip.c_gswip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.gswip_priv = type { i32, i32*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@GSWIP_MDIO_GLOB_ENABLE = common dso_local global i32 0, align 4
@GSWIP_MDIO_GLOB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @gswip_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gswip_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.gswip_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.gswip_priv* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.gswip_priv* %6, %struct.gswip_priv** %3, align 8
  %7 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %8 = load i32, i32* @GSWIP_MDIO_GLOB_ENABLE, align 4
  %9 = load i32, i32* @GSWIP_MDIO_GLOB, align 4
  %10 = call i32 @gswip_mdio_mask(%struct.gswip_priv* %7, i32 %8, i32 0, i32 %9)
  %11 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %12 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %11, i32 0, i32 2
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = call i32 @dsa_unregister_switch(%struct.TYPE_6__* %13)
  %15 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %16 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %15, i32 0, i32 2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = icmp ne %struct.TYPE_5__* %19, null
  br i1 %20, label %21, label %37

21:                                               ; preds = %1
  %22 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %23 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %22, i32 0, i32 2
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = call i32 @mdiobus_unregister(%struct.TYPE_5__* %26)
  %28 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %29 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %28, i32 0, i32 2
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @of_node_put(i32 %35)
  br label %37

37:                                               ; preds = %21, %1
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %53, %37
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %41 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp slt i32 %39, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %38
  %45 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %46 = load %struct.gswip_priv*, %struct.gswip_priv** %3, align 8
  %47 = getelementptr inbounds %struct.gswip_priv, %struct.gswip_priv* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  %52 = call i32 @gswip_gphy_fw_remove(%struct.gswip_priv* %45, i32* %51)
  br label %53

53:                                               ; preds = %44
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %38

56:                                               ; preds = %38
  ret i32 0
}

declare dso_local %struct.gswip_priv* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @gswip_mdio_mask(%struct.gswip_priv*, i32, i32, i32) #1

declare dso_local i32 @dsa_unregister_switch(%struct.TYPE_6__*) #1

declare dso_local i32 @mdiobus_unregister(%struct.TYPE_5__*) #1

declare dso_local i32 @of_node_put(i32) #1

declare dso_local i32 @gswip_gphy_fw_remove(%struct.gswip_priv*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
