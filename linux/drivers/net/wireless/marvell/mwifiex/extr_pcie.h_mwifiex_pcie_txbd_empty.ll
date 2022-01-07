; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.h_mwifiex_pcie_txbd_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.h_mwifiex_pcie_txbd_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_service_card = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_service_card*, i32)* @mwifiex_pcie_txbd_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_txbd_empty(%struct.pcie_service_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcie_service_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  store %struct.pcie_service_card* %0, %struct.pcie_service_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %8 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %9, align 8
  store %struct.mwifiex_pcie_card_reg* %10, %struct.mwifiex_pcie_card_reg** %6, align 8
  %11 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %12 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %76 [
    i32 130, label %16
    i32 129, label %46
    i32 128, label %46
  ]

16:                                               ; preds = %2
  %17 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %18 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %21 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %19, %22
  %24 = load i32, i32* %5, align 4
  %25 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %26 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp eq i32 %23, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %16
  %31 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %32 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %35 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %40 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %38, %41
  %43 = icmp ne i32 %37, %42
  br i1 %43, label %44, label %45

44:                                               ; preds = %30
  store i32 1, i32* %3, align 4
  br label %77

45:                                               ; preds = %30, %16
  br label %76

46:                                               ; preds = %2, %2
  %47 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %48 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %51 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = and i32 %49, %52
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %56 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %54, %57
  %59 = icmp eq i32 %53, %58
  br i1 %59, label %60, label %75

60:                                               ; preds = %46
  %61 = load %struct.pcie_service_card*, %struct.pcie_service_card** %4, align 8
  %62 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %65 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %63, %66
  %68 = load i32, i32* %5, align 4
  %69 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %6, align 8
  %70 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = and i32 %68, %71
  %73 = icmp eq i32 %67, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %60
  store i32 1, i32* %3, align 4
  br label %77

75:                                               ; preds = %60, %46
  br label %76

76:                                               ; preds = %2, %75, %45
  store i32 0, i32* %3, align 4
  br label %77

77:                                               ; preds = %76, %74, %44
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
