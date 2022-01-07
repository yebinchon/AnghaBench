; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_mdio_link_not_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_mdio_link_not_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32, i32, i32, i32, i8*, i32 }

@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Autoneg failed again, keeping forced mode\0A\00", align 1
@MII_BMCR = common dso_local global i32 0, align 4
@link_force_ok = common dso_local global i32 0, align 4
@LINK_TRANSITION_LINK_CONFIG = common dso_local global i8* null, align 8
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4
@CAS_FLAG_1000MB_CAP = common dso_local global i32 0, align 4
@CAS_BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*)* @cas_mdio_link_not_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_mdio_link_not_up(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  %4 = load %struct.cas*, %struct.cas** %2, align 8
  %5 = getelementptr inbounds %struct.cas, %struct.cas* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  switch i32 %6, label %116 [
    i32 129, label %7
    i32 130, label %28
    i32 128, label %66
  ]

7:                                                ; preds = %1
  %8 = load %struct.cas*, %struct.cas** %2, align 8
  %9 = load i32, i32* @link, align 4
  %10 = load %struct.cas*, %struct.cas** %2, align 8
  %11 = getelementptr inbounds %struct.cas, %struct.cas* %10, i32 0, i32 5
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @netif_info(%struct.cas* %8, i32 %9, i32 %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.cas*, %struct.cas** %2, align 8
  %15 = load i32, i32* @MII_BMCR, align 4
  %16 = load %struct.cas*, %struct.cas** %2, align 8
  %17 = getelementptr inbounds %struct.cas, %struct.cas* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @cas_phy_write(%struct.cas* %14, i32 %15, i32 %18)
  %20 = load %struct.cas*, %struct.cas** %2, align 8
  %21 = getelementptr inbounds %struct.cas, %struct.cas* %20, i32 0, i32 2
  store i32 5, i32* %21, align 8
  %22 = load i32, i32* @link_force_ok, align 4
  %23 = load %struct.cas*, %struct.cas** %2, align 8
  %24 = getelementptr inbounds %struct.cas, %struct.cas* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load i8*, i8** @LINK_TRANSITION_LINK_CONFIG, align 8
  %26 = load %struct.cas*, %struct.cas** %2, align 8
  %27 = getelementptr inbounds %struct.cas, %struct.cas* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  br label %117

28:                                               ; preds = %1
  %29 = load %struct.cas*, %struct.cas** %2, align 8
  %30 = load i32, i32* @MII_BMCR, align 4
  %31 = call i32 @cas_phy_read(%struct.cas* %29, i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load i32, i32* @BMCR_ANRESTART, align 4
  %33 = load i32, i32* @BMCR_ANENABLE, align 4
  %34 = or i32 %32, %33
  %35 = xor i32 %34, -1
  %36 = load i32, i32* %3, align 4
  %37 = and i32 %36, %35
  store i32 %37, i32* %3, align 4
  %38 = load i32, i32* @BMCR_FULLDPLX, align 4
  %39 = load i32, i32* %3, align 4
  %40 = or i32 %39, %38
  store i32 %40, i32* %3, align 4
  %41 = load %struct.cas*, %struct.cas** %2, align 8
  %42 = getelementptr inbounds %struct.cas, %struct.cas* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @CAS_FLAG_1000MB_CAP, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %28
  %48 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  br label %51

49:                                               ; preds = %28
  %50 = load i32, i32* @BMCR_SPEED100, align 4
  br label %51

51:                                               ; preds = %49, %47
  %52 = phi i32 [ %48, %47 ], [ %50, %49 ]
  %53 = load i32, i32* %3, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %3, align 4
  %55 = load %struct.cas*, %struct.cas** %2, align 8
  %56 = load i32, i32* @MII_BMCR, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @cas_phy_write(%struct.cas* %55, i32 %56, i32 %57)
  %59 = load %struct.cas*, %struct.cas** %2, align 8
  %60 = getelementptr inbounds %struct.cas, %struct.cas* %59, i32 0, i32 2
  store i32 5, i32* %60, align 8
  %61 = load %struct.cas*, %struct.cas** %2, align 8
  %62 = getelementptr inbounds %struct.cas, %struct.cas* %61, i32 0, i32 0
  store i32 128, i32* %62, align 8
  %63 = load i8*, i8** @LINK_TRANSITION_LINK_CONFIG, align 8
  %64 = load %struct.cas*, %struct.cas** %2, align 8
  %65 = getelementptr inbounds %struct.cas, %struct.cas* %64, i32 0, i32 4
  store i8* %63, i8** %65, align 8
  br label %117

66:                                               ; preds = %1
  %67 = load %struct.cas*, %struct.cas** %2, align 8
  %68 = load i32, i32* @MII_BMCR, align 4
  %69 = call i32 @cas_phy_read(%struct.cas* %67, i32 %68)
  store i32 %69, i32* %3, align 4
  %70 = load %struct.cas*, %struct.cas** %2, align 8
  %71 = getelementptr inbounds %struct.cas, %struct.cas* %70, i32 0, i32 2
  store i32 5, i32* %71, align 8
  %72 = load i32, i32* %3, align 4
  %73 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %66
  %77 = load i32, i32* @CAS_BMCR_SPEED1000, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %3, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %3, align 4
  %81 = load i32, i32* @BMCR_SPEED100, align 4
  %82 = load i32, i32* @BMCR_FULLDPLX, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* %3, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %3, align 4
  %86 = load %struct.cas*, %struct.cas** %2, align 8
  %87 = load i32, i32* @MII_BMCR, align 4
  %88 = load i32, i32* %3, align 4
  %89 = call i32 @cas_phy_write(%struct.cas* %86, i32 %87, i32 %88)
  br label %117

90:                                               ; preds = %66
  %91 = load i32, i32* %3, align 4
  %92 = load i32, i32* @BMCR_SPEED100, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %115

95:                                               ; preds = %90
  %96 = load i32, i32* %3, align 4
  %97 = load i32, i32* @BMCR_FULLDPLX, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %105

100:                                              ; preds = %95
  %101 = load i32, i32* @BMCR_FULLDPLX, align 4
  %102 = xor i32 %101, -1
  %103 = load i32, i32* %3, align 4
  %104 = and i32 %103, %102
  store i32 %104, i32* %3, align 4
  br label %110

105:                                              ; preds = %95
  %106 = load i32, i32* @BMCR_SPEED100, align 4
  %107 = xor i32 %106, -1
  %108 = load i32, i32* %3, align 4
  %109 = and i32 %108, %107
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %105, %100
  %111 = load %struct.cas*, %struct.cas** %2, align 8
  %112 = load i32, i32* @MII_BMCR, align 4
  %113 = load i32, i32* %3, align 4
  %114 = call i32 @cas_phy_write(%struct.cas* %111, i32 %112, i32 %113)
  br label %117

115:                                              ; preds = %90
  br label %116

116:                                              ; preds = %1, %115
  br label %117

117:                                              ; preds = %116, %110, %76, %51, %7
  ret i32 0
}

declare dso_local i32 @netif_info(%struct.cas*, i32, i32, i8*) #1

declare dso_local i32 @cas_phy_write(%struct.cas*, i32, i32) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
