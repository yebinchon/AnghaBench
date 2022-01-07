; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_display_dev_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/extr_qla3xxx.c_ql_display_dev_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ql3_adapter = type { i64, i32, i8*, i64, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i8* }

@.str = private unnamed_addr constant [53 x i8] c"%s Adapter %d RevisionID %d found %s on PCI slot %d\0A\00", align 1
@DRV_NAME = common dso_local global i32 0, align 4
@QL3032_DEVICE_ID = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"QLA3032\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"QLA3022\00", align 1
@.str.3 = private unnamed_addr constant [14 x i8] c"%s Interface\0A\00", align 1
@QL_LINK_OPTICAL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [8 x i8] c"OPTICAL\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"COPPER\00", align 1
@.str.6 = private unnamed_addr constant [24 x i8] c"Bus interface is %s %s\0A\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"64-bit\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"32-bit\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"PCI-X\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"PCI\00", align 1
@.str.11 = private unnamed_addr constant [38 x i8] c"mem  IO base address adjusted = 0x%p\0A\00", align 1
@.str.12 = private unnamed_addr constant [23 x i8] c"Interrupt number = %d\0A\00", align 1
@probe = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [17 x i8] c"MAC address %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @ql_display_dev_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_display_dev_info(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ql3_adapter*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.ql3_adapter* @netdev_priv(%struct.net_device* %5)
  store %struct.ql3_adapter* %6, %struct.ql3_adapter** %3, align 8
  %7 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %7, i32 0, i32 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  store %struct.pci_dev* %9, %struct.pci_dev** %4, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = load i32, i32* @DRV_NAME, align 4
  %12 = sext i32 %11 to i64
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %18 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %17, i32 0, i32 6
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @QL3032_DEVICE_ID, align 8
  %24 = icmp eq i64 %22, %23
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %28 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (%struct.net_device*, i8*, i8*, ...) @netdev_info(%struct.net_device* %10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i8* %13, i32 %16, i32 %19, i8* %26, i32 %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = load i32, i32* @QL_LINK_OPTICAL, align 4
  %33 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %33, i32 0, i32 4
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0)
  %39 = call i32 (%struct.net_device*, i8*, i8*, ...) @netdev_info(%struct.net_device* %31, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0), i8* %38)
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %42 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 64
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0)
  %47 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %48 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0)
  %53 = call i32 (%struct.net_device*, i8*, i8*, ...) @netdev_info(%struct.net_device* %40, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.6, i64 0, i64 0), i8* %46, i8* %52)
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %56 = getelementptr inbounds %struct.ql3_adapter, %struct.ql3_adapter* %55, i32 0, i32 2
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 (%struct.net_device*, i8*, i8*, ...) @netdev_info(%struct.net_device* %54, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i64 0, i64 0), i8* %57)
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %61 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %60, i32 0, i32 0
  %62 = load i8*, i8** %61, align 8
  %63 = call i32 (%struct.net_device*, i8*, i8*, ...) @netdev_info(%struct.net_device* %59, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.12, i64 0, i64 0), i8* %62)
  %64 = load %struct.ql3_adapter*, %struct.ql3_adapter** %3, align 8
  %65 = load i32, i32* @probe, align 4
  %66 = load %struct.net_device*, %struct.net_device** %2, align 8
  %67 = load %struct.net_device*, %struct.net_device** %2, align 8
  %68 = getelementptr inbounds %struct.net_device, %struct.net_device* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @netif_info(%struct.ql3_adapter* %64, i32 %65, %struct.net_device* %66, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i64 0, i64 0), i32 %69)
  ret void
}

declare dso_local %struct.ql3_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @netif_info(%struct.ql3_adapter*, i32, %struct.net_device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
