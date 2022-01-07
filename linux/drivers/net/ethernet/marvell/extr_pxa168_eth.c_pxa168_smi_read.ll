; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_smi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/extr_pxa168_eth.c_pxa168_smi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.pxa168_eth_private* }
%struct.pxa168_eth_private = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"pxa168_eth: SMI bus busy timeout\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@SMI = common dso_local global i32 0, align 4
@SMI_OP_R = common dso_local global i32 0, align 4
@SMI_R_VALID = common dso_local global i32 0, align 4
@PHY_WAIT_ITERATIONS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"pxa168_eth: SMI bus read not valid\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @pxa168_smi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxa168_smi_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pxa168_eth_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %12, align 8
  store %struct.pxa168_eth_private* %13, %struct.pxa168_eth_private** %8, align 8
  store i32 0, i32* %9, align 4
  %14 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %8, align 8
  %15 = call i64 @smi_wait_ready(%struct.pxa168_eth_private* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %3
  %18 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %8, align 8
  %19 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @netdev_warn(i32 %20, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @ETIMEDOUT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %62

24:                                               ; preds = %3
  %25 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %8, align 8
  %26 = load i32, i32* @SMI, align 4
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 16
  %29 = load i32, i32* %7, align 4
  %30 = shl i32 %29, 21
  %31 = or i32 %28, %30
  %32 = load i32, i32* @SMI_OP_R, align 4
  %33 = or i32 %31, %32
  %34 = call i32 @wrl(%struct.pxa168_eth_private* %25, i32 %26, i32 %33)
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %56, %24
  %36 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %8, align 8
  %37 = load i32, i32* @SMI, align 4
  %38 = call i32 @rdl(%struct.pxa168_eth_private* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* @SMI_R_VALID, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br i1 %42, label %43, label %59

43:                                               ; preds = %35
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @PHY_WAIT_ITERATIONS, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.pxa168_eth_private*, %struct.pxa168_eth_private** %8, align 8
  %49 = getelementptr inbounds %struct.pxa168_eth_private, %struct.pxa168_eth_private* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @netdev_warn(i32 %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @ENODEV, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %62

54:                                               ; preds = %43
  %55 = call i32 @msleep(i32 10)
  br label %56

56:                                               ; preds = %54
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %9, align 4
  br label %35

59:                                               ; preds = %35
  %60 = load i32, i32* %10, align 4
  %61 = and i32 %60, 65535
  store i32 %61, i32* %4, align 4
  br label %62

62:                                               ; preds = %59, %47, %17
  %63 = load i32, i32* %4, align 4
  ret i32 %63
}

declare dso_local i64 @smi_wait_ready(%struct.pxa168_eth_private*) #1

declare dso_local i32 @netdev_warn(i32, i8*) #1

declare dso_local i32 @wrl(%struct.pxa168_eth_private*, i32, i32) #1

declare dso_local i32 @rdl(%struct.pxa168_eth_private*, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
