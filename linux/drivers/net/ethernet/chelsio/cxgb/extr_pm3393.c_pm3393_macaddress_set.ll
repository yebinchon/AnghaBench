; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_pm3393.c_pm3393_macaddress_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_pm3393.c_pm3393_macaddress_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_SA_15_0 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_SA_31_16 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_SA_47_32 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_SA_15_0 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_SA_31_16 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_SA_47_32 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_LOW = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_MID = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_HIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i64*)* @pm3393_macaddress_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_macaddress_set(%struct.cmac* %0, i64* %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.cmac*, %struct.cmac** %3, align 8
  %11 = getelementptr inbounds %struct.cmac, %struct.cmac* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.cmac*, %struct.cmac** %3, align 8
  %16 = getelementptr inbounds %struct.cmac, %struct.cmac* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load i64*, i64** %4, align 8
  %21 = load i32, i32* @ETH_ALEN, align 4
  %22 = call i32 @memcpy(i32 %19, i64* %20, i32 %21)
  %23 = load i64*, i64** %4, align 8
  %24 = getelementptr inbounds i64, i64* %23, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = trunc i64 %25 to i32
  %27 = shl i32 %26, 8
  %28 = load i64*, i64** %4, align 8
  %29 = getelementptr inbounds i64, i64* %28, i64 0
  %30 = load i64, i64* %29, align 8
  %31 = trunc i64 %30 to i32
  %32 = or i32 %27, %31
  store i32 %32, i32* %6, align 4
  %33 = load i64*, i64** %4, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 3
  %35 = load i64, i64* %34, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 %36, 8
  %38 = load i64*, i64** %4, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 2
  %40 = load i64, i64* %39, align 8
  %41 = trunc i64 %40 to i32
  %42 = or i32 %37, %41
  store i32 %42, i32* %7, align 4
  %43 = load i64*, i64** %4, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 5
  %45 = load i64, i64* %44, align 8
  %46 = trunc i64 %45 to i32
  %47 = shl i32 %46, 8
  %48 = load i64*, i64** %4, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 4
  %50 = load i64, i64* %49, align 8
  %51 = trunc i64 %50 to i32
  %52 = or i32 %47, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %9, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %2
  %56 = load %struct.cmac*, %struct.cmac** %3, align 8
  %57 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %58 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @pm3393_disable(%struct.cmac* %56, i32 %59)
  br label %61

61:                                               ; preds = %55, %2
  %62 = load %struct.cmac*, %struct.cmac** %3, align 8
  %63 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_SA_15_0, align 4
  %64 = load i32, i32* %6, align 4
  %65 = call i32 @pmwrite(%struct.cmac* %62, i32 %63, i32 %64)
  %66 = load %struct.cmac*, %struct.cmac** %3, align 8
  %67 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_SA_31_16, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @pmwrite(%struct.cmac* %66, i32 %67, i32 %68)
  %70 = load %struct.cmac*, %struct.cmac** %3, align 8
  %71 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_SA_47_32, align 4
  %72 = load i32, i32* %8, align 4
  %73 = call i32 @pmwrite(%struct.cmac* %70, i32 %71, i32 %72)
  %74 = load %struct.cmac*, %struct.cmac** %3, align 8
  %75 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_SA_15_0, align 4
  %76 = load i32, i32* %6, align 4
  %77 = call i32 @pmwrite(%struct.cmac* %74, i32 %75, i32 %76)
  %78 = load %struct.cmac*, %struct.cmac** %3, align 8
  %79 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_SA_31_16, align 4
  %80 = load i32, i32* %7, align 4
  %81 = call i32 @pmwrite(%struct.cmac* %78, i32 %79, i32 %80)
  %82 = load %struct.cmac*, %struct.cmac** %3, align 8
  %83 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_SA_47_32, align 4
  %84 = load i32, i32* %8, align 4
  %85 = call i32 @pmwrite(%struct.cmac* %82, i32 %83, i32 %84)
  %86 = load %struct.cmac*, %struct.cmac** %3, align 8
  %87 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, align 4
  %88 = call i32 @pmread(%struct.cmac* %86, i32 %87, i32* %5)
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, 65295
  store i32 %90, i32* %5, align 4
  %91 = load %struct.cmac*, %struct.cmac** %3, align 8
  %92 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, align 4
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @pmwrite(%struct.cmac* %91, i32 %92, i32 %93)
  %95 = load %struct.cmac*, %struct.cmac** %3, align 8
  %96 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_LOW, align 4
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @pmwrite(%struct.cmac* %95, i32 %96, i32 %97)
  %99 = load %struct.cmac*, %struct.cmac** %3, align 8
  %100 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_MID, align 4
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @pmwrite(%struct.cmac* %99, i32 %100, i32 %101)
  %103 = load %struct.cmac*, %struct.cmac** %3, align 8
  %104 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_EXACT_MATCH_ADDR_1_HIGH, align 4
  %105 = load i32, i32* %8, align 4
  %106 = call i32 @pmwrite(%struct.cmac* %103, i32 %104, i32 %105)
  %107 = load i32, i32* %5, align 4
  %108 = or i32 %107, 144
  store i32 %108, i32* %5, align 4
  %109 = load %struct.cmac*, %struct.cmac** %3, align 8
  %110 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_0, align 4
  %111 = load i32, i32* %5, align 4
  %112 = call i32 @pmwrite(%struct.cmac* %109, i32 %110, i32 %111)
  %113 = load i32, i32* %9, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %61
  %116 = load %struct.cmac*, %struct.cmac** %3, align 8
  %117 = load i32, i32* %9, align 4
  %118 = call i32 @pm3393_enable(%struct.cmac* %116, i32 %117)
  br label %119

119:                                              ; preds = %115, %61
  ret i32 0
}

declare dso_local i32 @memcpy(i32, i64*, i32) #1

declare dso_local i32 @pm3393_disable(%struct.cmac*, i32) #1

declare dso_local i32 @pmwrite(%struct.cmac*, i32, i32) #1

declare dso_local i32 @pmread(%struct.cmac*, i32, i32*) #1

declare dso_local i32 @pm3393_enable(%struct.cmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
