; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_mace.c_mace_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apple/extr_mace.c_mace_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.macio_dev = type { i32 }
%struct.net_device = type { i32 }
%struct.mace_data = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.macio_dev*)* @mace_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mace_remove(%struct.macio_dev* %0) #0 {
  %2 = alloca %struct.macio_dev*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.mace_data*, align 8
  store %struct.macio_dev* %0, %struct.macio_dev** %2, align 8
  %5 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %6 = call %struct.net_device* @macio_get_drvdata(%struct.macio_dev* %5)
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = icmp eq %struct.net_device* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %12 = call i32 @macio_set_drvdata(%struct.macio_dev* %11, i32* null)
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call %struct.mace_data* @netdev_priv(%struct.net_device* %13)
  store %struct.mace_data* %14, %struct.mace_data** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @unregister_netdev(%struct.net_device* %15)
  %17 = load %struct.net_device*, %struct.net_device** %3, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = call i32 @free_irq(i32 %19, %struct.net_device* %20)
  %22 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %23 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = call i32 @free_irq(i32 %24, %struct.net_device* %25)
  %27 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %28 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %3, align 8
  %31 = call i32 @free_irq(i32 %29, %struct.net_device* %30)
  %32 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %33 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iounmap(i32 %34)
  %36 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %37 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @iounmap(i32 %38)
  %40 = load %struct.mace_data*, %struct.mace_data** %4, align 8
  %41 = getelementptr inbounds %struct.mace_data, %struct.mace_data* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @iounmap(i32 %42)
  %44 = load %struct.net_device*, %struct.net_device** %3, align 8
  %45 = call i32 @free_netdev(%struct.net_device* %44)
  %46 = load %struct.macio_dev*, %struct.macio_dev** %2, align 8
  %47 = call i32 @macio_release_resources(%struct.macio_dev* %46)
  ret i32 0
}

declare dso_local %struct.net_device* @macio_get_drvdata(%struct.macio_dev*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @macio_set_drvdata(%struct.macio_dev*, i32*) #1

declare dso_local %struct.mace_data* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

declare dso_local i32 @macio_release_resources(%struct.macio_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
