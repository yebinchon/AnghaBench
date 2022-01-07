; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_check_kr2_wa.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_check_kr2_wa.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i64 }
%struct.bnx2x_phy = type { i32 }

@LINK_ATTR_SYNC_KR2_ENABLE = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"No sigdet\0A\00", align 1
@MDIO_REG_BANK_AER_BLOCK = common dso_local global i32 0, align 4
@MDIO_AER_BLOCK_AER_REG = common dso_local global i32 0, align 4
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_LP_AUTO_NEG = common dso_local global i32 0, align 4
@MDIO_AN_REG_LP_AUTO_NEG2 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"No BP\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"BP=0x%x, NP=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_params*, %struct.link_vars*, %struct.bnx2x_phy*)* @bnx2x_check_kr2_wa to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_check_kr2_wa(%struct.link_params* %0, %struct.link_vars* %1, %struct.bnx2x_phy* %2) #0 {
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.link_vars*, align 8
  %6 = alloca %struct.bnx2x_phy*, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.link_params* %0, %struct.link_params** %4, align 8
  store %struct.link_vars* %1, %struct.link_vars** %5, align 8
  store %struct.bnx2x_phy* %2, %struct.bnx2x_phy** %6, align 8
  %13 = load %struct.link_params*, %struct.link_params** %4, align 8
  %14 = getelementptr inbounds %struct.link_params, %struct.link_params* %13, i32 0, i32 1
  %15 = load %struct.bnx2x*, %struct.bnx2x** %14, align 8
  store %struct.bnx2x* %15, %struct.bnx2x** %7, align 8
  %16 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %17 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %3
  %21 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %22 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  br label %137

25:                                               ; preds = %3
  %26 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %27 = load %struct.link_params*, %struct.link_params** %4, align 8
  %28 = call i32 @bnx2x_warpcore_get_sigdet(%struct.bnx2x_phy* %26, %struct.link_params* %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %12, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %46, label %31

31:                                               ; preds = %25
  %32 = load %struct.link_params*, %struct.link_params** %4, align 8
  %33 = getelementptr inbounds %struct.link_params, %struct.link_params* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @LINK_ATTR_SYNC_KR2_ENABLE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %45, label %38

38:                                               ; preds = %31
  %39 = load %struct.link_params*, %struct.link_params** %4, align 8
  %40 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %41 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %42 = call i32 @bnx2x_kr2_recovery(%struct.link_params* %39, %struct.link_vars* %40, %struct.bnx2x_phy* %41)
  %43 = load i32, i32* @NETIF_MSG_LINK, align 4
  %44 = call i32 (i32, i8*, ...) @DP(i32 %43, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  br label %45

45:                                               ; preds = %38, %31
  br label %137

46:                                               ; preds = %25
  %47 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %48 = load %struct.link_params*, %struct.link_params** %4, align 8
  %49 = call i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy* %47, %struct.link_params* %48)
  store i32 %49, i32* %11, align 4
  %50 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %51 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %52 = load i32, i32* @MDIO_REG_BANK_AER_BLOCK, align 4
  %53 = load i32, i32* @MDIO_AER_BLOCK_AER_REG, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %50, %struct.bnx2x_phy* %51, i32 %52, i32 %53, i32 %54)
  %56 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %57 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %58 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %59 = load i32, i32* @MDIO_AN_REG_LP_AUTO_NEG, align 4
  %60 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %56, %struct.bnx2x_phy* %57, i32 %58, i32 %59, i32* %8)
  %61 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %62 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %63 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %64 = load i32, i32* @MDIO_AN_REG_LP_AUTO_NEG2, align 4
  %65 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %61, %struct.bnx2x_phy* %62, i32 %63, i32 %64, i32* %9)
  %66 = load %struct.link_params*, %struct.link_params** %4, align 8
  %67 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %68 = call i32 @bnx2x_set_aer_mmd(%struct.link_params* %66, %struct.bnx2x_phy* %67)
  %69 = load i32, i32* %8, align 4
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %86

