; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_eee_advertise.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_eee_advertise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { i32, %struct.bnx2x* }
%struct.bnx2x = type { i32 }
%struct.link_vars = type { i32 }

@MISC_REG_CPMU_LP_MASK_EXT_P0 = common dso_local global i64 0, align 8
@SHMEM_EEE_10G_ADV = common dso_local global i32 0, align 4
@NETIF_MSG_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Advertise 10GBase-T EEE\0A\00", align 1
@SHMEM_EEE_1G_ADV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Advertise 1GBase-T EEE\0A\00", align 1
@MDIO_AN_DEVAD = common dso_local global i32 0, align 4
@MDIO_AN_REG_EEE_ADV = common dso_local global i32 0, align 4
@SHMEM_EEE_ADV_STATUS_MASK = common dso_local global i32 0, align 4
@SHMEM_EEE_ADV_STATUS_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x_phy*, %struct.link_params*, %struct.link_vars*, i32)* @bnx2x_eee_advertise to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_eee_advertise(%struct.bnx2x_phy* %0, %struct.link_params* %1, %struct.link_vars* %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca %struct.link_params*, align 8
  %7 = alloca %struct.link_vars*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.bnx2x*, align 8
  %10 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %5, align 8
  store %struct.link_params* %1, %struct.link_params** %6, align 8
  store %struct.link_vars* %2, %struct.link_vars** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.link_params*, %struct.link_params** %6, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 1
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %9, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %15 = load i64, i64* @MISC_REG_CPMU_LP_MASK_EXT_P0, align 8
  %16 = load %struct.link_params*, %struct.link_params** %6, align 8
  %17 = getelementptr inbounds %struct.link_params, %struct.link_params* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = shl i32 %18, 2
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %15, %20
  %22 = call i32 @REG_WR(%struct.bnx2x* %14, i64 %21, i32 64544)
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @SHMEM_EEE_10G_ADV, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %4
  %28 = load i32, i32* @NETIF_MSG_LINK, align 4
  %29 = call i32 @DP(i32 %28, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* %10, align 4
  %31 = or i32 %30, 8
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %27, %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @SHMEM_EEE_1G_ADV, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load i32, i32* @NETIF_MSG_LINK, align 4
  %39 = call i32 @DP(i32 %38, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* %10, align 4
  %41 = or i32 %40, 4
  store i32 %41, i32* %10, align 4
  br label %42

42:                                               ; preds = %37, %32
  %43 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %45 = load i32, i32* @MDIO_AN_DEVAD, align 4
  %46 = load i32, i32* @MDIO_AN_REG_EEE_ADV, align 4
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %43, %struct.bnx2x_phy* %44, i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* @SHMEM_EEE_ADV_STATUS_MASK, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %52 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @SHMEM_EEE_ADV_STATUS_SHIFT, align 4
  %57 = shl i32 %55, %56
  %58 = load %struct.link_vars*, %struct.link_vars** %7, align 8
  %59 = getelementptr inbounds %struct.link_vars, %struct.link_vars* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %57
  store i32 %61, i32* %59, align 4
  ret i32 0
}

declare dso_local i32 @REG_WR(%struct.bnx2x*, i64, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
