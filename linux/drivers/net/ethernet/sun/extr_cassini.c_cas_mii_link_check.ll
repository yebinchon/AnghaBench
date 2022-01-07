; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_mii_link_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_mii_link_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i64, i32, i32, i32, i32, i64, i32 }

@BMSR_LSTATUS = common dso_local global i32 0, align 4
@link_force_try = common dso_local global i64 0, align 8
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@link_force_ret = common dso_local global i64 0, align 8
@LINK_TRANSITION_LINK_CONFIG = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Got link after fallback, retrying autoneg once...\0A\00", align 1
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@link_up = common dso_local global i64 0, align 8
@LINK_TRANSITION_LINK_UP = common dso_local global i32 0, align 4
@link_down = common dso_local global i64 0, align 8
@LINK_TRANSITION_LINK_DOWN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [11 x i8] c"Link down\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cas*, i32)* @cas_mii_link_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cas_mii_link_check(%struct.cas* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cas*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @BMSR_LSTATUS, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %91

11:                                               ; preds = %2
  %12 = load %struct.cas*, %struct.cas** %4, align 8
  %13 = getelementptr inbounds %struct.cas, %struct.cas* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @link_force_try, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %64

17:                                               ; preds = %11
  %18 = load %struct.cas*, %struct.cas** %4, align 8
  %19 = getelementptr inbounds %struct.cas, %struct.cas* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @BMCR_ANENABLE, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %64

