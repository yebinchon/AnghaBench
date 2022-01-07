; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_read_mii_link_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_read_mii_link_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32 }

@MII_LPA = common dso_local global i32 0, align 4
@CAS_LPA_PAUSE = common dso_local global i32 0, align 4
@CAS_LPA_ASYM_PAUSE = common dso_local global i32 0, align 4
@LPA_DUPLEX = common dso_local global i32 0, align 4
@LPA_100 = common dso_local global i32 0, align 4
@CAS_FLAG_1000MB_CAP = common dso_local global i32 0, align 4
@CAS_MII_1000_STATUS = common dso_local global i32 0, align 4
@CAS_LPA_1000FULL = common dso_local global i32 0, align 4
@CAS_LPA_1000HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*, i32*, i32*, i32*)* @cas_read_mii_link_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_read_mii_link_mode(%struct.cas* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.cas*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %10 = load i32*, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %7, align 8
  store i32 10, i32* %11, align 4
  %12 = load i32*, i32** %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load %struct.cas*, %struct.cas** %5, align 8
  %14 = load i32, i32* @MII_LPA, align 4
  %15 = call i32 @cas_phy_read(%struct.cas* %13, i32 %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @CAS_LPA_PAUSE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %4
  %21 = load i32*, i32** %8, align 8
  store i32 1, i32* %21, align 4
  br label %22

22:                                               ; preds = %20, %4
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @CAS_LPA_ASYM_PAUSE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %22
  %28 = load i32*, i32** %8, align 8
  %29 = load i32, i32* %28, align 4
  %30 = or i32 %29, 16
  store i32 %30, i32* %28, align 4
  br label %31

31:                                               ; preds = %27, %22
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @LPA_DUPLEX, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32*, i32** %6, align 8
  store i32 1, i32* %37, align 4
  br label %38

38:                                               ; preds = %36, %31
  %39 = load i32, i32* %9, align 4
  %40 = load i32, i32* @LPA_100, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32*, i32** %7, align 8
  store i32 100, i32* %44, align 4
  br label %45

45:                                               ; preds = %43, %38
  %46 = load %struct.cas*, %struct.cas** %5, align 8
  %47 = getelementptr inbounds %struct.cas, %struct.cas* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CAS_FLAG_1000MB_CAP, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %72

52:                                               ; preds = %45
  %53 = load %struct.cas*, %struct.cas** %5, align 8
  %54 = load i32, i32* @CAS_MII_1000_STATUS, align 4
  %55 = call i32 @cas_phy_read(%struct.cas* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @CAS_LPA_1000FULL, align 4
  %58 = load i32, i32* @CAS_LPA_1000HALF, align 4
  %59 = or i32 %57, %58
  %60 = and i32 %56, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %52
  %63 = load i32*, i32** %7, align 8
  store i32 1000, i32* %63, align 4
  br label %64

64:                                               ; preds = %62, %52
  %65 = load i32, i32* %9, align 4
  %66 = load i32, i32* @CAS_LPA_1000FULL, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %71

69:                                               ; preds = %64
  %70 = load i32*, i32** %6, align 8
  store i32 1, i32* %70, align 4
  br label %71

71:                                               ; preds = %69, %64
  br label %72

72:                                               ; preds = %71, %45
  ret void
}

declare dso_local i32 @cas_phy_read(%struct.cas*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
