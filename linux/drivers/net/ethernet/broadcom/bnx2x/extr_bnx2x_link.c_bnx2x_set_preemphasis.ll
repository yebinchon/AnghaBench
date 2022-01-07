; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_preemphasis.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_set_preemphasis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32*, i32* }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@MDIO_REG_BANK_RX0 = common dso_local global i64 0, align 8
@MDIO_REG_BANK_RX3 = common dso_local global i64 0, align 8
@MDIO_RX0_RX_EQ_BOOST = common dso_local global i32 0, align 4
@MDIO_REG_BANK_RX1 = common dso_local global i64 0, align 8
@MDIO_REG_BANK_TX0 = common dso_local global i64 0, align 8
@MDIO_REG_BANK_TX3 = common dso_local global i64 0, align 8
@MDIO_TX0_TX_DRIVER = common dso_local global i32 0, align 4
@MDIO_REG_BANK_TX1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*)* @bnx2x_set_preemphasis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_set_preemphasis(%struct.bnx2x_phy* %0, %struct.link_params* %1) #0 {
  %3 = alloca %struct.bnx2x_phy*, align 8
  %4 = alloca %struct.link_params*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bnx2x*, align 8
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %3, align 8
  store %struct.link_params* %1, %struct.link_params** %4, align 8
  store i64 0, i64* %6, align 8
  %8 = load %struct.link_params*, %struct.link_params** %4, align 8
  %9 = getelementptr inbounds %struct.link_params, %struct.link_params* %8, i32 0, i32 0
  %10 = load %struct.bnx2x*, %struct.bnx2x** %9, align 8
  store %struct.bnx2x* %10, %struct.bnx2x** %7, align 8
  %11 = load i64, i64* @MDIO_REG_BANK_RX0, align 8
  store i64 %11, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %12

12:                                               ; preds = %28, %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @MDIO_REG_BANK_RX3, align 8
  %15 = icmp sle i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %12
  %17 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %18 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i32, i32* @MDIO_RX0_RX_EQ_BOOST, align 4
  %21 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %22 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %17, %struct.bnx2x_phy* %18, i64 %19, i32 %20, i32 %26)
  br label %28

28:                                               ; preds = %16
  %29 = load i64, i64* @MDIO_REG_BANK_RX1, align 8
  %30 = load i64, i64* @MDIO_REG_BANK_RX0, align 8
  %31 = sub nsw i64 %29, %30
  %32 = load i64, i64* %5, align 8
  %33 = add nsw i64 %32, %31
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add nsw i64 %34, 1
  store i64 %35, i64* %6, align 8
  br label %12

36:                                               ; preds = %12
  %37 = load i64, i64* @MDIO_REG_BANK_TX0, align 8
  store i64 %37, i64* %5, align 8
  store i64 0, i64* %6, align 8
  br label %38

38:                                               ; preds = %54, %36
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @MDIO_REG_BANK_TX3, align 8
  %41 = icmp sle i64 %39, %40
  br i1 %41, label %42, label %62

42:                                               ; preds = %38
  %43 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %45 = load i64, i64* %5, align 8
  %46 = load i32, i32* @MDIO_TX0_TX_DRIVER, align 4
  %47 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %3, align 8
  %48 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* %6, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @CL22_WR_OVER_CL45(%struct.bnx2x* %43, %struct.bnx2x_phy* %44, i64 %45, i32 %46, i32 %52)
  br label %54

54:                                               ; preds = %42
  %55 = load i64, i64* @MDIO_REG_BANK_TX1, align 8
  %56 = load i64, i64* @MDIO_REG_BANK_TX0, align 8
  %57 = sub nsw i64 %55, %56
  %58 = load i64, i64* %5, align 8
  %59 = add nsw i64 %58, %57
  store i64 %59, i64* %5, align 8
  %60 = load i64, i64* %6, align 8
  %61 = add nsw i64 %60, 1
  store i64 %61, i64* %6, align 8
  br label %38

62:                                               ; preds = %38
  ret void
}

declare dso_local i32 @CL22_WR_OVER_CL45(%struct.bnx2x*, %struct.bnx2x_phy*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
