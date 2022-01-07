; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_xcvr_init_10g.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_xcvr_init_10g.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32** }

@XMAC_CONFIG = common dso_local global i32 0, align 4
@XMAC_CONFIG_LED_POLARITY = common dso_local global i32 0, align 4
@XMAC_CONFIG_FORCE_LED_ON = common dso_local global i32 0, align 4
@MIF_CONFIG = common dso_local global i32 0, align 4
@MIF_CONFIG_INDIRECT_MODE = common dso_local global i32 0, align 4
@NIU_PHY_ID_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @xcvr_init_10g to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcvr_init_10g(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %6 = load i32, i32* @XMAC_CONFIG, align 4
  %7 = call i32 @nr64_mac(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @XMAC_CONFIG_LED_POLARITY, align 4
  %9 = xor i32 %8, -1
  %10 = load i32, i32* %5, align 4
  %11 = and i32 %10, %9
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @XMAC_CONFIG_FORCE_LED_ON, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load i32, i32* @XMAC_CONFIG, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @nw64_mac(i32 %15, i32 %16)
  %18 = load i32, i32* @MIF_CONFIG, align 4
  %19 = call i32 @nr64(i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* @MIF_CONFIG_INDIRECT_MODE, align 4
  %21 = load i32, i32* %5, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @MIF_CONFIG, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @nw64(i32 %23, i32 %24)
  %26 = load %struct.niu*, %struct.niu** %2, align 8
  %27 = getelementptr inbounds %struct.niu, %struct.niu* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.niu*, %struct.niu** %2, align 8
  %32 = getelementptr inbounds %struct.niu, %struct.niu* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 @phy_decode(i32 %30, i64 %33)
  store i32 %34, i32* %3, align 4
  %35 = load %struct.niu*, %struct.niu** %2, align 8
  %36 = getelementptr inbounds %struct.niu, %struct.niu* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load i32, i32* %3, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = load %struct.niu*, %struct.niu** %2, align 8
  %46 = getelementptr inbounds %struct.niu, %struct.niu* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = getelementptr inbounds i32, i32* %44, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %3, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* @NIU_PHY_ID_MASK, align 4
  %52 = and i32 %50, %51
  switch i32 %52, label %56 [
    i32 128, label %53
  ]

53:                                               ; preds = %1
  %54 = load %struct.niu*, %struct.niu** %2, align 8
  %55 = call i32 @xcvr_init_10g_mrvl88x2011(%struct.niu* %54)
  store i32 %55, i32* %4, align 4
  br label %59

56:                                               ; preds = %1
  %57 = load %struct.niu*, %struct.niu** %2, align 8
  %58 = call i32 @xcvr_init_10g_bcm8704(%struct.niu* %57)
  store i32 %58, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

declare dso_local i32 @nr64_mac(i32) #1

declare dso_local i32 @nw64_mac(i32, i32) #1

declare dso_local i32 @nr64(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @phy_decode(i32, i64) #1

declare dso_local i32 @xcvr_init_10g_mrvl88x2011(%struct.niu*) #1

declare dso_local i32 @xcvr_init_10g_bcm8704(%struct.niu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
