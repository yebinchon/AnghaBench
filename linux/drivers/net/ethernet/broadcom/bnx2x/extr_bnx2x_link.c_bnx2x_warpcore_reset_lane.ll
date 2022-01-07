; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_reset_lane.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_warpcore_reset_lane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@MDIO_WC_DEVAD = common dso_local global i32 0, align 4
@MDIO_WC_REG_DIGITAL5_MISC6 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_phy*, i64)* @bnx2x_warpcore_reset_lane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_warpcore_reset_lane(%struct.bnx2x* %0, %struct.bnx2x_phy* %1, i64 %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_phy*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_phy* %1, %struct.bnx2x_phy** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %9 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %10 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %11 = load i32, i32* @MDIO_WC_REG_DIGITAL5_MISC6, align 4
  %12 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %8, %struct.bnx2x_phy* %9, i32 %10, i32 %11, i32* %7)
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* %7, align 4
  %17 = or i32 %16, 49152
  store i32 %17, i32* %7, align 4
  br label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = and i32 %19, 16383
  store i32 %20, i32* %7, align 4
  br label %21

21:                                               ; preds = %18, %15
  %22 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %23 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %24 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %25 = load i32, i32* @MDIO_WC_REG_DIGITAL5_MISC6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %22, %struct.bnx2x_phy* %23, i32 %24, i32 %25, i32 %26)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %29 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %5, align 8
  %30 = load i32, i32* @MDIO_WC_DEVAD, align 4
  %31 = load i32, i32* @MDIO_WC_REG_DIGITAL5_MISC6, align 4
  %32 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %28, %struct.bnx2x_phy* %29, i32 %30, i32 %31, i32* %7)
  ret void
}

declare dso_local i32 @bnx2x_cl45_read(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32*) #1

declare dso_local i32 @bnx2x_cl45_write(%struct.bnx2x*, %struct.bnx2x_phy*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
