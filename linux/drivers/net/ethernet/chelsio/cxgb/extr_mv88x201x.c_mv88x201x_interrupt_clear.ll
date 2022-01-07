; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_mv88x201x.c_mv88x201x_interrupt_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_mv88x201x.c_mv88x201x_interrupt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32 }

@MDIO_MMD_PMAPMD = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_STAT = common dso_local global i32 0, align 4
@A_ELMER0_INT_CAUSE = common dso_local global i32 0, align 4
@ELMER0_GP_BIT6 = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_RXSTAT = common dso_local global i32 0, align 4
@MDIO_PMA_LASI_TXSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cphy*)* @mv88x201x_interrupt_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv88x201x_interrupt_clear(%struct.cphy* %0) #0 {
  %2 = alloca %struct.cphy*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.cphy* %0, %struct.cphy** %2, align 8
  %5 = load %struct.cphy*, %struct.cphy** %2, align 8
  %6 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %7 = load i32, i32* @MDIO_STAT1, align 4
  %8 = call i32 @cphy_mdio_read(%struct.cphy* %5, i32 %6, i32 %7, i32* %4)
  %9 = load %struct.cphy*, %struct.cphy** %2, align 8
  %10 = load i32, i32* @MDIO_MMD_PMAPMD, align 4
  %11 = load i32, i32* @MDIO_PMA_LASI_STAT, align 4
  %12 = call i32 @cphy_mdio_read(%struct.cphy* %9, i32 %10, i32 %11, i32* %4)
  %13 = load %struct.cphy*, %struct.cphy** %2, align 8
  %14 = getelementptr inbounds %struct.cphy, %struct.cphy* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @t1_is_asic(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %33

18:                                               ; preds = %1
  %19 = load %struct.cphy*, %struct.cphy** %2, align 8
  %20 = getelementptr inbounds %struct.cphy, %struct.cphy* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @A_ELMER0_INT_CAUSE, align 4
  %23 = call i32 @t1_tpi_read(i32 %21, i32 %22, i32* %3)
  %24 = load i32, i32* @ELMER0_GP_BIT6, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  %27 = load %struct.cphy*, %struct.cphy** %2, align 8
  %28 = getelementptr inbounds %struct.cphy, %struct.cphy* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @A_ELMER0_INT_CAUSE, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @t1_tpi_write(i32 %29, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %18, %1
  ret i32 0
}

declare dso_local i32 @cphy_mdio_read(%struct.cphy*, i32, i32, i32*) #1

declare dso_local i64 @t1_is_asic(i32) #1

declare dso_local i32 @t1_tpi_read(i32, i32, i32*) #1

declare dso_local i32 @t1_tpi_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
