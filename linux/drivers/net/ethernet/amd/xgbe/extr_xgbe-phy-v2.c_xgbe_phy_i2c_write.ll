; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_i2c_op = type { i32, i32, i8*, i32 }

@XGBE_I2C_CMD_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32, i8*, i32)* @xgbe_phy_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_i2c_write(%struct.xgbe_prv_data* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.xgbe_prv_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xgbe_i2c_op, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 1, i32* %10, align 4
  br label %12

12:                                               ; preds = %31, %4
  %13 = load i32, i32* @XGBE_I2C_CMD_WRITE, align 4
  %14 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 0
  store i32 %15, i32* %16, align 8
  %17 = load i32, i32* %8, align 4
  %18 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load i8*, i8** %7, align 8
  %20 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %9, i32 0, i32 2
  store i8* %19, i8** %20, align 8
  %21 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %5, align 8
  %22 = call i32 @xgbe_phy_i2c_xfer(%struct.xgbe_prv_data* %21, %struct.xgbe_i2c_op* %9)
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @EAGAIN, align 4
  %25 = sub nsw i32 0, %24
  %26 = icmp eq i32 %23, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %12
  %28 = load i32, i32* %10, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %10, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  br label %12

32:                                               ; preds = %27, %12
  %33 = load i32, i32* %11, align 4
  ret i32 %33
}

declare dso_local i32 @xgbe_phy_i2c_xfer(%struct.xgbe_prv_data*, %struct.xgbe_i2c_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
