; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_pasemi_nand.c_pasemi_nand_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/nand/raw/extr_pasemi_nand.c_pasemi_nand_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.device* }
%struct.device = type { %struct.device_node* }
%struct.device_node = type { i32 }
%struct.platform_device = type { %struct.device }
%struct.pci_dev = type { i32 }
%struct.resource = type { i32 }
%struct.nand_chip = type { %struct.TYPE_9__, i32, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32, i64, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@pasemi_nand_mtd = common dso_local global %struct.TYPE_10__* null, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"pasemi_nand at %pR\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_PASEMI = common dso_local global i32 0, align 4
@lpcctl = common dso_local global i32 0, align 4
@driver_name = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@pasemi_hwcontrol = common dso_local global i32 0, align 4
@pasemi_device_ready = common dso_local global i32 0, align 4
@pasemi_read_buf = common dso_local global i32 0, align 4
@pasemi_write_buf = common dso_local global i32 0, align 4
@NAND_ECC_SOFT = common dso_local global i32 0, align 4
@NAND_ECC_HAMMING = common dso_local global i32 0, align 4
@NAND_BBT_USE_FLASH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"Unable to register MTD device\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"PA Semi NAND flash at %pR, control at I/O %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @pasemi_nand_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_nand_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.device_node*, align 8
  %7 = alloca %struct.resource, align 4
  %8 = alloca %struct.nand_chip*, align 8
  %9 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %10 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %11 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %10, i32 0, i32 0
  store %struct.device* %11, %struct.device** %4, align 8
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 0
  %14 = load %struct.device_node*, %struct.device_node** %13, align 8
  store %struct.device_node* %14, %struct.device_node** %6, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.device_node*, %struct.device_node** %6, align 8
  %16 = call i32 @of_address_to_resource(%struct.device_node* %15, i32 0, %struct.resource* %7)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %148

22:                                               ; preds = %1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasemi_nand_mtd, align 8
  %24 = icmp ne %struct.TYPE_10__* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %22
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %148

28:                                               ; preds = %22
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = call i32 @dev_dbg(%struct.device* %29, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), %struct.resource* %7)
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.nand_chip* @kzalloc(i32 56, i32 %31)
  store %struct.nand_chip* %32, %struct.nand_chip** %8, align 8
  %33 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %34 = icmp ne %struct.nand_chip* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %28
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %146

38:                                               ; preds = %28
  %39 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %40 = call %struct.TYPE_10__* @nand_to_mtd(%struct.nand_chip* %39)
  store %struct.TYPE_10__* %40, %struct.TYPE_10__** @pasemi_nand_mtd, align 8
  %41 = load %struct.device*, %struct.device** %4, align 8
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasemi_nand_mtd, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store %struct.device* %41, %struct.device** %44, align 8
  %45 = load %struct.device_node*, %struct.device_node** %6, align 8
  %46 = call i32 @of_iomap(%struct.device_node* %45, i32 0)
  %47 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %48 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %51 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %55 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 6
  store i32 %53, i32* %56, align 8
  %57 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %58 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %38
  %63 = load i32, i32* @EIO, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %9, align 4
  br label %143

65:                                               ; preds = %38
  %66 = load i32, i32* @PCI_VENDOR_ID_PASEMI, align 4
  %67 = call %struct.pci_dev* @pci_get_device(i32 %66, i32 40968, i32* null)
  store %struct.pci_dev* %67, %struct.pci_dev** %5, align 8
  %68 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %69 = icmp ne %struct.pci_dev* %68, null
  br i1 %69, label %73, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* @ENODEV, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %9, align 4
  br label %137

