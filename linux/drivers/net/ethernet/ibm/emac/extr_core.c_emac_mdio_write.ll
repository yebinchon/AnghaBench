; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/ibm/emac/extr_core.c_emac_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.emac_instance = type { %struct.emac_instance*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @emac_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.emac_instance*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %10 = load %struct.net_device*, %struct.net_device** %5, align 8
  %11 = call %struct.emac_instance* @netdev_priv(%struct.net_device* %10)
  store %struct.emac_instance* %11, %struct.emac_instance** %9, align 8
  %12 = load %struct.emac_instance*, %struct.emac_instance** %9, align 8
  %13 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %12, i32 0, i32 0
  %14 = load %struct.emac_instance*, %struct.emac_instance** %13, align 8
  %15 = icmp ne %struct.emac_instance* %14, null
  br i1 %15, label %16, label %27

16:                                               ; preds = %4
  %17 = load %struct.emac_instance*, %struct.emac_instance** %9, align 8
  %18 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.emac_instance*, %struct.emac_instance** %9, align 8
  %25 = getelementptr inbounds %struct.emac_instance, %struct.emac_instance* %24, i32 0, i32 0
  %26 = load %struct.emac_instance*, %struct.emac_instance** %25, align 8
  br label %29

27:                                               ; preds = %16, %4
  %28 = load %struct.emac_instance*, %struct.emac_instance** %9, align 8
  br label %29

29:                                               ; preds = %27, %23
  %30 = phi %struct.emac_instance* [ %26, %23 ], [ %28, %27 ]
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = call i32 @__emac_mdio_write(%struct.emac_instance* %30, i32 %31, i32 %32, i32 %33)
  ret void
}

declare dso_local %struct.emac_instance* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @__emac_mdio_write(%struct.emac_instance*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
