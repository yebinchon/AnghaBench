; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_get_features.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-i2c.c_xgbe_i2c_get_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, %struct.xgbe_i2c }
%struct.xgbe_i2c = type { i8*, i8*, i8* }

@IC_COMP_PARAM_1 = common dso_local global i32 0, align 4
@MAX_SPEED_MODE = common dso_local global i32 0, align 4
@RX_BUFFER_DEPTH = common dso_local global i32 0, align 4
@TX_BUFFER_DEPTH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"I2C features: %s=%u, %s=%u, %s=%u\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"MAX_SPEED_MODE\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"RX_BUFFER_DEPTH\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"TX_BUFFER_DEPTH\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_i2c_get_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_i2c_get_features(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca %struct.xgbe_i2c*, align 8
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  %5 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %6 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %5, i32 0, i32 1
  store %struct.xgbe_i2c* %6, %struct.xgbe_i2c** %3, align 8
  %7 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %8 = load i32, i32* @IC_COMP_PARAM_1, align 4
  %9 = call i32 @XI2C_IOREAD(%struct.xgbe_prv_data* %7, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @IC_COMP_PARAM_1, align 4
  %12 = load i32, i32* @MAX_SPEED_MODE, align 4
  %13 = call i8* @XI2C_GET_BITS(i32 %10, i32 %11, i32 %12)
  %14 = load %struct.xgbe_i2c*, %struct.xgbe_i2c** %3, align 8
  %15 = getelementptr inbounds %struct.xgbe_i2c, %struct.xgbe_i2c* %14, i32 0, i32 2
  store i8* %13, i8** %15, align 8
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IC_COMP_PARAM_1, align 4
  %18 = load i32, i32* @RX_BUFFER_DEPTH, align 4
  %19 = call i8* @XI2C_GET_BITS(i32 %16, i32 %17, i32 %18)
  %20 = load %struct.xgbe_i2c*, %struct.xgbe_i2c** %3, align 8
  %21 = getelementptr inbounds %struct.xgbe_i2c, %struct.xgbe_i2c* %20, i32 0, i32 1
  store i8* %19, i8** %21, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @IC_COMP_PARAM_1, align 4
  %24 = load i32, i32* @TX_BUFFER_DEPTH, align 4
  %25 = call i8* @XI2C_GET_BITS(i32 %22, i32 %23, i32 %24)
  %26 = load %struct.xgbe_i2c*, %struct.xgbe_i2c** %3, align 8
  %27 = getelementptr inbounds %struct.xgbe_i2c, %struct.xgbe_i2c* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %29 = call i64 @netif_msg_probe(%struct.xgbe_prv_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %1
  %32 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %33 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.xgbe_i2c*, %struct.xgbe_i2c** %3, align 8
  %36 = getelementptr inbounds %struct.xgbe_i2c, %struct.xgbe_i2c* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = load %struct.xgbe_i2c*, %struct.xgbe_i2c** %3, align 8
  %39 = getelementptr inbounds %struct.xgbe_i2c, %struct.xgbe_i2c* %38, i32 0, i32 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.xgbe_i2c*, %struct.xgbe_i2c** %3, align 8
  %42 = getelementptr inbounds %struct.xgbe_i2c, %struct.xgbe_i2c* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @dev_dbg(i32 %34, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %37, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8* %40, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i8* %43)
  br label %45

45:                                               ; preds = %31, %1
  ret void
}

declare dso_local i32 @XI2C_IOREAD(%struct.xgbe_prv_data*, i32) #1

declare dso_local i8* @XI2C_GET_BITS(i32, i32, i32) #1

declare dso_local i64 @netif_msg_probe(%struct.xgbe_prv_data*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
