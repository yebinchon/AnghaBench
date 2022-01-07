; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_mdio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_mdio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ftmac100 = type { i64 }

@FTMAC100_PHYCR_MIIRD = common dso_local global i32 0, align 4
@FTMAC100_OFFSET_PHYCR = common dso_local global i64 0, align 8
@FTMAC100_PHYCR_MIIRDATA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"mdio read timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32)* @ftmac100_mdio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftmac100_mdio_read(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ftmac100*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.ftmac100* @netdev_priv(%struct.net_device* %11)
  store %struct.ftmac100* %12, %struct.ftmac100** %8, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @FTMAC100_PHYCR_PHYAD(i32 %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @FTMAC100_PHYCR_REGAD(i32 %15)
  %17 = or i32 %14, %16
  %18 = load i32, i32* @FTMAC100_PHYCR_MIIRD, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.ftmac100*, %struct.ftmac100** %8, align 8
  %22 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @FTMAC100_OFFSET_PHYCR, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @iowrite32(i32 %20, i64 %25)
  store i32 0, i32* %10, align 4
  br label %27

27:                                               ; preds = %47, %3
  %28 = load i32, i32* %10, align 4
  %29 = icmp slt i32 %28, 10
  br i1 %29, label %30, label %50

30:                                               ; preds = %27
  %31 = load %struct.ftmac100*, %struct.ftmac100** %8, align 8
  %32 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FTMAC100_OFFSET_PHYCR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @ioread32(i64 %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @FTMAC100_PHYCR_MIIRD, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %30
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* @FTMAC100_PHYCR_MIIRDATA, align 4
  %44 = and i32 %42, %43
  store i32 %44, i32* %4, align 4
  br label %53

45:                                               ; preds = %30
  %46 = call i32 @udelay(i32 100)
  br label %47

47:                                               ; preds = %45
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %27

50:                                               ; preds = %27
  %51 = load %struct.net_device*, %struct.net_device** %5, align 8
  %52 = call i32 @netdev_err(%struct.net_device* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %41
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local %struct.ftmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @FTMAC100_PHYCR_PHYAD(i32) #1

declare dso_local i32 @FTMAC100_PHYCR_REGAD(i32) #1

declare dso_local i32 @iowrite32(i32, i64) #1

declare dso_local i32 @ioread32(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
