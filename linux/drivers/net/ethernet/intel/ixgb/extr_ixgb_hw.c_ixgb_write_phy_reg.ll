; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_write_phy_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgb/extr_ixgb_hw.c_ixgb_write_phy_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgb_hw = type { i32 }

@IXGB_MAX_PHY_REG_ADDRESS = common dso_local global i32 0, align 4
@IXGB_MAX_PHY_ADDRESS = common dso_local global i32 0, align 4
@IXGB_MAX_PHY_DEV_TYPE = common dso_local global i32 0, align 4
@MSRWD = common dso_local global i32 0, align 4
@IXGB_MSCA_NP_ADDR_SHIFT = common dso_local global i32 0, align 4
@IXGB_MSCA_DEV_TYPE_SHIFT = common dso_local global i32 0, align 4
@IXGB_MSCA_PHY_ADDR_SHIFT = common dso_local global i32 0, align 4
@IXGB_MSCA_ADDR_CYCLE = common dso_local global i32 0, align 4
@IXGB_MSCA_MDI_COMMAND = common dso_local global i32 0, align 4
@MSCA = common dso_local global i32 0, align 4
@IXGB_MSCA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ixgb_hw*, i32, i32, i32, i64)* @ixgb_write_phy_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixgb_write_phy_reg(%struct.ixgb_hw* %0, i32 %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.ixgb_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ixgb_hw* %0, %struct.ixgb_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  store i32 0, i32* %12, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @IXGB_MAX_PHY_REG_ADDRESS, align 4
  %15 = icmp sle i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @IXGB_MAX_PHY_ADDRESS, align 4
  %20 = icmp sle i32 %18, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @ASSERT(i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = load i32, i32* @IXGB_MAX_PHY_DEV_TYPE, align 4
  %25 = icmp sle i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %29 = load i32, i32* @MSRWD, align 4
  %30 = load i64, i64* %10, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %28, i32 %29, i32 %31)
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @IXGB_MSCA_NP_ADDR_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @IXGB_MSCA_DEV_TYPE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = or i32 %35, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IXGB_MSCA_PHY_ADDR_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  %44 = load i32, i32* @IXGB_MSCA_ADDR_CYCLE, align 4
  %45 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %46 = or i32 %44, %45
  %47 = or i32 %43, %46
  store i32 %47, i32* %12, align 4
  %48 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %49 = load i32, i32* @MSCA, align 4
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %48, i32 %49, i32 %50)
  store i32 0, i32* %11, align 4
  br label %52

52:                                               ; preds = %66, %5
  %53 = load i32, i32* %11, align 4
  %54 = icmp slt i32 %53, 10
  br i1 %54, label %55, label %69

55:                                               ; preds = %52
  %56 = call i32 @udelay(i32 10)
  %57 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %58 = load i32, i32* @MSCA, align 4
  %59 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %57, i32 %58)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %62 = and i32 %60, %61
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %55
  br label %69

65:                                               ; preds = %55
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %11, align 4
  br label %52

69:                                               ; preds = %64, %52
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i32 @ASSERT(i32 %74)
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* @IXGB_MSCA_NP_ADDR_SHIFT, align 4
  %78 = shl i32 %76, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @IXGB_MSCA_DEV_TYPE_SHIFT, align 4
  %81 = shl i32 %79, %80
  %82 = or i32 %78, %81
  %83 = load i32, i32* %8, align 4
  %84 = load i32, i32* @IXGB_MSCA_PHY_ADDR_SHIFT, align 4
  %85 = shl i32 %83, %84
  %86 = or i32 %82, %85
  %87 = load i32, i32* @IXGB_MSCA_WRITE, align 4
  %88 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %89 = or i32 %87, %88
  %90 = or i32 %86, %89
  store i32 %90, i32* %12, align 4
  %91 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %92 = load i32, i32* @MSCA, align 4
  %93 = load i32, i32* %12, align 4
  %94 = call i32 @IXGB_WRITE_REG(%struct.ixgb_hw* %91, i32 %92, i32 %93)
  store i32 0, i32* %11, align 4
  br label %95

95:                                               ; preds = %109, %69
  %96 = load i32, i32* %11, align 4
  %97 = icmp slt i32 %96, 10
  br i1 %97, label %98, label %112

98:                                               ; preds = %95
  %99 = call i32 @udelay(i32 10)
  %100 = load %struct.ixgb_hw*, %struct.ixgb_hw** %6, align 8
  %101 = load i32, i32* @MSCA, align 4
  %102 = call i32 @IXGB_READ_REG(%struct.ixgb_hw* %100, i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  br label %112

108:                                              ; preds = %98
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %11, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %11, align 4
  br label %95

112:                                              ; preds = %107, %95
  %113 = load i32, i32* %12, align 4
  %114 = load i32, i32* @IXGB_MSCA_MDI_COMMAND, align 4
  %115 = and i32 %113, %114
  %116 = icmp eq i32 %115, 0
  %117 = zext i1 %116 to i32
  %118 = call i32 @ASSERT(i32 %117)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @IXGB_WRITE_REG(%struct.ixgb_hw*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @IXGB_READ_REG(%struct.ixgb_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
