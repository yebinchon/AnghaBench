; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_cl45_to_adin_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_adin.c_adin_cl45_to_adin_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adin_clause45_mmd_map = type { i32, i32, i32 }
%struct.phy_device = type { i32 }

@MDIO_MMD_VEND1 = common dso_local global i32 0, align 4
@adin_clause45_mmd_map = common dso_local global %struct.adin_clause45_mmd_map* null, align 8
@.str = private unnamed_addr constant [50 x i8] c"No translation available for devad: %d reg: %04x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phy_device*, i32, i32)* @adin_cl45_to_adin_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adin_cl45_to_adin_reg(%struct.phy_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.phy_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.adin_clause45_mmd_map*, align 8
  %9 = alloca i32, align 4
  store %struct.phy_device* %0, %struct.phy_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @MDIO_MMD_VEND1, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %4, align 4
  br label %52

15:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %42, %15
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.adin_clause45_mmd_map*, %struct.adin_clause45_mmd_map** @adin_clause45_mmd_map, align 8
  %19 = call i32 @ARRAY_SIZE(%struct.adin_clause45_mmd_map* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %45

21:                                               ; preds = %16
  %22 = load %struct.adin_clause45_mmd_map*, %struct.adin_clause45_mmd_map** @adin_clause45_mmd_map, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.adin_clause45_mmd_map, %struct.adin_clause45_mmd_map* %22, i64 %24
  store %struct.adin_clause45_mmd_map* %25, %struct.adin_clause45_mmd_map** %8, align 8
  %26 = load %struct.adin_clause45_mmd_map*, %struct.adin_clause45_mmd_map** %8, align 8
  %27 = getelementptr inbounds %struct.adin_clause45_mmd_map, %struct.adin_clause45_mmd_map* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp eq i32 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %21
  %32 = load %struct.adin_clause45_mmd_map*, %struct.adin_clause45_mmd_map** %8, align 8
  %33 = getelementptr inbounds %struct.adin_clause45_mmd_map, %struct.adin_clause45_mmd_map* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load %struct.adin_clause45_mmd_map*, %struct.adin_clause45_mmd_map** %8, align 8
  %39 = getelementptr inbounds %struct.adin_clause45_mmd_map, %struct.adin_clause45_mmd_map* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %4, align 4
  br label %52

41:                                               ; preds = %31, %21
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %9, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %9, align 4
  br label %16

45:                                               ; preds = %16
  %46 = load %struct.phy_device*, %struct.phy_device** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @phydev_err(%struct.phy_device* %46, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %45, %37, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @ARRAY_SIZE(%struct.adin_clause45_mmd_map*) #1

declare dso_local i32 @phydev_err(%struct.phy_device*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
