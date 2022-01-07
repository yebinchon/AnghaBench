; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_bcm8704_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_bcm8704_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, i32 }

@BCM8704_PHYXS_DEV_ADDR = common dso_local global i32 0, align 4
@MII_BMCR = common dso_local global i32 0, align 4
@BMCR_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Port %u PHY will not reset (bmcr=%04x)\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*)* @bcm8704_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm8704_reset(%struct.niu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.niu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %3, align 8
  %6 = load %struct.niu*, %struct.niu** %3, align 8
  %7 = load %struct.niu*, %struct.niu** %3, align 8
  %8 = getelementptr inbounds %struct.niu, %struct.niu* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @BCM8704_PHYXS_DEV_ADDR, align 4
  %11 = load i32, i32* @MII_BMCR, align 4
  %12 = call i32 @mdio_read(%struct.niu* %6, i32 %9, i32 %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = icmp eq i32 %16, 65535
  br i1 %17, label %18, label %20

18:                                               ; preds = %15, %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %76

20:                                               ; preds = %15
  %21 = load i32, i32* @BMCR_RESET, align 4
  %22 = load i32, i32* %4, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %4, align 4
  %24 = load %struct.niu*, %struct.niu** %3, align 8
  %25 = load %struct.niu*, %struct.niu** %3, align 8
  %26 = getelementptr inbounds %struct.niu, %struct.niu* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @BCM8704_PHYXS_DEV_ADDR, align 4
  %29 = load i32, i32* @MII_BMCR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @mdio_write(%struct.niu* %24, i32 %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %20
  %35 = load i32, i32* %4, align 4
  store i32 %35, i32* %2, align 4
  br label %76

36:                                               ; preds = %20
  store i32 1000, i32* %5, align 4
  br label %37

37:                                               ; preds = %59, %36
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 %38, -1
  store i32 %39, i32* %5, align 4
  %40 = icmp sge i32 %39, 0
  br i1 %40, label %41, label %60

41:                                               ; preds = %37
  %42 = load %struct.niu*, %struct.niu** %3, align 8
  %43 = load %struct.niu*, %struct.niu** %3, align 8
  %44 = getelementptr inbounds %struct.niu, %struct.niu* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @BCM8704_PHYXS_DEV_ADDR, align 4
  %47 = load i32, i32* @MII_BMCR, align 4
  %48 = call i32 @mdio_read(%struct.niu* %42, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %76

53:                                               ; preds = %41
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @BMCR_RESET, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  br label %60

59:                                               ; preds = %53
  br label %37

60:                                               ; preds = %58, %37
  %61 = load i32, i32* %5, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.niu*, %struct.niu** %3, align 8
  %65 = getelementptr inbounds %struct.niu, %struct.niu* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.niu*, %struct.niu** %3, align 8
  %68 = getelementptr inbounds %struct.niu, %struct.niu* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* %4, align 4
  %71 = and i32 %70, 65535
  %72 = call i32 @netdev_err(i32 %66, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %71)
  %73 = load i32, i32* @ENODEV, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %2, align 4
  br label %76

75:                                               ; preds = %60
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %63, %51, %34, %18
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @mdio_read(%struct.niu*, i32, i32, i32) #1

declare dso_local i32 @mdio_write(%struct.niu*, i32, i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
