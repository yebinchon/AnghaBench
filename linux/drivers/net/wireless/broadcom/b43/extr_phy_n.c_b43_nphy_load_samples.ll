; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_load_samples.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_phy_n.c_b43_nphy_load_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64 }
%struct.cordic_iq = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"allocation for samples loading failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.cordic_iq*, i64)* @b43_nphy_load_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_load_samples(%struct.b43_wldev* %0, %struct.cordic_iq* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca %struct.cordic_iq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.b43_phy_n*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store %struct.cordic_iq* %1, %struct.cordic_iq** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.b43_phy_n*, %struct.b43_phy_n** %13, align 8
  store %struct.b43_phy_n* %14, %struct.b43_phy_n** %8, align 8
  %15 = load i64, i64* %7, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kcalloc(i64 %15, i32 4, i32 %16)
  store i32* %17, i32** %10, align 8
  %18 = load i32*, i32** %10, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %27, label %20

20:                                               ; preds = %3
  %21 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %22 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @b43err(i32 %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %80

27:                                               ; preds = %3
  %28 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  %29 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %34 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %33, i32 1)
  br label %35

35:                                               ; preds = %32, %27
  store i64 0, i64* %9, align 8
  br label %36

36:                                               ; preds = %61, %35
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* %7, align 8
  %39 = icmp ult i64 %37, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %36
  %41 = load %struct.cordic_iq*, %struct.cordic_iq** %6, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %41, i64 %42
  %44 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 1047552
  %47 = load i32*, i32** %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32 %46, i32* %49, align 4
  %50 = load %struct.cordic_iq*, %struct.cordic_iq** %6, align 8
  %51 = load i64, i64* %9, align 8
  %52 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %50, i64 %51
  %53 = getelementptr inbounds %struct.cordic_iq, %struct.cordic_iq* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, 1023
  %56 = load i32*, i32** %10, align 8
  %57 = load i64, i64* %9, align 8
  %58 = getelementptr inbounds i32, i32* %56, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %55
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %40
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %9, align 8
  br label %36

64:                                               ; preds = %36
  %65 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %66 = call i32 @B43_NTAB32(i32 17, i32 0)
  %67 = load i64, i64* %7, align 8
  %68 = load i32*, i32** %10, align 8
  %69 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %65, i32 %66, i64 %67, i32* %68)
  %70 = load i32*, i32** %10, align 8
  %71 = call i32 @kfree(i32* %70)
  %72 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  %73 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %64
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %78 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %77, i32 0)
  br label %79

79:                                               ; preds = %76, %64
  store i32 0, i32* %4, align 4
  br label %80

80:                                               ; preds = %79, %20
  %81 = load i32, i32* %4, align 4
  ret i32 %81
}

declare dso_local i32* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i64, i32*) #1

declare dso_local i32 @B43_NTAB32(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
