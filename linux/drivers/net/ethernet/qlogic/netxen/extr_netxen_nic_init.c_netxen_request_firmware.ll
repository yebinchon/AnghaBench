; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_request_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/netxen/extr_netxen_nic_init.c_netxen_request_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netxen_adapter = type { i64, i32*, %struct.pci_dev* }
%struct.pci_dev = type { i32 }

@NX_UNKNOWN_ROMIMAGE = common dso_local global i64 0, align 8
@NX_FLASH_ROMIMAGE = common dso_local global i64 0, align 8
@fw_name = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @netxen_request_firmware(%struct.netxen_adapter* %0) #0 {
  %2 = alloca %struct.netxen_adapter*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.netxen_adapter* %0, %struct.netxen_adapter** %2, align 8
  %5 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %6 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %5, i32 0, i32 2
  %7 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  store %struct.pci_dev* %7, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i64, i64* @NX_UNKNOWN_ROMIMAGE, align 8
  %9 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %10 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %9, i32 0, i32 0
  store i64 %8, i64* %10, align 8
  br label %11

11:                                               ; preds = %42, %36, %1
  %12 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %13 = call i32 @nx_get_next_fwtype(%struct.netxen_adapter* %12)
  %14 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %15 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NX_FLASH_ROMIMAGE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %11
  %20 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %21 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %20, i32 0, i32 1
  store i32* null, i32** %21, align 8
  br label %49

22:                                               ; preds = %11
  %23 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %23, i32 0, i32 1
  %25 = load i32*, i32** @fw_name, align 8
  %26 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %27 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = getelementptr inbounds i32, i32* %25, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %32 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %31, i32 0, i32 0
  %33 = call i32 @request_firmware(i32** %24, i32 %30, i32* %32)
  store i32 %33, i32* %4, align 4
  %34 = load i32, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %22
  br label %11

37:                                               ; preds = %22
  %38 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %39 = call i32 @netxen_validate_firmware(%struct.netxen_adapter* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.netxen_adapter*, %struct.netxen_adapter** %2, align 8
  %44 = getelementptr inbounds %struct.netxen_adapter, %struct.netxen_adapter* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @release_firmware(i32* %45)
  %47 = call i32 @msleep(i32 1)
  br label %11

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48, %19
  ret void
}

declare dso_local i32 @nx_get_next_fwtype(%struct.netxen_adapter*) #1

declare dso_local i32 @request_firmware(i32**, i32, i32*) #1

declare dso_local i32 @netxen_validate_firmware(%struct.netxen_adapter*) #1

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
