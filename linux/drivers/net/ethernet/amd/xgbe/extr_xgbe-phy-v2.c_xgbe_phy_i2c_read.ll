; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/xgbe/extr_xgbe-phy-v2.c_xgbe_phy_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32 }
%struct.xgbe_i2c_op = type { i32, i32, i8*, i32 }

@XGBE_I2C_CMD_WRITE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@XGBE_I2C_CMD_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xgbe_prv_data*, i32, i8*, i32, i8*, i32)* @xgbe_phy_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xgbe_phy_i2c_read(%struct.xgbe_prv_data* %0, i32 %1, i8* %2, i32 %3, i8* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.xgbe_prv_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.xgbe_i2c_op, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %8, align 8
  store i32 %1, i32* %9, align 4
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i8* %4, i8** %12, align 8
  store i32 %5, i32* %13, align 4
  store i32 1, i32* %15, align 4
  br label %17

17:                                               ; preds = %39, %6
  %18 = load i32, i32* @XGBE_I2C_CMD_WRITE, align 4
  %19 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %14, i32 0, i32 3
  store i32 %18, i32* %19, align 8
  %20 = load i32, i32* %9, align 4
  %21 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %14, i32 0, i32 0
  store i32 %20, i32* %21, align 8
  %22 = load i32, i32* %11, align 4
  %23 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %14, i32 0, i32 1
  store i32 %22, i32* %23, align 4
  %24 = load i8*, i8** %10, align 8
  %25 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %14, i32 0, i32 2
  store i8* %24, i8** %25, align 8
  %26 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %27 = call i32 @xgbe_phy_i2c_xfer(%struct.xgbe_prv_data* %26, %struct.xgbe_i2c_op* %14)
  store i32 %27, i32* %16, align 4
  %28 = load i32, i32* %16, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %42

30:                                               ; preds = %17
  %31 = load i32, i32* %16, align 4
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %30
  %36 = load i32, i32* %15, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %15, align 4
  %38 = icmp ne i32 %36, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %17

40:                                               ; preds = %35, %30
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %7, align 4
  br label %65

42:                                               ; preds = %17
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %62, %42
  %44 = load i32, i32* @XGBE_I2C_CMD_READ, align 4
  %45 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %14, i32 0, i32 3
  store i32 %44, i32* %45, align 8
  %46 = load i32, i32* %9, align 4
  %47 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %14, i32 0, i32 0
  store i32 %46, i32* %47, align 8
  %48 = load i32, i32* %13, align 4
  %49 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %14, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load i8*, i8** %12, align 8
  %51 = getelementptr inbounds %struct.xgbe_i2c_op, %struct.xgbe_i2c_op* %14, i32 0, i32 2
  store i8* %50, i8** %51, align 8
  %52 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %8, align 8
  %53 = call i32 @xgbe_phy_i2c_xfer(%struct.xgbe_prv_data* %52, %struct.xgbe_i2c_op* %14)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %16, align 4
  %55 = load i32, i32* @EAGAIN, align 4
  %56 = sub nsw i32 0, %55
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %43
  %59 = load i32, i32* %15, align 4
  %60 = add nsw i32 %59, -1
  store i32 %60, i32* %15, align 4
  %61 = icmp ne i32 %59, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  br label %43

63:                                               ; preds = %58, %43
  %64 = load i32, i32* %16, align 4
  store i32 %64, i32* %7, align 4
  br label %65

65:                                               ; preds = %63, %40
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32 @xgbe_phy_i2c_xfer(%struct.xgbe_prv_data*, %struct.xgbe_i2c_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