71:                                               ; preds = %46
  %72 = load %struct.link_params*, %struct.link_params** %4, align 8
  %73 = getelementptr inbounds %struct.link_params, %struct.link_params* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LINK_ATTR_SYNC_KR2_ENABLE, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %85, label %78

78:                                               ; preds = %71
  %79 = load %struct.link_params*, %struct.link_params** %4, align 8
  %80 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %81 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %82 = call i32 @bnx2x_kr2_recovery(%struct.link_params* %79, %struct.link_vars* %80, %struct.bnx2x_phy* %81)
  %83 = load i32, i32* @NETIF_MSG_LINK, align 4
  %84 = call i32 (i32, i8*, ...) @DP(i32 %83, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0))
  br label %85

85:                                               ; preds = %78, %71
  br label %137

86:                                               ; preds = %46
  %87 = load i32, i32* %8, align 4
  %88 = and i32 %87, 32768
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %86
  %91 = load i32, i32* %8, align 4
  %92 = and i32 %91, 32768
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = and i32 %95, 224
  %97 = icmp eq i32 %96, 32
  br label %98

98:                                               ; preds = %94, %90
  %99 = phi i1 [ false, %90 ], [ %97, %94 ]
  br label %100

100:                                              ; preds = %98, %86
  %101 = phi i1 [ true, %86 ], [ %99, %98 ]
  %102 = zext i1 %101 to i32
  store i32 %102, i32* %10, align 4
  %103 = load %struct.link_params*, %struct.link_params** %4, align 8
  %104 = getelementptr inbounds %struct.link_params, %struct.link_params* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* @LINK_ATTR_SYNC_KR2_ENABLE, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %122, label %109

109:                                              ; preds = %100
  %110 = load i32, i32* %10, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %121, label %112

112:                                              ; preds = %109
  %113 = load i32, i32* @NETIF_MSG_LINK, align 4
  %114 = load i32, i32* %8, align 4
  %115 = load i32, i32* %9, align 4
  %116 = call i32 (i32, i8*, ...) @DP(i32 %113, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %114, i32 %115)
  %117 = load %struct.link_params*, %struct.link_params** %4, align 8
  %118 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %119 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %120 = call i32 @bnx2x_kr2_recovery(%struct.link_params* %117, %struct.link_vars* %118, %struct.bnx2x_phy* %119)
  br label %121

121:                                              ; preds = %112, %109
  br label %137

122:                                              ; preds = %100
  %123 = load i32, i32* %10, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %137

125:                                              ; preds = %122
  %126 = load i32, i32* @NETIF_MSG_LINK, align 4
  %127 = load i32, i32* %8, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 (i32, i8*, ...) @DP(i32 %126, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %127, i32 %128)
  %130 = load %struct.link_params*, %struct.link_params** %4, align 8
  %131 = load %struct.link_vars*, %struct.link_vars** %5, align 8
  %132 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %133 = call i32 @bnx2x_disable_kr2(%struct.link_params* %130, %struct.link_vars* %131, %struct.bnx2x_phy* %132)
  %134 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %6, align 8
  %135 = load %struct.link_params*, %struct.link_params** %4, align 8
  %136 = call i32 @bnx2x_warpcore_restart_AN_KR(%struct.bnx2x_phy* %134, %struct.link_params* %135)
  br label %137

137:                                              ; preds = %20, %45, %85, %121, %125, %122
  ret void
}

declare dso_local i32 @bnx2x_warpcore_get_sigdet(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @bnx2x_kr2_recovery(%struct.link_params*, %struct.link_vars*, %struct.bnx2x_phy*) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy*, %struct.link_params*) #1

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_set_aer_mmd(%struct.link_params*, %struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_disable_kr2(%struct.link_params*, %struct.link_vars*, %struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_warpcore_restart_AN_KR(%struct.bnx2x_phy*, %struct.link_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
