; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_jazzsonic.c_jazz_sonic_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/natsemi/extr_jazzsonic.c_jazz_sonic_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.sonic_local = type { i32* }
%struct.resource = type { i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"SONIC ethernet @%08lx, MAC %pM, IRQ %d\0A\00", align 1
@SONIC_MEM_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @jazz_sonic_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jazz_sonic_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.sonic_local*, align 8
  %6 = alloca %struct.resource*, align 8
  %7 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %9 = load i32, i32* @IORESOURCE_MEM, align 4
  %10 = call %struct.resource* @platform_get_resource(%struct.platform_device* %8, i32 %9, i32 0)
  store %struct.resource* %10, %struct.resource** %6, align 8
  %11 = load %struct.resource*, %struct.resource** %6, align 8
  %12 = icmp ne %struct.resource* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %82

16:                                               ; preds = %1
  %17 = call %struct.net_device* @alloc_etherdev(i32 8)
  store %struct.net_device* %17, %struct.net_device** %4, align 8
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = icmp ne %struct.net_device* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %82

23:                                               ; preds = %16
  %24 = load %struct.net_device*, %struct.net_device** %4, align 8
  %25 = call %struct.sonic_local* @netdev_priv(%struct.net_device* %24)
  store %struct.sonic_local* %25, %struct.sonic_local** %5, align 8
  %26 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %27 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %26, i32 0, i32 0
  %28 = load %struct.sonic_local*, %struct.sonic_local** %5, align 8
  %29 = getelementptr inbounds %struct.sonic_local, %struct.sonic_local* %28, i32 0, i32 0
  store i32* %27, i32** %29, align 8
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 @SET_NETDEV_DEV(%struct.net_device* %30, i32* %32)
  %34 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @platform_set_drvdata(%struct.platform_device* %34, %struct.net_device* %35)
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = call i32 @netdev_boot_setup_check(%struct.net_device* %37)
  %39 = load %struct.resource*, %struct.resource** %6, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.net_device*, %struct.net_device** %4, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  %44 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %45 = call i32 @platform_get_irq(%struct.platform_device* %44, i32 0)
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.net_device*, %struct.net_device** %4, align 8
  %49 = call i32 @sonic_probe1(%struct.net_device* %48)
  store i32 %49, i32* %7, align 4
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %23
  br label %78

53:                                               ; preds = %23
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = getelementptr inbounds %struct.net_device, %struct.net_device* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pr_info(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %56, i32 %59, i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %4, align 8
  %65 = call i32 @sonic_msg_init(%struct.net_device* %64)
  %66 = load %struct.net_device*, %struct.net_device** %4, align 8
  %67 = call i32 @register_netdev(%struct.net_device* %66)
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %72

71:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %82

72:                                               ; preds = %70
  %73 = load %struct.net_device*, %struct.net_device** %4, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SONIC_MEM_SIZE, align 4
  %77 = call i32 @release_mem_region(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %72, %52
  %79 = load %struct.net_device*, %struct.net_device** %4, align 8
  %80 = call i32 @free_netdev(%struct.net_device* %79)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %78, %71, %20, %13
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.sonic_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.net_device*) #1

declare dso_local i32 @netdev_boot_setup_check(%struct.net_device*) #1

declare dso_local i32 @platform_get_irq(%struct.platform_device*, i32) #1

declare dso_local i32 @sonic_probe1(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @sonic_msg_init(%struct.net_device*) #1

declare dso_local i32 @register_netdev(%struct.net_device*) #1

declare dso_local i32 @release_mem_region(i32, i32) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