24:                                               ; preds = %17
  %25 = load i64, i64* @link_force_ret, align 8
  %26 = load %struct.cas*, %struct.cas** %4, align 8
  %27 = getelementptr inbounds %struct.cas, %struct.cas* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load i32, i32* @LINK_TRANSITION_LINK_CONFIG, align 4
  %29 = load %struct.cas*, %struct.cas** %4, align 8
  %30 = getelementptr inbounds %struct.cas, %struct.cas* %29, i32 0, i32 6
  store i32 %28, i32* %30, align 8
  %31 = load %struct.cas*, %struct.cas** %4, align 8
  %32 = call i32 @cas_mif_poll(%struct.cas* %31, i32 0)
  %33 = load %struct.cas*, %struct.cas** %4, align 8
  %34 = load i32, i32* @MII_BMCR, align 4
  %35 = call i32 @cas_phy_read(%struct.cas* %33, i32 %34)
  %36 = load %struct.cas*, %struct.cas** %4, align 8
  %37 = getelementptr inbounds %struct.cas, %struct.cas* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cas*, %struct.cas** %4, align 8
  %39 = getelementptr inbounds %struct.cas, %struct.cas* %38, i32 0, i32 3
  store i32 5, i32* %39, align 8
  %40 = load %struct.cas*, %struct.cas** %4, align 8
  %41 = getelementptr inbounds %struct.cas, %struct.cas* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %24
  %45 = load %struct.cas*, %struct.cas** %4, align 8
  %46 = load i32, i32* @link, align 4
  %47 = load %struct.cas*, %struct.cas** %4, align 8
  %48 = getelementptr inbounds %struct.cas, %struct.cas* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @netif_info(%struct.cas* %45, i32 %46, i32 %49, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  br label %51

51:                                               ; preds = %44, %24
  %52 = load %struct.cas*, %struct.cas** %4, align 8
  %53 = load i32, i32* @MII_BMCR, align 4
  %54 = load %struct.cas*, %struct.cas** %4, align 8
  %55 = getelementptr inbounds %struct.cas, %struct.cas* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @BMCR_ANENABLE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @BMCR_ANRESTART, align 4
  %60 = or i32 %58, %59
  %61 = call i32 @cas_phy_write(%struct.cas* %52, i32 %53, i32 %60)
  %62 = load %struct.cas*, %struct.cas** %4, align 8
  %63 = call i32 @cas_mif_poll(%struct.cas* %62, i32 1)
  br label %90

64:                                               ; preds = %17, %11
  %65 = load %struct.cas*, %struct.cas** %4, align 8
  %66 = getelementptr inbounds %struct.cas, %struct.cas* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @link_up, align 8
  %69 = icmp ne i64 %67, %68
  br i1 %69, label %70, label %89

70:                                               ; preds = %64
  %71 = load i64, i64* @link_up, align 8
  %72 = load %struct.cas*, %struct.cas** %4, align 8
  %73 = getelementptr inbounds %struct.cas, %struct.cas* %72, i32 0, i32 0
  store i64 %71, i64* %73, align 8
  %74 = load i32, i32* @LINK_TRANSITION_LINK_UP, align 4
  %75 = load %struct.cas*, %struct.cas** %4, align 8
  %76 = getelementptr inbounds %struct.cas, %struct.cas* %75, i32 0, i32 6
  store i32 %74, i32* %76, align 8
  %77 = load %struct.cas*, %struct.cas** %4, align 8
  %78 = getelementptr inbounds %struct.cas, %struct.cas* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %70
  %82 = load %struct.cas*, %struct.cas** %4, align 8
  %83 = call i32 @cas_set_link_modes(%struct.cas* %82)
  %84 = load %struct.cas*, %struct.cas** %4, align 8
  %85 = getelementptr inbounds %struct.cas, %struct.cas* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @netif_carrier_on(i32 %86)
  br label %88

88:                                               ; preds = %81, %70
  br label %89

89:                                               ; preds = %88, %64
  br label %90

90:                                               ; preds = %89, %51
  store i32 0, i32* %3, align 4
  br label %132

91:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %92 = load %struct.cas*, %struct.cas** %4, align 8
  %93 = getelementptr inbounds %struct.cas, %struct.cas* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @link_up, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %120

97:                                               ; preds = %91
  %98 = load i64, i64* @link_down, align 8
  %99 = load %struct.cas*, %struct.cas** %4, align 8
  %100 = getelementptr inbounds %struct.cas, %struct.cas* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load i32, i32* @LINK_TRANSITION_LINK_DOWN, align 4
  %102 = load %struct.cas*, %struct.cas** %4, align 8
  %103 = getelementptr inbounds %struct.cas, %struct.cas* %102, i32 0, i32 6
  store i32 %101, i32* %103, align 8
  %104 = load %struct.cas*, %struct.cas** %4, align 8
  %105 = getelementptr inbounds %struct.cas, %struct.cas* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @netif_carrier_off(i32 %106)
  %108 = load %struct.cas*, %struct.cas** %4, align 8
  %109 = getelementptr inbounds %struct.cas, %struct.cas* %108, i32 0, i32 5
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %97
  %113 = load %struct.cas*, %struct.cas** %4, align 8
  %114 = load i32, i32* @link, align 4
  %115 = load %struct.cas*, %struct.cas** %4, align 8
  %116 = getelementptr inbounds %struct.cas, %struct.cas* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @netif_info(%struct.cas* %113, i32 %114, i32 %117, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  br label %119

119:                                              ; preds = %112, %97
  store i32 1, i32* %6, align 4
  br label %130

120:                                              ; preds = %91
  %121 = load %struct.cas*, %struct.cas** %4, align 8
  %122 = getelementptr inbounds %struct.cas, %struct.cas* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %122, align 8
  %125 = icmp sgt i32 %124, 10
  br i1 %125, label %126, label %129

126:                                              ; preds = %120
  %127 = load %struct.cas*, %struct.cas** %4, align 8
  %128 = call i32 @cas_mdio_link_not_up(%struct.cas* %127)
  br label %129

129:                                              ; preds = %126, %120
  br label %130

130:                                              ; preds = %129, %119
  %131 = load i32, i32* %6, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %90
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @cas_mif_poll(%struct.cas*, i32) #1

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

declare dso_local i32 @netif_info(%struct.cas*, i32, i32, i8*) #1

declare dso_local i32 @cas_phy_write(%struct.cas*, i32, i32) #1

declare dso_local i32 @cas_set_link_modes(%struct.cas*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @cas_mdio_link_not_up(%struct.cas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
