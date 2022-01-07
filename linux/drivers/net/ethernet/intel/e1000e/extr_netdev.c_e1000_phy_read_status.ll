; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_phy_read_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_netdev.c_e1000_phy_read_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_adapter = type { %struct.e1000_hw, %struct.TYPE_5__*, %struct.e1000_phy_regs }
%struct.e1000_hw = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.e1000_phy_regs = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_LU = common dso_local global i32 0, align 4
@e1000_media_type_copper = common dso_local global i64 0, align 8
@MII_BMCR = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@MII_EXPANSION = common dso_local global i32 0, align 4
@MII_CTRL1000 = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@MII_ESTATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error reading PHY register\0A\00", align 1
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@BMSR_100FULL = common dso_local global i32 0, align 4
@BMSR_100HALF = common dso_local global i32 0, align 4
@BMSR_10FULL = common dso_local global i32 0, align 4
@BMSR_10HALF = common dso_local global i32 0, align 4
@BMSR_ESTATEN = common dso_local global i32 0, align 4
@BMSR_ANEGCAPABLE = common dso_local global i32 0, align 4
@BMSR_ERCAP = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_CSMA = common dso_local global i32 0, align 4
@EXPANSION_ENABLENPAGE = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ESTATUS_1000_TFULL = common dso_local global i32 0, align 4
@ESTATUS_1000_THALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_adapter*)* @e1000_phy_read_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_phy_read_status(%struct.e1000_adapter* %0) #0 {
  %2 = alloca %struct.e1000_adapter*, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_regs*, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_adapter* %0, %struct.e1000_adapter** %2, align 8
  %6 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %6, i32 0, i32 0
  store %struct.e1000_hw* %7, %struct.e1000_hw** %3, align 8
  %8 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %8, i32 0, i32 2
  store %struct.e1000_phy_regs* %9, %struct.e1000_phy_regs** %4, align 8
  %10 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @pm_runtime_suspended(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %92, label %18

18:                                               ; preds = %1
  %19 = load i32, i32* @STATUS, align 4
  %20 = call i32 @er32(i32 %19)
  %21 = load i32, i32* @E1000_STATUS_LU, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %92

24:                                               ; preds = %18
  %25 = load %struct.e1000_adapter*, %struct.e1000_adapter** %2, align 8
  %26 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @e1000_media_type_copper, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %92

32:                                               ; preds = %24
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %34 = load i32, i32* @MII_BMCR, align 4
  %35 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %36 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %35, i32 0, i32 0
  %37 = call i32 @e1e_rphy(%struct.e1000_hw* %33, i32 %34, i32* %36)
  store i32 %37, i32* %5, align 4
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = load i32, i32* @MII_BMSR, align 4
  %40 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %41 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %40, i32 0, i32 1
  %42 = call i32 @e1e_rphy(%struct.e1000_hw* %38, i32 %39, i32* %41)
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %46 = load i32, i32* @MII_ADVERTISE, align 4
  %47 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %48 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %47, i32 0, i32 2
  %49 = call i32 @e1e_rphy(%struct.e1000_hw* %45, i32 %46, i32* %48)
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  %52 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %53 = load i32, i32* @MII_LPA, align 4
  %54 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %55 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %54, i32 0, i32 3
  %56 = call i32 @e1e_rphy(%struct.e1000_hw* %52, i32 %53, i32* %55)
  %57 = load i32, i32* %5, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %5, align 4
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %60 = load i32, i32* @MII_EXPANSION, align 4
  %61 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %62 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %61, i32 0, i32 4
  %63 = call i32 @e1e_rphy(%struct.e1000_hw* %59, i32 %60, i32* %62)
  %64 = load i32, i32* %5, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %67 = load i32, i32* @MII_CTRL1000, align 4
  %68 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %69 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %68, i32 0, i32 5
  %70 = call i32 @e1e_rphy(%struct.e1000_hw* %66, i32 %67, i32* %69)
  %71 = load i32, i32* %5, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %5, align 4
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = load i32, i32* @MII_STAT1000, align 4
  %75 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %76 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %75, i32 0, i32 6
  %77 = call i32 @e1e_rphy(%struct.e1000_hw* %73, i32 %74, i32* %76)
  %78 = load i32, i32* %5, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %5, align 4
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %81 = load i32, i32* @MII_ESTATUS, align 4
  %82 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %83 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %82, i32 0, i32 7
  %84 = call i32 @e1e_rphy(%struct.e1000_hw* %80, i32 %81, i32* %83)
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %32
  %90 = call i32 @e_warn(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %91

91:                                               ; preds = %89, %32
  br label %139

92:                                               ; preds = %24, %18, %1
  %93 = load i32, i32* @BMCR_SPEED1000, align 4
  %94 = load i32, i32* @BMCR_ANENABLE, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @BMCR_FULLDPLX, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %99 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %98, i32 0, i32 0
  store i32 %97, i32* %99, align 4
  %100 = load i32, i32* @BMSR_100FULL, align 4
  %101 = load i32, i32* @BMSR_100HALF, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @BMSR_10FULL, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @BMSR_10HALF, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @BMSR_ESTATEN, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @BMSR_ANEGCAPABLE, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @BMSR_ERCAP, align 4
  %112 = or i32 %110, %111
  %113 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %114 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %113, i32 0, i32 1
  store i32 %112, i32* %114, align 4
  %115 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %116 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @ADVERTISE_ALL, align 4
  %119 = or i32 %117, %118
  %120 = load i32, i32* @ADVERTISE_CSMA, align 4
  %121 = or i32 %119, %120
  %122 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %123 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %122, i32 0, i32 2
  store i32 %121, i32* %123, align 4
  %124 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %125 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %124, i32 0, i32 3
  store i32 0, i32* %125, align 4
  %126 = load i32, i32* @EXPANSION_ENABLENPAGE, align 4
  %127 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %128 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %127, i32 0, i32 4
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %130 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %131 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 4
  %132 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %133 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %132, i32 0, i32 6
  store i32 0, i32* %133, align 4
  %134 = load i32, i32* @ESTATUS_1000_TFULL, align 4
  %135 = load i32, i32* @ESTATUS_1000_THALF, align 4
  %136 = or i32 %134, %135
  %137 = load %struct.e1000_phy_regs*, %struct.e1000_phy_regs** %4, align 8
  %138 = getelementptr inbounds %struct.e1000_phy_regs, %struct.e1000_phy_regs* %137, i32 0, i32 7
  store i32 %136, i32* %138, align 4
  br label %139

139:                                              ; preds = %92, %91
  ret void
}

declare dso_local i32 @pm_runtime_suspended(i32) #1

declare dso_local i32 @er32(i32) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
