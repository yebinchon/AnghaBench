; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_dtsec.c_dtsec_restart_autoneg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/fman/extr_fman_dtsec.c_dtsec_restart_autoneg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fman_mac = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_SPEED100 = common dso_local global i32 0, align 4
@BMCR_SPEED1000 = common dso_local global i32 0, align 4
@BMCR_ANENABLE = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@BMCR_FULLDPLX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dtsec_restart_autoneg(%struct.fman_mac* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fman_mac*, align 8
  %4 = alloca i32, align 4
  store %struct.fman_mac* %0, %struct.fman_mac** %3, align 8
  %5 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %6 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @is_init_done(i32 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %40

13:                                               ; preds = %1
  %14 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %15 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @MII_BMCR, align 4
  %18 = call i32 @phy_read(i32 %16, i32 %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* @BMCR_SPEED100, align 4
  %20 = load i32, i32* @BMCR_SPEED1000, align 4
  %21 = or i32 %19, %20
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %4, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* @BMCR_ANENABLE, align 4
  %26 = load i32, i32* @BMCR_ANRESTART, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @BMCR_FULLDPLX, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @BMCR_SPEED1000, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* %4, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %4, align 4
  %34 = load %struct.fman_mac*, %struct.fman_mac** %3, align 8
  %35 = getelementptr inbounds %struct.fman_mac, %struct.fman_mac* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @MII_BMCR, align 4
  %38 = load i32, i32* %4, align 4
  %39 = call i32 @phy_write(i32 %36, i32 %37, i32 %38)
  store i32 0, i32* %2, align 4
  br label %40

40:                                               ; preds = %13, %10
  %41 = load i32, i32* %2, align 4
  ret i32 %41
}

declare dso_local i32 @is_init_done(i32) #1

declare dso_local i32 @phy_read(i32, i32) #1

declare dso_local i32 @phy_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
