; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_get_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_get_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { i32, %struct.pci_dev* }
%struct.pci_dev = type { i32 }
%struct.device_node = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"No device node for mac, not configuring\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"local-mac-address\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"mac-address\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"no mac address in device tree, not configuring\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"can't parse mac address, not configuring\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pasemi_mac*)* @pasemi_get_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_get_mac_addr(%struct.pasemi_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pasemi_mac*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %3, align 8
  %11 = load %struct.pasemi_mac*, %struct.pasemi_mac** %3, align 8
  %12 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %11, i32 0, i32 1
  %13 = load %struct.pci_dev*, %struct.pci_dev** %12, align 8
  store %struct.pci_dev* %13, %struct.pci_dev** %4, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev* %14)
  store %struct.device_node* %15, %struct.device_node** %5, align 8
  %16 = load i32, i32* @ETH_ALEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %8, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %9, align 8
  %20 = load %struct.device_node*, %struct.device_node** %5, align 8
  %21 = icmp ne %struct.device_node* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = call i32 @dev_dbg(i32* %24, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %75

28:                                               ; preds = %1
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call i32* @of_get_property(%struct.device_node* %29, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %6)
  store i32* %30, i32** %7, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @ETH_ALEN, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %44

37:                                               ; preds = %33
  %38 = load %struct.pasemi_mac*, %struct.pasemi_mac** %3, align 8
  %39 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* @ETH_ALEN, align 4
  %43 = call i32 @memcpy(i32 %40, i32* %41, i32 %42)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %75

44:                                               ; preds = %33, %28
  %45 = load i32*, i32** %7, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %50

47:                                               ; preds = %44
  %48 = load %struct.device_node*, %struct.device_node** %5, align 8
  %49 = call i32* @of_get_property(%struct.device_node* %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i32* null)
  store i32* %49, i32** %7, align 8
  br label %50

50:                                               ; preds = %47, %44
  %51 = load i32*, i32** %7, align 8
  %52 = icmp eq i32* %51, null
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 0
  %56 = call i32 @dev_warn(i32* %55, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %75

59:                                               ; preds = %50
  %60 = load i32*, i32** %7, align 8
  %61 = call i32 @mac_pton(i32* %60, i32* %19)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i32 @dev_warn(i32* %65, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %75

69:                                               ; preds = %59
  %70 = load %struct.pasemi_mac*, %struct.pasemi_mac** %3, align 8
  %71 = getelementptr inbounds %struct.pasemi_mac, %struct.pasemi_mac* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @ETH_ALEN, align 4
  %74 = call i32 @memcpy(i32 %72, i32* %19, i32 %73)
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %75

75:                                               ; preds = %69, %63, %53, %37, %22
  %76 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %76)
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local %struct.device_node* @pci_device_to_OF_node(%struct.pci_dev*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32* @of_get_property(%struct.device_node*, i8*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @mac_pton(i32*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
