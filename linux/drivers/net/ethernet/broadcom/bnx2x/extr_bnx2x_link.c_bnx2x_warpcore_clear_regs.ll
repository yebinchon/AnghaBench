; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_clear_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_clear_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_reg_set = type { i32, i32, i64, i32, i32, i32 }
%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@bnx2x_warpcore_clear_regs.wc_regs = internal global [11 x %struct.bnx2x_reg_set] [%struct.bnx2x_reg_set { i32 140, i32 139, i64 0, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 135, i64 330, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 134, i64 2048, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 136, i64 32776, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 132, i64 405, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 131, i64 7, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 130, i64 2, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 129, i64 24576, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 128, i64 0, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 133, i64 8256, i32 0, i32 0, i32 0 }, %struct.bnx2x_reg_set { i32 138, i32 137, i64 320, i32 0, i32 0, i32 0 }], align 16
@MDIO_WC_REG_RX66_CONTROL = common dso_local global i32 0, align 4
@MDIO_WC_REG_TX0_TX_DRIVER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i64)* @bnx2x_warpcore_clear_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_clear_regs(%struct.bnx2x_phy* %0, %struct.link_params* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i64, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.link_params*, %struct.link_params** %5, align 8
  %10 = getelementptr inbounds %struct.link_params, %struct.link_params* %9, i32 0, i32 0
  %11 = load %struct.bnx2x*, %struct.bnx2x** %10, align 8
  store %struct.bnx2x* %11, %struct.bnx2x** %7, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %13 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %14 = load i32, i32* @MDIO_WC_REG_RX66_CONTROL, align 4
  %15 = call i32 @bnx2x_cl45_read_or_write(%struct.bnx2x* %12, %struct.bnx2x_phy* %13, i32 138, i32 %14, i32 24576)
  store i64 0, i64* %8, align 8
  br label %16

16:                                               ; preds = %36, %3
  %17 = load i64, i64* %8, align 8
  %18 = call i64 @ARRAY_SIZE(%struct.bnx2x_reg_set* getelementptr inbounds ([11 x %struct.bnx2x_reg_set], [11 x %struct.bnx2x_reg_set]* @bnx2x_warpcore_clear_regs.wc_regs, i64 0, i64 0))
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %39

20:                                               ; preds = %16
  %21 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %22 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds [11 x %struct.bnx2x_reg_set], [11 x %struct.bnx2x_reg_set]* @bnx2x_warpcore_clear_regs.wc_regs, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 16
  %27 = load i64, i64* %8, align 8
  %28 = getelementptr inbounds [11 x %struct.bnx2x_reg_set], [11 x %struct.bnx2x_reg_set]* @bnx2x_warpcore_clear_regs.wc_regs, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %8, align 8
  %32 = getelementptr inbounds [11 x %struct.bnx2x_reg_set], [11 x %struct.bnx2x_reg_set]* @bnx2x_warpcore_clear_regs.wc_regs, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.bnx2x_reg_set, %struct.bnx2x_reg_set* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %21, %struct.bnx2x_phy* %22, i32 %26, i64 %30, i32 %34)
  br label %36

36:                                               ; preds = %20
  %37 = load i64, i64* %8, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %8, align 8
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %41 = load %struct.link_params*, %struct.link_params** %5, align 8
  %42 = call i64 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy* %40, %struct.link_params* %41)
  store i64 %42, i64* %6, align 8
  %43 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %45 = load i64, i64* @MDIO_WC_REG_TX0_TX_DRIVER, align 8
  %46 = load i64, i64* %6, align 8
  %47 = mul i64 16, %46
  %48 = add i64 %45, %47
  %49 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %43, %struct.bnx2x_phy* %44, i32 138, i64 %48, i32 2448)
  ret void
}

declare dso_local i32 @bnx2x_cl45_read_or_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.bnx2x_reg_set*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i64, i32) #1

declare dso_local i64 @bnx2x_get_warpcore_lane(%struct.bnx2x_phy*, %struct.link_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
