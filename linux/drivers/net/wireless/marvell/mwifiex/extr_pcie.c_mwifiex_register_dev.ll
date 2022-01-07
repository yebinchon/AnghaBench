; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_register_dev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_register_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { i32, i32, i32, i32, %struct.pcie_service_card* }
%struct.pcie_service_card = type { %struct.TYPE_2__, %struct.mwifiex_adapter* }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_register_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_register_dev(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %6 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %5, i32 0, i32 4
  %7 = load %struct.pcie_service_card*, %struct.pcie_service_card** %6, align 8
  store %struct.pcie_service_card* %7, %struct.pcie_service_card** %4, align 8
  %8 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %10 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %9, i32 0, i32 1
  store %struct.mwifiex_adapter* %8, %struct.mwifiex_adapter** %10, align 8
  %11 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %12 = call i64 @mwifiex_pcie_request_irq(%struct.mwifiex_adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %42

15:                                               ; preds = %1
  %16 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %17 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %23 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %26, i32 0, i32 2
  store i32 %25, i32* %27, align 8
  %28 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %29 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %33 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %35 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %39 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %41 = call i32 @mwifiex_pcie_get_fw_name(%struct.mwifiex_adapter* %40)
  store i32 0, i32* %2, align 4
  br label %42

42:                                               ; preds = %15, %14
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i64 @mwifiex_pcie_request_irq(%struct.mwifiex_adapter*) #1

declare dso_local i32 @mwifiex_pcie_get_fw_name(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
