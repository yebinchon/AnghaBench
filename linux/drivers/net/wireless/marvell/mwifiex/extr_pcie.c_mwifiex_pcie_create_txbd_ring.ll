; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_create_txbd_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.c_mwifiex_pcie_create_txbd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.pcie_service_card* }
%struct.pcie_service_card = type { i32, i64, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i64, i32 }

@MWIFIEX_MAX_TXRX_BD = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"info: txbd_ring: Allocating %d bytes\0A\00", align 1
@ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"allocate consistent memory (%d bytes) failed!\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DATA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"info: txbd_ring - base: %p, pbase: %#x:%x, len: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mwifiex_adapter*)* @mwifiex_pcie_create_txbd_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_create_txbd_ring(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %6 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %6, i32 0, i32 0
  %8 = load %struct.pcie_service_card*, %struct.pcie_service_card** %7, align 8
  store %struct.pcie_service_card* %8, %struct.pcie_service_card** %4, align 8
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %10 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %9, i32 0, i32 6
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %11, align 8
  store %struct.mwifiex_pcie_card_reg* %12, %struct.mwifiex_pcie_card_reg** %5, align 8
  %13 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %14 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %13, i32 0, i32 5
  store i64 0, i64* %14, align 8
  %15 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %16 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %21 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %20, i32 0, i32 4
  store i32 0, i32* %21, align 8
  br label %30

22:                                               ; preds = %1
  %23 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %24 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %27 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %26, i32 0, i32 4
  %28 = load i32, i32* %27, align 8
  %29 = or i32 %28, %25
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %22, %19
  %31 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %5, align 8
  %32 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %30
  %36 = load i32, i32* @MWIFIEX_MAX_TXRX_BD, align 4
  %37 = sext i32 %36 to i64
  %38 = mul i64 4, %37
  %39 = trunc i64 %38 to i32
  %40 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %41 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %49

42:                                               ; preds = %30
  %43 = load i32, i32* @MWIFIEX_MAX_TXRX_BD, align 4
  %44 = sext i32 %43 to i64
  %45 = mul i64 4, %44
  %46 = trunc i64 %45 to i32
  %47 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %48 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %42, %35
  %50 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %51 = load i32, i32* @INFO, align 4
  %52 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %53 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %50, i32 %51, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %54)
  %56 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %57 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %60 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %63 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %62, i32 0, i32 1
  %64 = call i32 @pci_alloc_consistent(i32 %58, i32 %61, i64* %63)
  %65 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %66 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 8
  %67 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %68 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %80, label %71

71:                                               ; preds = %49
  %72 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %73 = load i32, i32* @ERROR, align 4
  %74 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %75 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %72, i32 %73, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* @ENOMEM, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %101

80:                                               ; preds = %49
  %81 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %82 = load i32, i32* @DATA, align 4
  %83 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %84 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %87 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = trunc i64 %88 to i32
  %90 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %91 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = ashr i32 %93, 32
  %95 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %96 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (%struct.mwifiex_adapter*, i32, i8*, i32, ...) @mwifiex_dbg(%struct.mwifiex_adapter* %81, i32 %82, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %85, i32 %89, i32 %94, i32 %97)
  %99 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %100 = call i32 @mwifiex_init_txq_ring(%struct.mwifiex_adapter* %99)
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %80, %71
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @mwifiex_dbg(%struct.mwifiex_adapter*, i32, i8*, i32, ...) #1

declare dso_local i32 @pci_alloc_consistent(i32, i32, i64*) #1

declare dso_local i32 @mwifiex_init_txq_ring(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
