; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.h_mwifiex_pcie_txbd_not_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_pcie.h_mwifiex_pcie_txbd_not_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcie_service_card = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.mwifiex_pcie_card_reg* }
%struct.mwifiex_pcie_card_reg = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcie_service_card*)* @mwifiex_pcie_txbd_not_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mwifiex_pcie_txbd_not_full(%struct.pcie_service_card* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcie_service_card*, align 8
  %4 = alloca %struct.mwifiex_pcie_card_reg*, align 8
  store %struct.pcie_service_card* %0, %struct.pcie_service_card** %3, align 8
  %5 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %6 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %5, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %7, align 8
  store %struct.mwifiex_pcie_card_reg* %8, %struct.mwifiex_pcie_card_reg** %4, align 8
  %9 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %10 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %82 [
    i32 130, label %14
    i32 129, label %48
    i32 128, label %48
  ]

14:                                               ; preds = %1
  %15 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %16 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %19 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %17, %20
  %22 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %23 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %26 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %21, %28
  br i1 %29, label %46, label %30

30:                                               ; preds = %14
  %31 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %32 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %35 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = and i32 %33, %36
  %38 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %39 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %42 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %37, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %30, %14
  store i32 1, i32* %2, align 4
  br label %83

47:                                               ; preds = %30
  br label %82

48:                                               ; preds = %1, %1
  %49 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %50 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %53 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %51, %54
  %56 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %57 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %60 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %58, %61
  %63 = icmp ne i32 %55, %62
  br i1 %63, label %80, label %64

64:                                               ; preds = %48
  %65 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %66 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %69 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %67, %70
  %72 = load %struct.pcie_service_card*, %struct.pcie_service_card** %3, align 8
  %73 = getelementptr inbounds %struct.pcie_service_card, %struct.pcie_service_card* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.mwifiex_pcie_card_reg*, %struct.mwifiex_pcie_card_reg** %4, align 8
  %76 = getelementptr inbounds %struct.mwifiex_pcie_card_reg, %struct.mwifiex_pcie_card_reg* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %74, %77
  %79 = icmp eq i32 %71, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %64, %48
  store i32 1, i32* %2, align 4
  br label %83

81:                                               ; preds = %64
  br label %82

82:                                               ; preds = %1, %81, %47
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %80, %46
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
