; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cirrus/extr_ep93xx_eth.c_ep93xx_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ep93xx_priv = type { i32 }

@REG_MIICMD = common dso_local global i32 0, align 4
@REG_MIICMD_READ = common dso_local global i32 0, align 4
@REG_MIISTS = common dso_local global i32 0, align 4
@REG_MIISTS_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mdio read timed out\0A\00", align 1
@REG_MIIDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @ep93xx_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep93xx_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ep93xx_priv*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call %struct.ep93xx_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.ep93xx_priv* %11, %struct.ep93xx_priv** %7, align 8
  %12 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %7, align 8
  %13 = load i32, i32* @REG_MIICMD, align 4
  %14 = load i32, i32* @REG_MIICMD_READ, align 4
  %15 = load i32, i32* %5, align 4
  %16 = shl i32 %15, 5
  %17 = or i32 %14, %16
  %18 = load i32, i32* %6, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @wrl(%struct.ep93xx_priv* %12, i32 %13, i32 %19)
  store i32 0, i32* %9, align 4
  br label %21

21:                                               ; preds = %34, %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %22, 10
  br i1 %23, label %24, label %37

24:                                               ; preds = %21
  %25 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %7, align 8
  %26 = load i32, i32* @REG_MIISTS, align 4
  %27 = call i32 @rdl(%struct.ep93xx_priv* %25, i32 %26)
  %28 = load i32, i32* @REG_MIISTS_BUSY, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %24
  br label %37

32:                                               ; preds = %24
  %33 = call i32 @msleep(i32 1)
  br label %34

34:                                               ; preds = %32
  %35 = load i32, i32* %9, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %9, align 4
  br label %21

37:                                               ; preds = %31, %21
  %38 = load i32, i32* %9, align 4
  %39 = icmp eq i32 %38, 10
  br i1 %39, label %40, label %42

40:                                               ; preds = %37
  %41 = call i32 @pr_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 65535, i32* %8, align 4
  br label %46

42:                                               ; preds = %37
  %43 = load %struct.ep93xx_priv*, %struct.ep93xx_priv** %7, align 8
  %44 = load i32, i32* @REG_MIIDATA, align 4
  %45 = call i32 @rdl(%struct.ep93xx_priv* %43, i32 %44)
  store i32 %45, i32* %8, align 4
  br label %46

46:                                               ; preds = %42, %40
  %47 = load i32, i32* %8, align 4
  ret i32 %47
}

declare dso_local %struct.ep93xx_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @wrl(%struct.ep93xx_priv*, i32, i32) #1

declare dso_local i32 @rdl(%struct.ep93xx_priv*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @pr_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
