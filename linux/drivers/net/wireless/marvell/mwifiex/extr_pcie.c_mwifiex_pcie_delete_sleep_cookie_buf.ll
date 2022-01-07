; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_delete_sleep_cookie_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_delete_sleep_cookie_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_delete_sleep_cookie_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_delete_sleep_cookie_buf(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %6 = icmp ne %struct.mwifiex_adapter* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 0
  %11 = load %struct.pcie_service_card*, %struct.pcie_service_card** %10, align 8
  store %struct.pcie_service_card* %11, %struct.pcie_service_card** %4, align 8
  %12 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %13 = icmp ne %struct.pcie_service_card* %12, null
  br i1 %13, label %14, label %32

14:                                               ; preds = %8
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %32

19:                                               ; preds = %14
  %20 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %21 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %24 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %27 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pci_free_consistent(i32 %22, i32 4, i32* %25, i32 %28)
  %30 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %31 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %19, %14, %8
  store i32 0, i32* %2, align 4
  br label %33

33:                                               ; preds = %32, %7
  %34 = load i32, i32* %2, align 4
  ret i32 %34
}

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
