; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_mdio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_mdio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ftmac100 = type { i64 }

@FTMAC100_PHYCR_MIIWR = common dso_local global i32 0, align 4
@FTMAC100_OFFSET_PHYWDATA = common dso_local global i64 0, align 8
@FTMAC100_OFFSET_PHYCR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"mdio write timed out\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32, i32)* @ftmac100_mdio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ftmac100_mdio_write(%struct.net_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ftmac100*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.net_device*, %struct.net_device** %5, align 8
  %13 = call %struct.ftmac100* @netdev_priv(%struct.net_device* %12)
  store %struct.ftmac100* %13, %struct.ftmac100** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @FTMAC100_PHYCR_PHYAD(i32 %14)
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @FTMAC100_PHYCR_REGAD(i32 %16)
  %18 = or i32 %15, %17
  %19 = load i32, i32* @FTMAC100_PHYCR_MIIWR, align 4
  %20 = or i32 %18, %19
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %8, align 4
  %22 = call i32 @FTMAC100_PHYWDATA_MIIWDATA(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.ftmac100*, %struct.ftmac100** %9, align 8
  %25 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @FTMAC100_OFFSET_PHYWDATA, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @iowrite32(i32 %23, i64 %28)
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.ftmac100*, %struct.ftmac100** %9, align 8
  %32 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @FTMAC100_OFFSET_PHYCR, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @iowrite32(i32 %30, i64 %35)
  store i32 0, i32* %11, align 4
  br label %37

37:                                               ; preds = %54, %4
  %38 = load i32, i32* %11, align 4
  %39 = icmp slt i32 %38, 10
  br i1 %39, label %40, label %57

40:                                               ; preds = %37
  %41 = load %struct.ftmac100*, %struct.ftmac100** %9, align 8
  %42 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FTMAC100_OFFSET_PHYCR, align 8
  %45 = add nsw i64 %43, %44
  %46 = call i32 @ioread32(i64 %45)
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @FTMAC100_PHYCR_MIIWR, align 4
  %49 = and i32 %47, %48
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  br label %60

52:                                               ; preds = %40
  %53 = call i32 @udelay(i32 100)
  br label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %37

57:                                               ; preds = %37
  %58 = load %struct.net_device*, %struct.net_device** %5, align 8
  %59 = call i32 @netdev_err(%struct.net_device* %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %60

60:                                               ; preds = %57, %51
  ret void
}

declare dso_local %struct.ftmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @FTMAC100_PHYCR_PHYAD(i32) #1

declare dso_local i32 @FTMAC100_PHYCR_REGAD(i32) #1

declare dso_local i32 @FTMAC100_PHYWDATA_MIIWDATA(i32) #1

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
