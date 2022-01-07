; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_downshift_set.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mscc.c_vsc85xx_downshift_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phy_device = type { i32 }

@DOWNSHIFT_DEV_DEFAULT_COUNT = common dso_local global i32 0, align 4
@DOWNSHIFT_CNTL_POS = common dso_local global i32 0, align 4
@DOWNSHIFT_EN = common dso_local global i32 0, align 4
@DOWNSHIFT_COUNT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Downshift count should be 2,3,4 or 5\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@MSCC_PHY_PAGE_EXTENDED = common dso_local global i32 0, align 4
@MSCC_PHY_ACTIPHY_CNTL = common dso_local global i32 0, align 4
@DOWNSHIFT_CNTL_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32)* @vsc85xx_downshift_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsc85xx_downshift_set(%struct.phy_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.phy_device*, align 8
  %5 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @DOWNSHIFT_DEV_DEFAULT_COUNT, align 4
  %8 = icmp eq i32 %6, %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  %10 = load i32, i32* @DOWNSHIFT_CNTL_POS, align 4
  %11 = shl i32 1, %10
  %12 = load i32, i32* @DOWNSHIFT_EN, align 4
  %13 = or i32 %11, %12
  store i32 %13, i32* %5, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @DOWNSHIFT_COUNT_MAX, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %21, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %26

21:                                               ; preds = %18, %14
  %22 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %23 = call i32 @phydev_err(%struct.phy_device* %22, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @ERANGE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %45

26:                                               ; preds = %18
  %27 = load i32, i32* %5, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %26
  %30 = load i32, i32* %5, align 4
  %31 = sub nsw i32 %30, 2
  %32 = load i32, i32* @DOWNSHIFT_CNTL_POS, align 4
  %33 = shl i32 %31, %32
  %34 = load i32, i32* @DOWNSHIFT_EN, align 4
  %35 = or i32 %33, %34
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %29, %26
  br label %37

37:                                               ; preds = %36
  br label %38

38:                                               ; preds = %37, %9
  %39 = load %struct.phy_device*, %struct.phy_device** %4, align 8
  %40 = load i32, i32* @MSCC_PHY_PAGE_EXTENDED, align 4
  %41 = load i32, i32* @MSCC_PHY_ACTIPHY_CNTL, align 4
  %42 = load i32, i32* @DOWNSHIFT_CNTL_MASK, align 4
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @phy_modify_paged(%struct.phy_device* %39, i32 %40, i32 %41, i32 %42, i32 %43)
  store i32 %44, i32* %3, align 4
  br label %45

45:                                               ; preds = %38, %21
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*) #1

declare dso_local i32 @phy_modify_paged(%struct.phy_device*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
