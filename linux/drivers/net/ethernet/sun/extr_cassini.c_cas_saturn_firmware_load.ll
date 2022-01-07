; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_saturn_firmware_load.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_cassini.c_cas_saturn_firmware_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cas = type { i32*, i32, i32 }

@DP83065_MII_MEM = common dso_local global i32 0, align 4
@DP83065_MII_REGE = common dso_local global i32 0, align 4
@DP83065_MII_REGD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cas*)* @cas_saturn_firmware_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cas_saturn_firmware_load(%struct.cas* %0) #0 {
  %2 = alloca %struct.cas*, align 8
  %3 = alloca i32, align 4
  store %struct.cas* %0, %struct.cas** %2, align 8
  %4 = load %struct.cas*, %struct.cas** %2, align 8
  %5 = getelementptr inbounds %struct.cas, %struct.cas* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %75

9:                                                ; preds = %1
  %10 = load %struct.cas*, %struct.cas** %2, align 8
  %11 = call i32 @cas_phy_powerdown(%struct.cas* %10)
  %12 = load %struct.cas*, %struct.cas** %2, align 8
  %13 = load i32, i32* @DP83065_MII_MEM, align 4
  %14 = call i32 @cas_phy_write(%struct.cas* %12, i32 %13, i32 0)
  %15 = load %struct.cas*, %struct.cas** %2, align 8
  %16 = load i32, i32* @DP83065_MII_REGE, align 4
  %17 = call i32 @cas_phy_write(%struct.cas* %15, i32 %16, i32 36857)
  %18 = load %struct.cas*, %struct.cas** %2, align 8
  %19 = load i32, i32* @DP83065_MII_REGD, align 4
  %20 = call i32 @cas_phy_write(%struct.cas* %18, i32 %19, i32 189)
  %21 = load %struct.cas*, %struct.cas** %2, align 8
  %22 = load i32, i32* @DP83065_MII_REGE, align 4
  %23 = call i32 @cas_phy_write(%struct.cas* %21, i32 %22, i32 36858)
  %24 = load %struct.cas*, %struct.cas** %2, align 8
  %25 = load i32, i32* @DP83065_MII_REGD, align 4
  %26 = call i32 @cas_phy_write(%struct.cas* %24, i32 %25, i32 130)
  %27 = load %struct.cas*, %struct.cas** %2, align 8
  %28 = load i32, i32* @DP83065_MII_REGE, align 4
  %29 = call i32 @cas_phy_write(%struct.cas* %27, i32 %28, i32 36859)
  %30 = load %struct.cas*, %struct.cas** %2, align 8
  %31 = load i32, i32* @DP83065_MII_REGD, align 4
  %32 = call i32 @cas_phy_write(%struct.cas* %30, i32 %31, i32 0)
  %33 = load %struct.cas*, %struct.cas** %2, align 8
  %34 = load i32, i32* @DP83065_MII_REGE, align 4
  %35 = call i32 @cas_phy_write(%struct.cas* %33, i32 %34, i32 36860)
  %36 = load %struct.cas*, %struct.cas** %2, align 8
  %37 = load i32, i32* @DP83065_MII_REGD, align 4
  %38 = call i32 @cas_phy_write(%struct.cas* %36, i32 %37, i32 57)
  %39 = load %struct.cas*, %struct.cas** %2, align 8
  %40 = load i32, i32* @DP83065_MII_MEM, align 4
  %41 = call i32 @cas_phy_write(%struct.cas* %39, i32 %40, i32 1)
  %42 = load %struct.cas*, %struct.cas** %2, align 8
  %43 = load i32, i32* @DP83065_MII_REGE, align 4
  %44 = load %struct.cas*, %struct.cas** %2, align 8
  %45 = getelementptr inbounds %struct.cas, %struct.cas* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @cas_phy_write(%struct.cas* %42, i32 %43, i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %65, %9
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.cas*, %struct.cas** %2, align 8
  %51 = getelementptr inbounds %struct.cas, %struct.cas* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %48
  %55 = load %struct.cas*, %struct.cas** %2, align 8
  %56 = load i32, i32* @DP83065_MII_REGD, align 4
  %57 = load %struct.cas*, %struct.cas** %2, align 8
  %58 = getelementptr inbounds %struct.cas, %struct.cas* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = load i32, i32* %3, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @cas_phy_write(%struct.cas* %55, i32 %56, i32 %63)
  br label %65

65:                                               ; preds = %54
  %66 = load i32, i32* %3, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %3, align 4
  br label %48

68:                                               ; preds = %48
  %69 = load %struct.cas*, %struct.cas** %2, align 8
  %70 = load i32, i32* @DP83065_MII_REGE, align 4
  %71 = call i32 @cas_phy_write(%struct.cas* %69, i32 %70, i32 36856)
  %72 = load %struct.cas*, %struct.cas** %2, align 8
  %73 = load i32, i32* @DP83065_MII_REGD, align 4
  %74 = call i32 @cas_phy_write(%struct.cas* %72, i32 %73, i32 1)
  br label %75

75:                                               ; preds = %68, %8
  ret void
}

declare dso_local i32 @cas_phy_powerdown(%struct.cas*) #1

declare dso_local i32 @cas_phy_write(%struct.cas*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
