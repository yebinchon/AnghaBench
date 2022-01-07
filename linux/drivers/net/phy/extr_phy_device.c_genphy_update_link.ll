; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_update_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phy_device.c_genphy_update_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32, i32, i64 }

@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_ANRESTART = common dso_local global i32 0, align 4
@MII_BMSR = common dso_local global i32 0, align 4
@BMSR_LSTATUS = common dso_local global i32 0, align 4
@BMSR_ANEGCOMPLETE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @genphy_update_link(%struct.phy_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.phy_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %7 = load i32, i32* @MII_BMCR, align 4
  %8 = call i32 @phy_read(%struct.phy_device* %6, i32 %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %79

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @BMCR_ANRESTART, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  br label %48

19:                                               ; preds = %13
  %20 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %21 = call i32 @phy_polling_mode(%struct.phy_device* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %39, label %23

23:                                               ; preds = %19
  %24 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %25 = load i32, i32* @MII_BMSR, align 4
  %26 = call i32 @phy_read(%struct.phy_device* %24, i32 %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %4, align 4
  store i32 %30, i32* %2, align 4
  br label %79

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @BMSR_LSTATUS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %48

37:                                               ; preds = %31
  br label %38

38:                                               ; preds = %37
  br label %39

39:                                               ; preds = %38, %19
  %40 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %41 = load i32, i32* @MII_BMSR, align 4
  %42 = call i32 @phy_read(%struct.phy_device* %40, i32 %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %79

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %36, %18
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @BMSR_LSTATUS, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 1, i32 0
  %55 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %56 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @BMSR_ANEGCOMPLETE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 1, i32 0
  %63 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %64 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %66 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @AUTONEG_ENABLE, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %48
  %71 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %72 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = load %struct.phy_device*, %struct.phy_device** %3, align 8
  %77 = getelementptr inbounds %struct.phy_device, %struct.phy_device* %76, i32 0, i32 0
  store i32 0, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %70, %48
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %78, %45, %29, %11
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @phy_read(%struct.phy_device*, i32) #1

declare dso_local i32 @phy_polling_mode(%struct.phy_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