73:                                               ; preds = %65
  %74 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %75 = call i32 @pci_resource_start(%struct.pci_dev* %74, i32 0)
  store i32 %75, i32* @lpcctl, align 4
  %76 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %77 = call i32 @pci_dev_put(%struct.pci_dev* %76)
  %78 = load i32, i32* @lpcctl, align 4
  %79 = load i32, i32* @driver_name, align 4
  %80 = call i32 @request_region(i32 %78, i32 4, i32 %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %85, label %82

82:                                               ; preds = %73
  %83 = load i32, i32* @EBUSY, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %9, align 4
  br label %137

85:                                               ; preds = %73
  %86 = load i32, i32* @pasemi_hwcontrol, align 4
  %87 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 5
  store i32 %86, i32* %89, align 4
  %90 = load i32, i32* @pasemi_device_ready, align 4
  %91 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %92 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 4
  store i32 %90, i32* %93, align 8
  %94 = load i32, i32* @pasemi_read_buf, align 4
  %95 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %96 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 3
  store i32 %94, i32* %97, align 4
  %98 = load i32, i32* @pasemi_write_buf, align 4
  %99 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %100 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 2
  store i32 %98, i32* %101, align 8
  %102 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %103 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %103, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load i32, i32* @NAND_ECC_SOFT, align 4
  %106 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %107 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 1
  store i32 %105, i32* %108, align 4
  %109 = load i32, i32* @NAND_ECC_HAMMING, align 4
  %110 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %111 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %111, i32 0, i32 0
  store i32 %109, i32* %112, align 4
  %113 = load i32, i32* @NAND_BBT_USE_FLASH, align 4
  %114 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %115 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 1
  store i32 %113, i32* %115, align 8
  %116 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %117 = call i32 @nand_scan(%struct.nand_chip* %116, i32 1)
  store i32 %117, i32* %9, align 4
  %118 = load i32, i32* %9, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %121

120:                                              ; preds = %85
  br label %134

121:                                              ; preds = %85
  %122 = load %struct.TYPE_10__*, %struct.TYPE_10__** @pasemi_nand_mtd, align 8
  %123 = call i64 @mtd_device_register(%struct.TYPE_10__* %122, i32* null, i32 0)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %130

125:                                              ; preds = %121
  %126 = load %struct.device*, %struct.device** %4, align 8
  %127 = call i32 @dev_err(%struct.device* %126, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %128 = load i32, i32* @ENODEV, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %9, align 4
  br label %134

130:                                              ; preds = %121
  %131 = load %struct.device*, %struct.device** %4, align 8
  %132 = load i32, i32* @lpcctl, align 4
  %133 = call i32 @dev_info(%struct.device* %131, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), %struct.resource* %7, i32 %132)
  store i32 0, i32* %2, align 4
  br label %148

134:                                              ; preds = %125, %120
  %135 = load i32, i32* @lpcctl, align 4
  %136 = call i32 @release_region(i32 %135, i32 4)
  br label %137

137:                                              ; preds = %134, %82, %70
  %138 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %139 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @iounmap(i32 %141)
  br label %143

143:                                              ; preds = %137, %62
  %144 = load %struct.nand_chip*, %struct.nand_chip** %8, align 8
  %145 = call i32 @kfree(%struct.nand_chip* %144)
  br label %146

146:                                              ; preds = %143, %35
  %147 = load i32, i32* %9, align 4
  store i32 %147, i32* %2, align 4
  br label %148

148:                                              ; preds = %146, %130, %25, %19
  %149 = load i32, i32* %2, align 4
  ret i32 %149
}

declare dso_local i32 @of_address_to_resource(%struct.device_node*, i32, %struct.resource*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, %struct.resource*) #1

declare dso_local %struct.nand_chip* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_10__* @nand_to_mtd(%struct.nand_chip*) #1

declare dso_local i32 @of_iomap(%struct.device_node*, i32) #1

declare dso_local %struct.pci_dev* @pci_get_device(i32, i32, i32*) #1

declare dso_local i32 @pci_resource_start(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_dev_put(%struct.pci_dev*) #1

declare dso_local i32 @request_region(i32, i32, i32) #1

declare dso_local i32 @nand_scan(%struct.nand_chip*, i32) #1

declare dso_local i64 @mtd_device_register(%struct.TYPE_10__*, i32*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, %struct.resource*, i32) #1

declare dso_local i32 @release_region(i32, i32) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.nand_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
