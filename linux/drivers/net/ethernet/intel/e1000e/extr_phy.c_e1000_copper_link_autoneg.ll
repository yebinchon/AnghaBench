; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_copper_link_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/e1000e/extr_phy.c_e1000_copper_link_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__, %struct.e1000_phy_info }
%struct.TYPE_2__ = type { i32 }
%struct.e1000_phy_info = type { i64, i32, i32 }

@.str = private unnamed_addr constant [45 x i8] c"Reconfiguring auto-neg advertisement params\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Error Setting up Auto-Negotiation\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Restarting Auto-Neg\0A\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [45 x i8] c"Error while waiting for autoneg to complete\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_copper_link_autoneg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_copper_link_autoneg(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca %struct.e1000_phy_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %7 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %8 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %7, i32 0, i32 1
  store %struct.e1000_phy_info* %8, %struct.e1000_phy_info** %4, align 8
  %9 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %10 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %13 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %17 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %1
  %21 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %22 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %25 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %24, i32 0, i32 2
  store i32 %23, i32* %25, align 4
  br label %26

26:                                               ; preds = %20, %1
  %27 = call i32 @e_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %29 = call i64 @e1000_phy_setup_autoneg(%struct.e1000_hw* %28)
  store i64 %29, i64* %5, align 8
  %30 = load i64, i64* %5, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = call i32 @e_dbg(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  %34 = load i64, i64* %5, align 8
  store i64 %34, i64* %2, align 8
  br label %77

35:                                               ; preds = %26
  %36 = call i32 @e_dbg(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %37 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %38 = load i32, i32* @MII_BMCR, align 4
  %39 = call i64 @e1e_rphy(%struct.e1000_hw* %37, i32 %38, i32* %6)
  store i64 %39, i64* %5, align 8
  %40 = load i64, i64* %5, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %35
  %43 = load i64, i64* %5, align 8
  store i64 %43, i64* %2, align 8
  br label %77

44:                                               ; preds = %35
  %45 = load i32, i32* @BMCR_ANENABLE, align 4
  %46 = load i32, i32* @BMCR_ANRESTART, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* %6, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %6, align 4
  %50 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %51 = load i32, i32* @MII_BMCR, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i64 @e1e_wphy(%struct.e1000_hw* %50, i32 %51, i32 %52)
  store i64 %53, i64* %5, align 8
  %54 = load i64, i64* %5, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %44
  %57 = load i64, i64* %5, align 8
  store i64 %57, i64* %2, align 8
  br label %77

58:                                               ; preds = %44
  %59 = load %struct.e1000_phy_info*, %struct.e1000_phy_info** %4, align 8
  %60 = getelementptr inbounds %struct.e1000_phy_info, %struct.e1000_phy_info* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %58
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %65 = call i64 @e1000_wait_autoneg(%struct.e1000_hw* %64)
  store i64 %65, i64* %5, align 8
  %66 = load i64, i64* %5, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = call i32 @e_dbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %70 = load i64, i64* %5, align 8
  store i64 %70, i64* %2, align 8
  br label %77

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %71, %58
  %73 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %74 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load i64, i64* %5, align 8
  store i64 %76, i64* %2, align 8
  br label %77

77:                                               ; preds = %72, %68, %56, %42, %32
  %78 = load i64, i64* %2, align 8
  ret i64 %78
}

declare dso_local i32 @e_dbg(i8*) #1

declare dso_local i64 @e1000_phy_setup_autoneg(%struct.e1000_hw*) #1

declare dso_local i64 @e1e_rphy(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1e_wphy(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @e1000_wait_autoneg(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
