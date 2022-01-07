; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_get_mac_addr_from_apc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sis/extr_sis190.c_sis190_get_mac_addr_from_apc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.net_device = type { i8** }
%struct.sis190_private = type { i32 }

@sis190_get_mac_addr_from_apc.ids = internal constant [3 x i32] [i32 2405, i32 2406, i32 2408], align 4
@.str = private unnamed_addr constant [31 x i8] c"%s: Read MAC address from APC\0A\00", align 1
@PCI_VENDOR_ID_SI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s: Can not find ISA bridge\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.net_device*)* @sis190_get_mac_addr_from_apc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sis190_get_mac_addr_from_apc(%struct.pci_dev* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.sis190_private*, align 8
  %7 = alloca %struct.pci_dev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.sis190_private* @netdev_priv(%struct.net_device* %11)
  store %struct.sis190_private* %12, %struct.sis190_private** %6, align 8
  %13 = load %struct.sis190_private*, %struct.sis190_private** %6, align 8
  %14 = call i64 @netif_msg_probe(%struct.sis190_private* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = call i32 @pci_name(%struct.pci_dev* %17)
  %19 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %18)
  br label %20

20:                                               ; preds = %16, %2
  store i32 0, i32* %10, align 4
  br label %21

21:                                               ; preds = %36, %20
  %22 = load i32, i32* %10, align 4
  %23 = call i32 @ARRAY_SIZE(i32* getelementptr inbounds ([3 x i32], [3 x i32]* @sis190_get_mac_addr_from_apc.ids, i64 0, i64 0))
  %24 = icmp ult i32 %22, %23
  br i1 %24, label %25, label %39

25:                                               ; preds = %21
  %26 = load i32, i32* @PCI_VENDOR_ID_SI, align 4
  %27 = load i32, i32* %10, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* @sis190_get_mac_addr_from_apc.ids, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.pci_dev* @pci_get_device(i32 %26, i32 %30, i32* null)
  store %struct.pci_dev* %31, %struct.pci_dev** %7, align 8
  %32 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %33 = icmp ne %struct.pci_dev* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %39

35:                                               ; preds = %25
  br label %36

36:                                               ; preds = %35
  %37 = load i32, i32* %10, align 4
  %38 = add i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %21

39:                                               ; preds = %34, %21
  %40 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %41 = icmp ne %struct.pci_dev* %40, null
  br i1 %41, label %53, label %42

42:                                               ; preds = %39
  %43 = load %struct.sis190_private*, %struct.sis190_private** %6, align 8
  %44 = call i64 @netif_msg_probe(%struct.sis190_private* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %48 = call i32 @pci_name(%struct.pci_dev* %47)
  %49 = call i32 @pr_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %42
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %94

53:                                               ; preds = %39
  %54 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %55 = call i32 @pci_read_config_byte(%struct.pci_dev* %54, i32 72, i32* %9)
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %56, -3
  store i32 %57, i32* %8, align 4
  %58 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @pci_write_config_byte(%struct.pci_dev* %58, i32 72, i32 %59)
  %61 = call i32 @udelay(i32 50)
  %62 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %63 = call i32 @pci_read_config_byte(%struct.pci_dev* %62, i32 72, i32* %8)
  store i32 0, i32* %10, align 4
  br label %64

64:                                               ; preds = %79, %53
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @ETH_ALEN, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %64
  %69 = load i32, i32* %10, align 4
  %70 = add i32 9, %69
  %71 = call i32 @outb(i32 %70, i32 120)
  %72 = call i8* @inb(i32 121)
  %73 = load %struct.net_device*, %struct.net_device** %5, align 8
  %74 = getelementptr inbounds %struct.net_device, %struct.net_device* %73, i32 0, i32 0
  %75 = load i8**, i8*** %74, align 8
  %76 = load i32, i32* %10, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i8*, i8** %75, i64 %77
  store i8* %72, i8** %78, align 8
  br label %79

79:                                               ; preds = %68
  %80 = load i32, i32* %10, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %10, align 4
  br label %64

82:                                               ; preds = %64
  %83 = call i32 @outb(i32 18, i32 120)
  %84 = call i8* @inb(i32 121)
  %85 = ptrtoint i8* %84 to i32
  store i32 %85, i32* %8, align 4
  %86 = load %struct.sis190_private*, %struct.sis190_private** %6, align 8
  %87 = load i32, i32* %8, align 4
  %88 = call i32 @sis190_set_rgmii(%struct.sis190_private* %86, i32 %87)
  %89 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @pci_write_config_byte(%struct.pci_dev* %89, i32 72, i32 %90)
  %92 = load %struct.pci_dev*, %struct.pci_dev** %7, align 8
  %93 = call i32 @pci_dev_put(%struct.pci_dev* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %82, %50
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local %struct.sis190_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_msg_probe(%struct.sis190_private*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @pci_name(%struct.pci_dev*) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_read_config_byte(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_byte(%struct.pci_dev*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i8* @inb(i32) #1

declare dso_local i32 @sis190_set_rgmii(%struct.sis190_private*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
