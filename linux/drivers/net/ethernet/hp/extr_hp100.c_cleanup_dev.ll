; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_cleanup_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_cleanup_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.hp100_private = type { i32, i64, i32, i32 }

@HP100_REGION_SIZE = common dso_local global i32 0, align 4
@MAX_RINGSIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cleanup_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_dev(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.hp100_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.hp100_private* @netdev_priv(%struct.net_device* %4)
  store %struct.hp100_private* %5, %struct.hp100_private** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @unregister_netdev(%struct.net_device* %6)
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = getelementptr inbounds %struct.net_device, %struct.net_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @HP100_REGION_SIZE, align 4
  %12 = call i32 @release_region(i32 %10, i32 %11)
  %13 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %14 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %19 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load i64, i64* @MAX_RINGSIZE, align 8
  %22 = add nsw i64 %21, 15
  %23 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %24 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %2, align 8
  %27 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %28 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @virt_to_whatever(%struct.net_device* %26, i32 %29)
  %31 = call i32 @pci_free_consistent(i32 %20, i64 %22, i32 %25, i32 %30)
  br label %32

32:                                               ; preds = %17, %1
  %33 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %34 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.hp100_private*, %struct.hp100_private** %3, align 8
  %39 = getelementptr inbounds %struct.hp100_private, %struct.hp100_private* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @iounmap(i64 %40)
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.net_device*, %struct.net_device** %2, align 8
  %44 = call i32 @free_netdev(%struct.net_device* %43)
  ret void
}

declare dso_local %struct.hp100_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @unregister_netdev(%struct.net_device*) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @pci_free_consistent(i32, i64, i32, i32) #1

declare dso_local i32 @virt_to_whatever(%struct.net_device*, i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
