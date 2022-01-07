; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_alloc_sleep_cookie_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_alloc_sleep_cookie_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32, i32, i32 }

@ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"pci_alloc_consistent failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@FW_AWAKE_COOKIE = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"alloc_scook: sleep cookie=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_alloc_sleep_cookie_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_alloc_sleep_cookie_buf(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca i32, align 4
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 0
  %8 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  store %struct.pcie_service_card* %8, %struct.pcie_service_card** %4, align 8
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %10 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %13 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %12, i32 0, i32 1
  %14 = call i32 @pci_alloc_consistent(i32 %11, i32 4, i32* %13)
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %18 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %27, label %21

21:                                               ; preds = %1
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %23 = load i32, i32* @ERROR, align 4
  %24 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %22, i32 %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %1
  %28 = load i32, i32* @FW_AWAKE_COOKIE, align 4
  store i32 %28, i32* %5, align 4
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %31 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @put_unaligned(i32 %29, i32 %32)
  %34 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %35 = load i32, i32* @INFO, align 4
  %36 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %37 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @get_unaligned(i32 %38)
  %40 = call i32 (%struct.mwifiex_adapter*, i32, i8*, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %34, i32 %35, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %27, %21
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, ...) #1

declare dso_local i32 @put_unaligned(i32, i32) #1

declare dso_local i32 @get_unaligned(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
