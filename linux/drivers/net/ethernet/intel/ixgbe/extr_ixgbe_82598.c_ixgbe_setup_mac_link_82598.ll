; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_setup_mac_link_82598.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_82598.c_ixgbe_setup_mac_link_82598.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { i32 }

@IXGBE_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_MASK = common dso_local global i64 0, align 8
@IXGBE_ERR_LINK_SETUP = common dso_local global i32 0, align 4
@IXGBE_AUTOC_LMS_KX4_AN = common dso_local global i64 0, align 8
@IXGBE_AUTOC_LMS_KX4_AN_1G_AN = common dso_local global i64 0, align 8
@IXGBE_AUTOC_KX4_KX_SUPP_MASK = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX4_SUPP = common dso_local global i64 0, align 8
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_AUTOC_KX_SUPP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_hw*, i32, i32)* @ixgbe_setup_mac_link_82598 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_setup_mac_link_82598(%struct.ixgbe_hw* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = load i32, i32* @IXGBE_AUTOC, align 4
  %16 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %14, i32 %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  store i64 %17, i64* %11, align 8
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @IXGBE_AUTOC_LMS_MASK, align 8
  %20 = and i64 %18, %19
  store i64 %20, i64* %12, align 8
  %21 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %22 = call i32 @ixgbe_get_link_capabilities_82598(%struct.ixgbe_hw* %21, i32* %9, i32* %8)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @IXGBE_LINK_SPEED_UNKNOWN, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %3
  %30 = load i32, i32* @IXGBE_ERR_LINK_SETUP, align 4
  store i32 %30, i32* %4, align 4
  br label %76

31:                                               ; preds = %3
  %32 = load i64, i64* %12, align 8
  %33 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_AN, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %31
  %36 = load i64, i64* %12, align 8
  %37 = load i64, i64* @IXGBE_AUTOC_LMS_KX4_AN_1G_AN, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %71

39:                                               ; preds = %35, %31
  %40 = load i64, i64* @IXGBE_AUTOC_KX4_KX_SUPP_MASK, align 8
  %41 = xor i64 %40, -1
  %42 = load i64, i64* %11, align 8
  %43 = and i64 %42, %41
  store i64 %43, i64* %11, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %39
  %49 = load i64, i64* @IXGBE_AUTOC_KX4_SUPP, align 8
  %50 = load i64, i64* %11, align 8
  %51 = or i64 %50, %49
  store i64 %51, i64* %11, align 8
  br label %52

52:                                               ; preds = %48, %39
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load i64, i64* @IXGBE_AUTOC_KX_SUPP, align 8
  %59 = load i64, i64* %11, align 8
  %60 = or i64 %59, %58
  store i64 %60, i64* %11, align 8
  br label %61

61:                                               ; preds = %57, %52
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %10, align 8
  %64 = icmp ne i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %61
  %66 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %67 = load i32, i32* @IXGBE_AUTOC, align 4
  %68 = load i64, i64* %11, align 8
  %69 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %66, i32 %67, i64 %68)
  br label %70

70:                                               ; preds = %65, %61
  br label %71

71:                                               ; preds = %70, %35
  br label %72

72:                                               ; preds = %71
  %73 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @ixgbe_start_mac_link_82598(%struct.ixgbe_hw* %73, i32 %74)
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %29
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @ixgbe_get_link_capabilities_82598(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @ixgbe_start_mac_link_82598(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
