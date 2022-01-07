; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_get_link_capabilities_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_get_link_capabilities_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i32 0, align 4
@IXGBE_ERR_LINK_SETUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32*, i32*)* @ixgbe_get_link_capabilities_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_get_link_capabilities_82598(%struct.ixgbe_hw* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %10 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %3
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %16 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  br label %23

19:                                               ; preds = %3
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %21 = load i32, i32* @IXGBE_AUTOC, align 4
  %22 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %20, i32 %21)
  store i32 %22, i32* %8, align 4
  br label %23

23:                                               ; preds = %19, %14
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @IXGBE_AUTOC_LMS_MASK, align 4
  %26 = and i32 %24, %25
  switch i32 %26, label %63 [
    i32 130, label %27
    i32 132, label %31
    i32 131, label %35
    i32 129, label %39
    i32 128, label %39
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %29 = load i32*, i32** %6, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32*, i32** %7, align 8
  store i32 0, i32* %30, align 4
  br label %65

31:                                               ; preds = %23
  %32 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %33 = load i32*, i32** %6, align 8
  store i32 %32, i32* %33, align 4
  %34 = load i32*, i32** %7, align 8
  store i32 0, i32* %34, align 4
  br label %65

35:                                               ; preds = %23
  %36 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %37 = load i32*, i32** %6, align 8
  store i32 %36, i32* %37, align 4
  %38 = load i32*, i32** %7, align 8
  store i32 1, i32* %38, align 4
  br label %65

39:                                               ; preds = %23, %23
  %40 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %41 = load i32*, i32** %6, align 8
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @IXGBE_AUTOC_KX4_SUPP, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %48 = load i32*, i32** %6, align 8
  %49 = load i32, i32* %48, align 4
  %50 = or i32 %49, %47
  store i32 %50, i32* %48, align 4
  br label %51

51:                                               ; preds = %46, %39
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* @IXGBE_AUTOC_KX_SUPP, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %58 = load i32*, i32** %6, align 8
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %57
  store i32 %60, i32* %58, align 4
  br label %61

61:                                               ; preds = %56, %51
  %62 = load i32*, i32** %7, align 8
  store i32 1, i32* %62, align 4
  br label %65

63:                                               ; preds = %23
  %64 = load i32, i32* @IXGBE_ERR_LINK_SETUP, align 4
  store i32 %64, i32* %4, align 4
  br label %66

65:                                               ; preds = %61, %35, %31, %27
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %63
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
