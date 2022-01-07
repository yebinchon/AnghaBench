; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_register_netdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/extr_cnic.c_cnic_register_netdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { i32, %struct.cnic_eth_dev* }
%struct.cnic_eth_dev = type { i32, i32 (i32, i32, %struct.cnic_dev.0*)*, i32 }
%struct.cnic_dev.0 = type opaque

@ENODEV = common dso_local global i32 0, align 4
@CNIC_DRV_STATE_REGD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"register_cnic failed\0A\00", align 1
@CNIC_DRV_STATE_NO_ISCSI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*)* @cnic_register_netdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_register_netdev(%struct.cnic_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cnic_dev*, align 8
  %4 = alloca %struct.cnic_local*, align 8
  %5 = alloca %struct.cnic_eth_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %3, align 8
  %7 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %8 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %7, i32 0, i32 2
  %9 = load %struct.cnic_local*, %struct.cnic_local** %8, align 8
  store %struct.cnic_local* %9, %struct.cnic_local** %4, align 8
  %10 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %11 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %10, i32 0, i32 1
  %12 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %11, align 8
  store %struct.cnic_eth_dev* %12, %struct.cnic_eth_dev** %5, align 8
  %13 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %14 = icmp ne %struct.cnic_eth_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %63

18:                                               ; preds = %1
  %19 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %20 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @CNIC_DRV_STATE_REGD, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %63

26:                                               ; preds = %18
  %27 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %28 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %27, i32 0, i32 1
  %29 = load i32 (i32, i32, %struct.cnic_dev.0*)*, i32 (i32, i32, %struct.cnic_dev.0*)** %28, align 8
  %30 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %31 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.cnic_local*, %struct.cnic_local** %4, align 8
  %34 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %37 = bitcast %struct.cnic_dev* %36 to %struct.cnic_dev.0*
  %38 = call i32 %29(i32 %32, i32 %35, %struct.cnic_dev.0* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %26
  %42 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %43 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @netdev_err(i32 %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %46

46:                                               ; preds = %41, %26
  %47 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %48 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %51 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.cnic_eth_dev*, %struct.cnic_eth_dev** %5, align 8
  %53 = getelementptr inbounds %struct.cnic_eth_dev, %struct.cnic_eth_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @CNIC_DRV_STATE_NO_ISCSI, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %46
  %59 = load %struct.cnic_dev*, %struct.cnic_dev** %3, align 8
  %60 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  br label %61

61:                                               ; preds = %58, %46
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %61, %25, %15
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
