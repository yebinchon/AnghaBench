; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_read_phy_reg_mdi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ixgbe/extr_ixgbe_phy.c_ixgbe_read_phy_reg_mdi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@IXGBE_MSCA_NP_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_DEV_TYPE_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_PHY_ADDR_SHIFT = common dso_local global i64 0, align 8
@IXGBE_MSCA_ADDR_CYCLE = common dso_local global i64 0, align 8
@IXGBE_MSCA_MDI_COMMAND = common dso_local global i64 0, align 8
@IXGBE_MSCA = common dso_local global i32 0, align 4
@IXGBE_MDIO_COMMAND_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [39 x i8] c"PHY address command did not complete.\0A\00", align 1
@IXGBE_ERR_PHY = common dso_local global i32 0, align 4
@IXGBE_MSCA_READ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"PHY read command didn't complete\0A\00", align 1
@IXGBE_MSRWD = common dso_local global i32 0, align 4
@IXGBE_MSRWD_READ_DATA_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_read_phy_reg_mdi(%struct.ixgbe_hw* %0, i64 %1, i64 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ixgbe_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @IXGBE_MSCA_NP_ADDR_SHIFT, align 8
  %15 = shl i64 %13, %14
  %16 = load i64, i64* %8, align 8
  %17 = load i64, i64* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 8
  %18 = shl i64 %16, %17
  %19 = or i64 %15, %18
  %20 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %21 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = or i64 %19, %26
  %28 = load i64, i64* @IXGBE_MSCA_ADDR_CYCLE, align 8
  %29 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %30 = or i64 %28, %29
  %31 = or i64 %27, %30
  store i64 %31, i64* %12, align 8
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %33 = load i32, i32* @IXGBE_MSCA, align 4
  %34 = load i64, i64* %12, align 8
  %35 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %32, i32 %33, i64 %34)
  store i64 0, i64* %10, align 8
  br label %36

36:                                               ; preds = %51, %4
  %37 = load i64, i64* %10, align 8
  %38 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %39 = icmp slt i64 %37, %38
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = call i32 @udelay(i32 10)
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %43 = load i32, i32* @IXGBE_MSCA, align 4
  %44 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %42, i32 %43)
  store i64 %44, i64* %12, align 8
  %45 = load i64, i64* %12, align 8
  %46 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %47 = and i64 %45, %46
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %40
  br label %54

50:                                               ; preds = %40
  br label %51

51:                                               ; preds = %50
  %52 = load i64, i64* %10, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* %10, align 8
  br label %36

54:                                               ; preds = %49, %36
  %55 = load i64, i64* %12, align 8
  %56 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %61 = call i32 @hw_dbg(%struct.ixgbe_hw* %60, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %62 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %62, i32* %5, align 4
  br label %123

63:                                               ; preds = %54
  %64 = load i64, i64* %7, align 8
  %65 = load i64, i64* @IXGBE_MSCA_NP_ADDR_SHIFT, align 8
  %66 = shl i64 %64, %65
  %67 = load i64, i64* %8, align 8
  %68 = load i64, i64* @IXGBE_MSCA_DEV_TYPE_SHIFT, align 8
  %69 = shl i64 %67, %68
  %70 = or i64 %66, %69
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %72 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @IXGBE_MSCA_PHY_ADDR_SHIFT, align 8
  %77 = shl i64 %75, %76
  %78 = or i64 %70, %77
  %79 = load i64, i64* @IXGBE_MSCA_READ, align 8
  %80 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %81 = or i64 %79, %80
  %82 = or i64 %78, %81
  store i64 %82, i64* %12, align 8
  %83 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %84 = load i32, i32* @IXGBE_MSCA, align 4
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %83, i32 %84, i64 %85)
  store i64 0, i64* %10, align 8
  br label %87

87:                                               ; preds = %102, %63
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @IXGBE_MDIO_COMMAND_TIMEOUT, align 8
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = call i32 @udelay(i32 10)
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %94 = load i32, i32* @IXGBE_MSCA, align 4
  %95 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %93, i32 %94)
  store i64 %95, i64* %12, align 8
  %96 = load i64, i64* %12, align 8
  %97 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %98 = and i64 %96, %97
  %99 = icmp eq i64 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %91
  br label %105

101:                                              ; preds = %91
  br label %102

102:                                              ; preds = %101
  %103 = load i64, i64* %10, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %10, align 8
  br label %87

105:                                              ; preds = %100, %87
  %106 = load i64, i64* %12, align 8
  %107 = load i64, i64* @IXGBE_MSCA_MDI_COMMAND, align 8
  %108 = and i64 %106, %107
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %105
  %111 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %112 = call i32 @hw_dbg(%struct.ixgbe_hw* %111, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %113 = load i32, i32* @IXGBE_ERR_PHY, align 4
  store i32 %113, i32* %5, align 4
  br label %123

114:                                              ; preds = %105
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %6, align 8
  %116 = load i32, i32* @IXGBE_MSRWD, align 4
  %117 = call i64 @IXGBE_READ_REG(%struct.ixgbe_hw* %115, i32 %116)
  store i64 %117, i64* %11, align 8
  %118 = load i64, i64* @IXGBE_MSRWD_READ_DATA_SHIFT, align 8
  %119 = load i64, i64* %11, align 8
  %120 = ashr i64 %119, %118
  store i64 %120, i64* %11, align 8
  %121 = load i64, i64* %11, align 8
  %122 = load i64*, i64** %9, align 8
  store i64 %121, i64* %122, align 8
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %114, %110, %59
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i64 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
