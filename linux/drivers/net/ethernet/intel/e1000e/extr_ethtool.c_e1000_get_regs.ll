; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_get_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_ethtool.c_e1000_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.e1000_adapter = type { %struct.TYPE_7__, %struct.e1000_hw, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i64 }
%struct.e1000_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32, i32 }

@E1000_REGS_LEN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@RDTR = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@TIDV = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @e1000_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.e1000_adapter* %12, %struct.e1000_adapter** %7, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 1
  store %struct.e1000_hw* %14, %struct.e1000_hw** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %9, align 8
  %17 = load %struct.net_device*, %struct.net_device** %4, align 8
  %18 = getelementptr inbounds %struct.net_device, %struct.net_device* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @pm_runtime_get_sync(i32 %20)
  %22 = load i8*, i8** %6, align 8
  %23 = load i32, i32* @E1000_REGS_LEN, align 4
  %24 = sext i32 %23 to i64
  %25 = mul i64 %24, 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @memset(i8* %22, i32 0, i32 %26)
  %28 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %29 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %28, i32 0, i32 2
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 16
  %34 = or i32 16777216, %33
  %35 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %36 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %35, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = or i32 %34, %39
  %41 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %42 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* @CTRL, align 4
  %44 = call i64 @er32(i32 %43)
  %45 = load i64*, i64** %9, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 0
  store i64 %44, i64* %46, align 8
  %47 = load i32, i32* @STATUS, align 4
  %48 = call i64 @er32(i32 %47)
  %49 = load i64*, i64** %9, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @RCTL, align 4
  %52 = call i64 @er32(i32 %51)
  %53 = load i64*, i64** %9, align 8
  %54 = getelementptr inbounds i64, i64* %53, i64 2
  store i64 %52, i64* %54, align 8
  %55 = call i32 @RDLEN(i32 0)
  %56 = call i64 @er32(i32 %55)
  %57 = load i64*, i64** %9, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 3
  store i64 %56, i64* %58, align 8
  %59 = call i32 @RDH(i32 0)
  %60 = call i64 @er32(i32 %59)
  %61 = load i64*, i64** %9, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 4
  store i64 %60, i64* %62, align 8
  %63 = call i32 @RDT(i32 0)
  %64 = call i64 @er32(i32 %63)
  %65 = load i64*, i64** %9, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 5
  store i64 %64, i64* %66, align 8
  %67 = load i32, i32* @RDTR, align 4
  %68 = call i64 @er32(i32 %67)
  %69 = load i64*, i64** %9, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 6
  store i64 %68, i64* %70, align 8
  %71 = load i32, i32* @TCTL, align 4
  %72 = call i64 @er32(i32 %71)
  %73 = load i64*, i64** %9, align 8
  %74 = getelementptr inbounds i64, i64* %73, i64 7
  store i64 %72, i64* %74, align 8
  %75 = call i32 @TDLEN(i32 0)
  %76 = call i64 @er32(i32 %75)
  %77 = load i64*, i64** %9, align 8
  %78 = getelementptr inbounds i64, i64* %77, i64 8
  store i64 %76, i64* %78, align 8
  %79 = call i32 @TDH(i32 0)
  %80 = call i64 @er32(i32 %79)
  %81 = load i64*, i64** %9, align 8
  %82 = getelementptr inbounds i64, i64* %81, i64 9
  store i64 %80, i64* %82, align 8
  %83 = call i32 @TDT(i32 0)
  %84 = call i64 @er32(i32 %83)
  %85 = load i64*, i64** %9, align 8
  %86 = getelementptr inbounds i64, i64* %85, i64 10
  store i64 %84, i64* %86, align 8
  %87 = load i32, i32* @TIDV, align 4
  %88 = call i64 @er32(i32 %87)
  %89 = load i64*, i64** %9, align 8
  %90 = getelementptr inbounds i64, i64* %89, i64 11
  store i64 %88, i64* %90, align 8
  %91 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %92 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64*, i64** %9, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 12
  store i64 %95, i64* %97, align 8
  %98 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %99 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @e1000_phy_m88, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %146

104:                                              ; preds = %3
  %105 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %106 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %107 = call i32 @e1e_rphy(%struct.e1000_hw* %105, i32 %106, i64* %10)
  %108 = load i64, i64* %10, align 8
  %109 = load i64*, i64** %9, align 8
  %110 = getelementptr inbounds i64, i64* %109, i64 13
  store i64 %108, i64* %110, align 8
  %111 = load i64*, i64** %9, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 14
  store i64 0, i64* %112, align 8
  %113 = load i64*, i64** %9, align 8
  %114 = getelementptr inbounds i64, i64* %113, i64 15
  store i64 0, i64* %114, align 8
  %115 = load i64*, i64** %9, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 16
  store i64 0, i64* %116, align 8
  %117 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %118 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %119 = call i32 @e1e_rphy(%struct.e1000_hw* %117, i32 %118, i64* %10)
  %120 = load i64, i64* %10, align 8
  %121 = load i64*, i64** %9, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 17
  store i64 %120, i64* %122, align 8
  %123 = load i64*, i64** %9, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 13
  %125 = load i64, i64* %124, align 8
  %126 = load i64*, i64** %9, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 18
  store i64 %125, i64* %127, align 8
  %128 = load i64*, i64** %9, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 19
  store i64 0, i64* %129, align 8
  %130 = load i64*, i64** %9, align 8
  %131 = getelementptr inbounds i64, i64* %130, i64 17
  %132 = load i64, i64* %131, align 8
  %133 = load i64*, i64** %9, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 20
  store i64 %132, i64* %134, align 8
  %135 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %136 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 22
  store i64 %138, i64* %140, align 8
  %141 = load i64*, i64** %9, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 13
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** %9, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 23
  store i64 %143, i64* %145, align 8
  br label %146

146:                                              ; preds = %104, %3
  %147 = load i64*, i64** %9, align 8
  %148 = getelementptr inbounds i64, i64* %147, i64 21
  store i64 0, i64* %148, align 8
  %149 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %150 = load i32, i32* @MII_STAT1000, align 4
  %151 = call i32 @e1e_rphy(%struct.e1000_hw* %149, i32 %150, i64* %10)
  %152 = load i64, i64* %10, align 8
  %153 = load i64*, i64** %9, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 24
  store i64 %152, i64* %154, align 8
  %155 = load i64*, i64** %9, align 8
  %156 = getelementptr inbounds i64, i64* %155, i64 24
  %157 = load i64, i64* %156, align 8
  %158 = load i64*, i64** %9, align 8
  %159 = getelementptr inbounds i64, i64* %158, i64 25
  store i64 %157, i64* %159, align 8
  %160 = load %struct.net_device*, %struct.net_device** %4, align 8
  %161 = getelementptr inbounds %struct.net_device, %struct.net_device* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = call i32 @pm_runtime_put_sync(i32 %163)
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @RDLEN(i32) #1

declare dso_local i32 @RDH(i32) #1

declare dso_local i32 @RDT(i32) #1

declare dso_local i32 @TDLEN(i32) #1

declare dso_local i32 @TDH(i32) #1

declare dso_local i32 @TDT(i32) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i64*) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
