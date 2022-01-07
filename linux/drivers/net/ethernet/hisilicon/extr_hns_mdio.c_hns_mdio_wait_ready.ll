; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_wait_ready.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hisilicon/extr_hns_mdio.c_hns_mdio_wait_ready.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.hns_mdio_device* }
%struct.hns_mdio_device = type { i32 }

@MDIO_TIMEOUT = common dso_local global i32 0, align 4
@MDIO_COMMAND_REG = common dso_local global i32 0, align 4
@MDIO_CMD_START_B = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*)* @hns_mdio_wait_ready to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hns_mdio_wait_ready(%struct.mii_bus* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mii_bus*, align 8
  %4 = alloca %struct.hns_mdio_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %3, align 8
  %7 = load %struct.mii_bus*, %struct.mii_bus** %3, align 8
  %8 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %7, i32 0, i32 0
  %9 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %8, align 8
  store %struct.hns_mdio_device* %9, %struct.hns_mdio_device** %4, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %23, %1
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @MDIO_TIMEOUT, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %10
  %15 = load %struct.hns_mdio_device*, %struct.hns_mdio_device** %4, align 8
  %16 = load i32, i32* @MDIO_COMMAND_REG, align 4
  %17 = load i32, i32* @MDIO_CMD_START_B, align 4
  %18 = call i64 @MDIO_GET_REG_BIT(%struct.hns_mdio_device* %15, i32 %16, i32 %17)
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %14
  br label %26

22:                                               ; preds = %14
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %6, align 4
  br label %10

26:                                               ; preds = %21, %10
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @MDIO_TIMEOUT, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %36

30:                                               ; preds = %26
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %30
  %34 = load i32, i32* @ETIMEDOUT, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %30, %26
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i64 @MDIO_GET_REG_BIT(%struct.hns_mdio_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
