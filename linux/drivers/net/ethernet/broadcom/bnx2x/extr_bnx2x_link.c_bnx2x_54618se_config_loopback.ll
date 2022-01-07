; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_54618se_config_loopback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_54618se_config_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@GRCBASE_UMAC1 = common dso_local global i64 0, align 8
@GRCBASE_UMAC0 = common dso_local global i64 0, align 8
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"2PMA/PMD ext_phy_loopback: 54618se\0A\00", align 1
@NIG_REG_EGRESS_EMAC0_PORT = common dso_local global i64 0, align 8
@UMAC_REG_MAXFR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_54618se_config_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_54618se_config_loopback(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 1
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %5, align 8
  %11 = load %struct.link_params*, %struct.link_params** %4, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i64, i64* @GRCBASE_UMAC1, align 8
  br label %19

17:                                               ; preds = %2
  %18 = load i64, i64* @GRCBASE_UMAC0, align 8
  br label %19

19:                                               ; preds = %17, %15
  %20 = phi i64 [ %16, %15 ], [ %18, %17 ]
  store i64 %20, i64* %7, align 8
  %21 = load i32, i32* @NETIF_MSG_LINK, align 4
  %22 = call i32 @DP(i32 %21, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %24 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %25 = call i32 @bnx2x_cl22_write(%struct.bnx2x* %23, %struct.bnx2x_phy* %24, i32 9, i32 6144)
  %26 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %27 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %28 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %26, %struct.bnx2x_phy* %27, i32 0, i32* %6)
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, -12353
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = or i32 %31, 320
  store i32 %32, i32* %6, align 4
  %33 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %34 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @bnx2x_cl22_write(%struct.bnx2x* %33, %struct.bnx2x_phy* %34, i32 0, i32 %35)
  %37 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %38 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %39 = call i32 @bnx2x_cl22_write(%struct.bnx2x* %37, %struct.bnx2x_phy* %38, i32 24, i32 7)
  %40 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %41 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %42 = call i32 @bnx2x_cl22_read(%struct.bnx2x* %40, %struct.bnx2x_phy* %41, i32 24, i32* %6)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, 1024
  %47 = or i32 %46, 32768
  %48 = call i32 @bnx2x_cl22_write(%struct.bnx2x* %43, %struct.bnx2x_phy* %44, i32 24, i32 %47)
  %49 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %50 = load i64, i64* @NIG_REG_EGRESS_EMAC0_PORT, align 8
  %51 = load %struct.link_params*, %struct.link_params** %4, align 8
  %52 = getelementptr inbounds %struct.link_params, %struct.link_params* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %53, 4
  %55 = sext i32 %54 to i64
  %56 = add nsw i64 %50, %55
  %57 = call i32 @REG_WR(%struct.bnx2x* %49, i64 %56, i32 1)
  %58 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i64, i64* @UMAC_REG_MAXFR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @REG_WR(%struct.bnx2x* %58, i64 %61, i32 10000)
  ret void
}

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_cl22_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32) #1

declare dso_local i32 @bnx2x_cl22_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32*) #1

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
