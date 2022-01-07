; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_vf_mac_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/igb/extr_igb_main.c_igb_set_vf_mac_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.igb_adapter = type { %struct.vf_data_storage*, %struct.pci_dev* }
%struct.vf_data_storage = type { i32, i32 }
%struct.pci_dev = type { i32 }

@E1000_VT_MSGINFO_MASK = common dso_local global i32 0, align 4
@IGB_VF_FLAG_PF_SET_MAC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [104 x i8] c"VF %d attempted to override administratively set MAC address\0AReload the VF driver to resume operations\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"VF %d attempted to set invalid MAC\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.igb_adapter*, i32*, i32)* @igb_set_vf_mac_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @igb_set_vf_mac_addr(%struct.igb_adapter* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.igb_adapter*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.pci_dev*, align 8
  %9 = alloca %struct.vf_data_storage*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.igb_adapter* %0, %struct.igb_adapter** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %14 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %13, i32 0, i32 1
  %15 = load %struct.pci_dev*, %struct.pci_dev** %14, align 8
  store %struct.pci_dev* %15, %struct.pci_dev** %8, align 8
  %16 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %17 = getelementptr inbounds %struct.igb_adapter, %struct.igb_adapter* %16, i32 0, i32 0
  %18 = load %struct.vf_data_storage*, %struct.vf_data_storage** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %18, i64 %20
  store %struct.vf_data_storage* %21, %struct.vf_data_storage** %9, align 8
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @E1000_VT_MSGINFO_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = bitcast i32* %28 to i8*
  store i8* %29, i8** %11, align 8
  store i32 0, i32* %12, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %67, label %32

32:                                               ; preds = %3
  %33 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %34 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @IGB_VF_FLAG_PF_SET_MAC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %32
  %40 = load %struct.vf_data_storage*, %struct.vf_data_storage** %9, align 8
  %41 = getelementptr inbounds %struct.vf_data_storage, %struct.vf_data_storage* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %39
  %45 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %46 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %45, i32 0, i32 0
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([104 x i8], [104 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %75

51:                                               ; preds = %39, %32
  %52 = load i8*, i8** %11, align 8
  %53 = call i32 @is_valid_ether_addr(i8* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %51
  %56 = load %struct.pci_dev*, %struct.pci_dev** %8, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @dev_warn(i32* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %75

62:                                               ; preds = %51
  %63 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %64 = load i32, i32* %7, align 4
  %65 = load i8*, i8** %11, align 8
  %66 = call i32 @igb_set_vf_mac(%struct.igb_adapter* %63, i32 %64, i8* %65)
  store i32 %66, i32* %12, align 4
  br label %73

67:                                               ; preds = %3
  %68 = load %struct.igb_adapter*, %struct.igb_adapter** %5, align 8
  %69 = load i32, i32* %7, align 4
  %70 = load i32, i32* %10, align 4
  %71 = load i8*, i8** %11, align 8
  %72 = call i32 @igb_set_vf_mac_filter(%struct.igb_adapter* %68, i32 %69, i32 %70, i8* %71)
  store i32 %72, i32* %12, align 4
  br label %73

73:                                               ; preds = %67, %62
  %74 = load i32, i32* %12, align 4
  store i32 %74, i32* %4, align 4
  br label %75

75:                                               ; preds = %73, %55, %44
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local i32 @igb_set_vf_mac(%struct.igb_adapter*, i32, i8*) #1

declare dso_local i32 @igb_set_vf_mac_filter(%struct.igb_adapter*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
