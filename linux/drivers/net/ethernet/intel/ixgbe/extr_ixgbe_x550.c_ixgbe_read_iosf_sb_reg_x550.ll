; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_read_iosf_sb_reg_x550.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_x550.c_ixgbe_read_iosf_sb_reg_x550.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_GSSR_PHY1_SM = common dso_local global i32 0, align 4
@IXGBE_GSSR_PHY0_SM = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_CTRL_ADDR_SHIFT = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_CTRL_TARGET_SELECT_SHIFT = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_INDIRECT_CTRL = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_CTRL_RESP_STAT_MASK = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK = common dso_local global i32 0, align 4
@IXGBE_SB_IOSF_CTRL_CMPL_ERR_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Failed to read, error %x\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i64 0, align 8
@IXGBE_SB_IOSF_INDIRECT_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ixgbe_hw*, i32, i32, i32*)* @ixgbe_read_iosf_sb_reg_x550 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ixgbe_read_iosf_sb_reg_x550(%struct.ixgbe_hw* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* @IXGBE_GSSR_PHY1_SM, align 4
  %15 = load i32, i32* @IXGBE_GSSR_PHY0_SM, align 4
  %16 = or i32 %14, %15
  store i32 %16, i32* %10, align 4
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %21 = load i64 (%struct.ixgbe_hw.1*, i32)*, i64 (%struct.ixgbe_hw.1*, i32)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.1*
  %24 = load i32, i32* %10, align 4
  %25 = call i64 %21(%struct.ixgbe_hw.1* %23, i32 %24)
  store i64 %25, i64* %13, align 8
  %26 = load i64, i64* %13, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %4
  %29 = load i64, i64* %13, align 8
  store i64 %29, i64* %5, align 8
  br label %84

30:                                               ; preds = %4
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %32 = call i64 @ixgbe_iosf_wait(%struct.ixgbe_hw* %31, i32* null)
  store i64 %32, i64* %13, align 8
  %33 = load i64, i64* %13, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30
  br label %73

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @IXGBE_SB_IOSF_CTRL_ADDR_SHIFT, align 4
  %39 = shl i32 %37, %38
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @IXGBE_SB_IOSF_CTRL_TARGET_SELECT_SHIFT, align 4
  %42 = shl i32 %40, %41
  %43 = or i32 %39, %42
  store i32 %43, i32* %11, align 4
  %44 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %45 = load i32, i32* @IXGBE_SB_IOSF_INDIRECT_CTRL, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %44, i32 %45, i32 %46)
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %49 = call i64 @ixgbe_iosf_wait(%struct.ixgbe_hw* %48, i32* %11)
  store i64 %49, i64* %13, align 8
  %50 = load i32, i32* %11, align 4
  %51 = load i32, i32* @IXGBE_SB_IOSF_CTRL_RESP_STAT_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %36
  %55 = load i32, i32* %11, align 4
  %56 = load i32, i32* @IXGBE_SB_IOSF_CTRL_CMPL_ERR_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load i32, i32* @IXGBE_SB_IOSF_CTRL_CMPL_ERR_SHIFT, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %12, align 4
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @hw_dbg(%struct.ixgbe_hw* %60, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load i64, i64* @IXGBE_ERR_PHY, align 8
  store i64 %63, i64* %5, align 8
  br label %84

64:                                               ; preds = %36
  %65 = load i64, i64* %13, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %72, label %67

67:                                               ; preds = %64
  %68 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %69 = load i32, i32* @IXGBE_SB_IOSF_INDIRECT_DATA, align 4
  %70 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %68, i32 %69)
  %71 = load i32*, i32** %9, align 8
  store i32 %70, i32* %71, align 4
  br label %72

72:                                               ; preds = %67, %64
  br label %73

73:                                               ; preds = %72, %35
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32 (%struct.ixgbe_hw.0*, i32)*, i32 (%struct.ixgbe_hw.0*, i32)** %77, align 8
  %79 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %80 = bitcast %struct.ixgbe_hw* %79 to %struct.ixgbe_hw.0*
  %81 = load i32, i32* %10, align 4
  %82 = call i32 %78(%struct.ixgbe_hw.0* %80, i32 %81)
  %83 = load i64, i64* %13, align 8
  store i64 %83, i64* %5, align 8
  br label %84

84:                                               ; preds = %73, %54, %28
  %85 = load i64, i64* %5, align 8
  ret i64 %85
}

declare dso_local i64 @ixgbe_iosf_wait(%struct.ixgbe_hw*, i32*) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*, i32) #1

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
