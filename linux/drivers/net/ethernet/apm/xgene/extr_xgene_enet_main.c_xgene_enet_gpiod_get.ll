; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_gpiod_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/apm/xgene/extr_xgene_enet_main.c_xgene_enet_gpiod_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgene_enet_pdata = type { i32, i64, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@PHY_INTERFACE_MODE_XGMII = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"sfp-gpios\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"rxlos-gpios\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"rxlos\00", align 1
@GPIOD_IN = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [4 x i8] c"sfp\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgene_enet_pdata*)* @xgene_enet_gpiod_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgene_enet_gpiod_get(%struct.xgene_enet_pdata* %0) #0 {
  %2 = alloca %struct.xgene_enet_pdata*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.xgene_enet_pdata* %0, %struct.xgene_enet_pdata** %2, align 8
  %4 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %5 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %4, i32 0, i32 3
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %9 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %8, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %11 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @PHY_INTERFACE_MODE_XGMII, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %23, label %15

15:                                               ; preds = %1
  %16 = load %struct.device*, %struct.device** %3, align 8
  %17 = call i32 @device_property_present(%struct.device* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %15
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = call i32 @device_property_present(%struct.device* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19, %1
  br label %43

24:                                               ; preds = %19, %15
  %25 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %26 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %25, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load %struct.device*, %struct.device** %3, align 8
  %28 = load i32, i32* @GPIOD_IN, align 4
  %29 = call i8* @gpiod_get(%struct.device* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %31 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %30, i32 0, i32 2
  store i8* %29, i8** %31, align 8
  %32 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %33 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %32, i32 0, i32 2
  %34 = load i8*, i8** %33, align 8
  %35 = call i64 @IS_ERR(i8* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %24
  %38 = load %struct.device*, %struct.device** %3, align 8
  %39 = load i32, i32* @GPIOD_IN, align 4
  %40 = call i8* @gpiod_get(%struct.device* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0), i32 %39)
  %41 = load %struct.xgene_enet_pdata*, %struct.xgene_enet_pdata** %2, align 8
  %42 = getelementptr inbounds %struct.xgene_enet_pdata, %struct.xgene_enet_pdata* %41, i32 0, i32 2
  store i8* %40, i8** %42, align 8
  br label %43

43:                                               ; preds = %23, %37, %24
  ret void
}

declare dso_local i32 @device_property_present(%struct.device*, i8*) #1

declare dso_local i8* @gpiod_get(%struct.device*, i8*, i32) #1

declare dso_local i64 @IS_ERR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
