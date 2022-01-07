; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-i2c.c_i2c_mii_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_mdio-i2c.c_i2c_mii_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }
%struct.i2c_msg = type { i32, i32*, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32, i32)* @i2c_mii_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i2c_mii_write(%struct.mii_bus* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.mii_bus*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.i2c_adapter*, align 8
  %11 = alloca %struct.i2c_msg, align 8
  %12 = alloca i32, align 4
  %13 = alloca [3 x i32], align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.mii_bus*, %struct.mii_bus** %6, align 8
  %15 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %14, i32 0, i32 0
  %16 = load %struct.i2c_adapter*, %struct.i2c_adapter** %15, align 8
  store %struct.i2c_adapter* %16, %struct.i2c_adapter** %10, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @i2c_mii_valid_phy_id(i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %45

21:                                               ; preds = %4
  %22 = load i32, i32* %8, align 4
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  store i32 %22, i32* %23, align 4
  %24 = load i32, i32* %9, align 4
  %25 = ashr i32 %24, 8
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 1
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %9, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 2
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @i2c_mii_phy_addr(i32 %29)
  %31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 3
  store i32 %30, i32* %31, align 8
  %32 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 0
  store i32 3, i32* %33, align 8
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %35 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1
  store i32* %34, i32** %35, align 8
  %36 = load %struct.i2c_adapter*, %struct.i2c_adapter** %10, align 8
  %37 = call i32 @i2c_transfer(%struct.i2c_adapter* %36, %struct.i2c_msg* %11, i32 1)
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %21
  %41 = load i32, i32* %12, align 4
  br label %43

42:                                               ; preds = %21
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %43, %20
  %46 = load i32, i32* %5, align 4
  ret i32 %46
}

declare dso_local i32 @i2c_mii_valid_phy_id(i32) #1

declare dso_local i32 @i2c_mii_phy_addr(i32) #1

declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
