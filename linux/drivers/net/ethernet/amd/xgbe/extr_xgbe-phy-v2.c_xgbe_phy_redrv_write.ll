; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_redrv_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_redrv_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_phy_data* }
%struct.xgbe_phy_data = type { i32 }
%struct.xgbe_i2c_op = type { i32, i32*, i32, i32 }

@XGBE_I2C_CMD_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@XGBE_I2C_CMD_READ = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Redriver write checksum error\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32, i32)* @xgbe_phy_redrv_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_redrv_write(%struct.xgbe_prv_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.xgbe_phy_data*, align 8
  %9 = alloca %struct.xgbe_i2c_op, align 8
  %10 = alloca i32*, align 8
  %11 = alloca [5 x i32], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %17 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %16, i32 0, i32 1
  %18 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %17, align 8
  store %struct.xgbe_phy_data* %18, %struct.xgbe_phy_data** %8, align 8
  %19 = load i32, i32* %6, align 4
  %20 = lshr i32 %19, 8
  %21 = and i32 %20, 255
  %22 = shl i32 %21, 1
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  store i32 %22, i32* %23, align 16
  %24 = load i32, i32* %6, align 4
  %25 = and i32 %24, 255
  %26 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 2
  store i32* %27, i32** %10, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @cpu_to_be16(i32 %28)
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %31

31:                                               ; preds = %51, %3
  %32 = load i32, i32* %13, align 4
  %33 = icmp ult i32 %32, 4
  br i1 %33, label %34, label %54

34:                                               ; preds = %31
  %35 = load i32, i32* %13, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* %12, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %12, align 4
  br label %50

50:                                               ; preds = %47, %34
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %13, align 4
  %53 = add i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %31

54:                                               ; preds = %31
  %55 = load i32, i32* %12, align 4
  %56 = xor i32 %55, -1
  %57 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 4
  store i32 %56, i32* %57, align 16
  store i32 1, i32* %14, align 4
  br label %58

58:                                               ; preds = %81, %54
  %59 = load i32, i32* @XGBE_I2C_CMD_WRITE, align 4
  %60 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 3
  store i32 %59, i32* %60, align 4
  %61 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %8, align 8
  %62 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 2
  store i32 %63, i32* %64, align 8
  %65 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 0
  store i32 20, i32* %65, align 8
  %66 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %67 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 1
  store i32* %66, i32** %67, align 8
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %69 = call i32 @xgbe_phy_i2c_xfer(%struct.xgbe_prv_data* %68, %struct.xgbe_i2c_op* %9)
  store i32 %69, i32* %15, align 4
  %70 = load i32, i32* %15, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %58
  %73 = load i32, i32* %15, align 4
  %74 = load i32, i32* @EAGAIN, align 4
  %75 = sub nsw i32 0, %74
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %82

77:                                               ; preds = %72
  %78 = load i32, i32* %14, align 4
  %79 = add i32 %78, -1
  store i32 %79, i32* %14, align 4
  %80 = icmp ne i32 %78, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %77
  br label %58

82:                                               ; preds = %77, %72
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %4, align 4
  br label %126

84:                                               ; preds = %58
  store i32 1, i32* %14, align 4
  br label %85

85:                                               ; preds = %108, %84
  %86 = load i32, i32* @XGBE_I2C_CMD_READ, align 4
  %87 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 3
  store i32 %86, i32* %87, align 4
  %88 = load %struct.xgbe_phy_data*, %struct.xgbe_phy_data** %8, align 8
  %89 = getelementptr inbounds %struct.xgbe_phy_data, %struct.xgbe_phy_data* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 2
  store i32 %90, i32* %91, align 8
  %92 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 0
  store i32 1, i32* %92, align 8
  %93 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %94 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 1
  store i32* %93, i32** %94, align 8
  %95 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %96 = call i32 @xgbe_phy_i2c_xfer(%struct.xgbe_prv_data* %95, %struct.xgbe_i2c_op* %9)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %85
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* @EAGAIN, align 4
  %102 = sub nsw i32 0, %101
  %103 = icmp eq i32 %100, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %99
  %105 = load i32, i32* %14, align 4
  %106 = add i32 %105, -1
  store i32 %106, i32* %14, align 4
  %107 = icmp ne i32 %105, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %104
  br label %85

109:                                              ; preds = %104, %99
  %110 = load i32, i32* %15, align 4
  store i32 %110, i32* %4, align 4
  br label %126

111:                                              ; preds = %85
  %112 = getelementptr inbounds [5 x i32], [5 x i32]* %11, i64 0, i64 0
  %113 = load i32, i32* %112, align 16
  %114 = icmp ne i32 %113, 255
  br i1 %114, label %115, label %124

115:                                              ; preds = %111
  %116 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %117 = load i32, i32* @drv, align 4
  %118 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %119 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @netif_dbg(%struct.xgbe_prv_data* %116, i32 %117, i32 %120, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %122 = load i32, i32* @EIO, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %15, align 4
  br label %124

124:                                              ; preds = %115, %111
  %125 = load i32, i32* %15, align 4
  store i32 %125, i32* %4, align 4
  br label %126

126:                                              ; preds = %124, %109, %82
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @xgbe_phy_i2c_xfer(%struct.xgbe_prv_data*, %struct.xgbe_i2c_op*) #1

declare dso_local i32 @netif_dbg(%struct.xgbe_prv_data*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
