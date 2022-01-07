; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_init_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_init_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, i32, i32, %struct.TYPE_2__*, i8*, %struct.alx_hw }
%struct.TYPE_2__ = type { i32, i8*, i32 }
%struct.alx_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.pci_dev* }
%struct.pci_dev = type { i64, i64, i32, i64, i32 }

@.str = private unnamed_addr constant [29 x i8] c"unrecognized chip, aborting\0A\00", align 1
@ALX_DEV_ID_AR8161 = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_ATTANSIC = common dso_local global i64 0, align 8
@ALX_MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@ALX_ISR_MISC = common dso_local global i32 0, align 4
@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ALX_FC_ANEG = common dso_local global i32 0, align 4
@ALX_FC_RX = common dso_local global i32 0, align 4
@ALX_FC_TX = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_WOLSPED_SWEN = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_MHASH_ALG_HI5B = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_BRD_EN = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_PCRCE = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_CRCE = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_RXFC_EN = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_TXFC_EN = common dso_local global i32 0, align 4
@ALX_MAC_CTRL_PRMBLEN_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_priv*)* @alx_init_sw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alx_init_sw(%struct.alx_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.alx_priv*, align 8
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.alx_hw*, align 8
  %6 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %3, align 8
  %7 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %8 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %7, i32 0, i32 5
  %9 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %8, i32 0, i32 12
  %10 = load %struct.pci_dev*, %struct.pci_dev** %9, align 8
  store %struct.pci_dev* %10, %struct.pci_dev** %4, align 8
  %11 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %12 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %11, i32 0, i32 5
  store %struct.alx_hw* %12, %struct.alx_hw** %5, align 8
  %13 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %14 = call i32 @alx_identify_hw(%struct.alx_priv* %13)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %1
  %18 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %19 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %18, i32 0, i32 4
  %20 = call i32 @dev_err(i32* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %6, align 4
  store i32 %21, i32* %2, align 4
  br label %140

22:                                               ; preds = %1
  %23 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %24 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @ALX_DEV_ID_AR8161, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %44

28:                                               ; preds = %22
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @PCI_VENDOR_ID_ATTANSIC, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %28
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = icmp eq i32 %37, 145
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = icmp eq i64 %42, 0
  br label %44

44:                                               ; preds = %39, %34, %28, %22
  %45 = phi i1 [ false, %34 ], [ false, %28 ], [ false, %22 ], [ %43, %39 ]
  %46 = zext i1 %45 to i32
  %47 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %48 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %47, i32 0, i32 5
  %49 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 8
  %50 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %51 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %50, i32 0, i32 1
  store i32 400, i32* %51, align 4
  %52 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %53 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %52, i32 0, i32 3
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %58 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %57, i32 0, i32 11
  store i32 %56, i32* %58, align 4
  %59 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %60 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %59, i32 0, i32 11
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @ALX_MAX_FRAME_LEN(i32 %61)
  %63 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %64 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %63, i32 0, i32 4
  store i8* %62, i8** %64, align 8
  %65 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %66 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %65, i32 0, i32 3
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  store i32 34, i32* %68, align 8
  %69 = load i32, i32* @ALX_MAX_FRAME_SIZE, align 4
  %70 = call i8* @ALX_MAX_FRAME_LEN(i32 %69)
  %71 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %72 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i8* %70, i8** %74, align 8
  %75 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %76 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %75, i32 0, i32 0
  store i32 256, i32* %76, align 8
  %77 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %78 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %77, i32 0, i32 1
  store i32 512, i32* %78, align 4
  %79 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %80 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %79, i32 0, i32 2
  store i32 200, i32* %80, align 8
  %81 = load i32, i32* @ALX_ISR_MISC, align 4
  %82 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %83 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %85 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %84, i32 0, i32 9
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %88 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %87, i32 0, i32 10
  store i32 %86, i32* %88, align 8
  %89 = load %struct.alx_priv*, %struct.alx_priv** %3, align 8
  %90 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %91, 3
  %93 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %94 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @SPEED_UNKNOWN, align 4
  %96 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %97 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %96, i32 0, i32 8
  store i32 %95, i32* %97, align 8
  %98 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %99 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %100 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %99, i32 0, i32 7
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %102 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %103 = or i32 %101, %102
  %104 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %105 = or i32 %103, %104
  %106 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %109 = or i32 %107, %108
  %110 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %113 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %112, i32 0, i32 4
  store i32 %111, i32* %113, align 8
  %114 = load i32, i32* @ALX_FC_ANEG, align 4
  %115 = load i32, i32* @ALX_FC_RX, align 4
  %116 = or i32 %114, %115
  %117 = load i32, i32* @ALX_FC_TX, align 4
  %118 = or i32 %116, %117
  %119 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %120 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 4
  %121 = load i32, i32* @ALX_MAC_CTRL_WOLSPED_SWEN, align 4
  %122 = load i32, i32* @ALX_MAC_CTRL_MHASH_ALG_HI5B, align 4
  %123 = or i32 %121, %122
  %124 = load i32, i32* @ALX_MAC_CTRL_BRD_EN, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @ALX_MAC_CTRL_PCRCE, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @ALX_MAC_CTRL_CRCE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @ALX_MAC_CTRL_RXFC_EN, align 4
  %131 = or i32 %129, %130
  %132 = load i32, i32* @ALX_MAC_CTRL_TXFC_EN, align 4
  %133 = or i32 %131, %132
  %134 = load i32, i32* @ALX_MAC_CTRL_PRMBLEN_SHIFT, align 4
  %135 = shl i32 7, %134
  %136 = or i32 %133, %135
  %137 = load %struct.alx_hw*, %struct.alx_hw** %5, align 8
  %138 = getelementptr inbounds %struct.alx_hw, %struct.alx_hw* %137, i32 0, i32 6
  store i32 %136, i32* %138, align 8
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %2, align 4
  br label %140

140:                                              ; preds = %44, %17
  %141 = load i32, i32* %2, align 4
  ret i32 %141
}

declare dso_local i32 @alx_identify_hw(%struct.alx_priv*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i8* @ALX_MAX_FRAME_LEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
