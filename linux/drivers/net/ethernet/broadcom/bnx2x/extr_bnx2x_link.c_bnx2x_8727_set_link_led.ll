; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_set_link_led.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_link.c_bnx2x_8727_set_link_led.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x_phy = type { i32 }
%struct.link_params = type { %struct.bnx2x* }
%struct.bnx2x = type { i32 }

@FLAGS_NOC = common dso_local global i32 0, align 4
@MDIO_PMA_DEVAD = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_PCS_OPT_CTRL = common dso_local global i32 0, align 4
@MDIO_PMA_REG_8727_GPIO_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x_phy*, %struct.link_params*, i32)* @bnx2x_8727_set_link_led to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_8727_set_link_led(%struct.bnx2x_phy* %0, %struct.link_params* %1, i32 %2) #0 {
  %4 = alloca %struct.bnx2x_phy*, align 8
  %5 = alloca %struct.link_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x_phy* %0, %struct.bnx2x_phy** %4, align 8
  store %struct.link_params* %1, %struct.link_params** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.link_params*, %struct.link_params** %5, align 8
  %12 = getelementptr inbounds %struct.link_params, %struct.link_params* %11, i32 0, i32 0
  %13 = load %struct.bnx2x*, %struct.bnx2x** %12, align 8
  store %struct.bnx2x* %13, %struct.bnx2x** %7, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %15 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @FLAGS_NOC, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %3
  br label %59

21:                                               ; preds = %3
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %26 [
    i32 131, label %23
    i32 130, label %23
    i32 129, label %24
    i32 128, label %25
  ]

23:                                               ; preds = %21, %21
  store i32 0, i32* %8, align 4
  store i32 3, i32* %9, align 4
  br label %26

24:                                               ; preds = %21
  store i32 0, i32* %8, align 4
  store i32 2, i32* %9, align 4
  br label %26

25:                                               ; preds = %21
  store i32 96, i32* %8, align 4
  store i32 17, i32* %9, align 4
  br label %26

26:                                               ; preds = %21, %25, %24, %23
  %27 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %28 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %29 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %30 = load i32, i32* @MDIO_PMA_REG_8727_PCS_OPT_CTRL, align 4
  %31 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %27, %struct.bnx2x_phy* %28, i32 %29, i32 %30, i32* %10)
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 65423
  store i32 %33, i32* %10, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %10, align 4
  %37 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %38 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %39 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %40 = load i32, i32* @MDIO_PMA_REG_8727_PCS_OPT_CTRL, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %37, %struct.bnx2x_phy* %38, i32 %39, i32 %40, i32 %41)
  %43 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %44 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %45 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %46 = load i32, i32* @MDIO_PMA_REG_8727_GPIO_CTRL, align 4
  %47 = call i32 @bnx2x_cl45_read(%struct.bnx2x* %43, %struct.bnx2x_phy* %44, i32 %45, i32 %46, i32* %10)
  %48 = load i32, i32* %10, align 4
  %49 = and i32 %48, 65504
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* %10, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %10, align 4
  %53 = load %struct.bnx2x*, %struct.bnx2x** %7, align 8
  %54 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %4, align 8
  %55 = load i32, i32* @MDIO_PMA_DEVAD, align 4
  %56 = load i32, i32* @MDIO_PMA_REG_8727_GPIO_CTRL, align 4
  %57 = load i32, i32* %10, align 4
  %58 = call i32 @bnx2x_cl45_write(%struct.bnx2x* %53, %struct.bnx2x_phy* %54, i32 %55, i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %26, %20
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
