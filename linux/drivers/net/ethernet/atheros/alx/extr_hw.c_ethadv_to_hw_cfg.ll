; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_ethadv_to_hw_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_hw.c_ethadv_to_hw_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_hw = type { i32 }

@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@ALX_DRV_PHY_AUTO = common dso_local global i32 0, align 4
@ALX_DRV_PHY_10 = common dso_local global i32 0, align 4
@ALX_DRV_PHY_DUPLEX = common dso_local global i32 0, align 4
@ALX_DRV_PHY_100 = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ALX_DRV_PHY_1000 = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_CAP = common dso_local global i32 0, align 4
@ADVERTISED_Asym_Pause = common dso_local global i32 0, align 4
@ADVERTISE_PAUSE_ASYM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.alx_hw*, i32)* @ethadv_to_hw_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethadv_to_hw_cfg(%struct.alx_hw* %0, i32 %1) #0 {
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.alx_hw* %0, %struct.alx_hw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %88

10:                                               ; preds = %2
  %11 = load i32, i32* @ALX_DRV_PHY_AUTO, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = and i32 %14, 128
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %10
  %18 = load i32, i32* @ALX_DRV_PHY_10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %17, %10
  %22 = load i32, i32* %4, align 4
  %23 = and i32 %22, 129
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %21
  %26 = load i32, i32* @ALX_DRV_PHY_10, align 4
  %27 = load i32, i32* @ALX_DRV_PHY_DUPLEX, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* %5, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %5, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %4, align 4
  %33 = and i32 %32, 130
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %31
  %36 = load i32, i32* @ALX_DRV_PHY_100, align 4
  %37 = load i32, i32* %5, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %35, %31
  %40 = load i32, i32* %4, align 4
  %41 = and i32 %40, 131
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load i32, i32* @ALX_DRV_PHY_100, align 4
  %45 = load i32, i32* @ALX_DRV_PHY_DUPLEX, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %43, %39
  %50 = load i32, i32* %4, align 4
  %51 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @ALX_DRV_PHY_1000, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load i32, i32* @ALX_DRV_PHY_100, align 4
  %65 = load i32, i32* @ALX_DRV_PHY_DUPLEX, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %5, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %5, align 4
  br label %69

69:                                               ; preds = %63, %58
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @ADVERTISED_Pause, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %69
  %75 = load i32, i32* @ADVERTISE_PAUSE_CAP, align 4
  %76 = load i32, i32* %5, align 4
  %77 = or i32 %76, %75
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %74, %69
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @ADVERTISED_Asym_Pause, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %78
  %84 = load i32, i32* @ADVERTISE_PAUSE_ASYM, align 4
  %85 = load i32, i32* %5, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %5, align 4
  br label %87

87:                                               ; preds = %83, %78
  br label %111

88:                                               ; preds = %2
  %89 = load i32, i32* %4, align 4
  switch i32 %89, label %110 [
    i32 128, label %90
    i32 130, label %94
    i32 129, label %98
    i32 131, label %104
  ]

90:                                               ; preds = %88
  %91 = load i32, i32* @ALX_DRV_PHY_10, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %110

94:                                               ; preds = %88
  %95 = load i32, i32* @ALX_DRV_PHY_100, align 4
  %96 = load i32, i32* %5, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %5, align 4
  br label %110

98:                                               ; preds = %88
  %99 = load i32, i32* @ALX_DRV_PHY_10, align 4
  %100 = load i32, i32* @ALX_DRV_PHY_DUPLEX, align 4
  %101 = or i32 %99, %100
  %102 = load i32, i32* %5, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %5, align 4
  br label %110

104:                                              ; preds = %88
  %105 = load i32, i32* @ALX_DRV_PHY_100, align 4
  %106 = load i32, i32* @ALX_DRV_PHY_DUPLEX, align 4
  %107 = or i32 %105, %106
  %108 = load i32, i32* %5, align 4
  %109 = or i32 %108, %107
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %88, %104, %98, %94, %90
  br label %111

111:                                              ; preds = %110, %87
  %112 = load i32, i32* %5, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
