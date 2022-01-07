; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_create_mdio_sca.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-dev.c_xgbe_create_mdio_sca.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MII_ADDR_C45 = common dso_local global i32 0, align 4
@MAC_MDIOSCAR = common dso_local global i32 0, align 4
@RA = common dso_local global i32 0, align 4
@PA = common dso_local global i32 0, align 4
@DA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @xgbe_create_mdio_sca to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_create_mdio_sca(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @MII_ADDR_C45, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  %13 = ashr i32 %12, 16
  br label %15

14:                                               ; preds = %2
  br label %15

15:                                               ; preds = %14, %11
  %16 = phi i32 [ %13, %11 ], [ 0, %14 ]
  store i32 %16, i32* %6, align 4
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @MAC_MDIOSCAR, align 4
  %19 = load i32, i32* @RA, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @XGMAC_SET_BITS(i32 %17, i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @MAC_MDIOSCAR, align 4
  %24 = load i32, i32* @PA, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @XGMAC_SET_BITS(i32 %22, i32 %23, i32 %24, i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @MAC_MDIOSCAR, align 4
  %29 = load i32, i32* @DA, align 4
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @XGMAC_SET_BITS(i32 %27, i32 %28, i32 %29, i32 %30)
  %32 = load i32, i32* %5, align 4
  ret i32 %32
}

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
