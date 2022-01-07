; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_thermal.c_cxgb4_thermal_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_thermal.c_cxgb4_thermal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32, i32, %struct.ch_thermal }
%struct.ch_thermal = type { i32, i32*, i32 }

@CXGB4_NUM_TRIPS = common dso_local global i32 0, align 4
@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_DIAG = common dso_local global i32 0, align 4
@FW_PARAM_DEV_DIAG_MAXTMPTHRESH = common dso_local global i32 0, align 4
@THERMAL_TRIP_CRITICAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"cxgb4\00", align 1
@cxgb4_thermal_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Failed to register thermal zone\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxgb4_thermal_init(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.ch_thermal*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 3
  store %struct.ch_thermal* %10, %struct.ch_thermal** %4, align 8
  %11 = load i32, i32* @CXGB4_NUM_TRIPS, align 4
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %13 = call i32 @FW_PARAMS_MNEM_V(i32 %12)
  %14 = load i32, i32* @FW_PARAMS_PARAM_DEV_DIAG, align 4
  %15 = call i32 @FW_PARAMS_PARAM_X_V(i32 %14)
  %16 = or i32 %13, %15
  %17 = load i32, i32* @FW_PARAM_DEV_DIAG_MAXTMPTHRESH, align 4
  %18 = call i32 @FW_PARAMS_PARAM_Y_V(i32 %17)
  %19 = or i32 %16, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.adapter*, %struct.adapter** %3, align 8
  %21 = load %struct.adapter*, %struct.adapter** %3, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.adapter*, %struct.adapter** %3, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @t4_query_params(%struct.adapter* %20, i32 %23, i32 %26, i32 0, i32 1, i32* %6, i32* %7)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %39

31:                                               ; preds = %1
  %32 = load i32, i32* %7, align 4
  %33 = mul nsw i32 %32, 1000
  %34 = load %struct.ch_thermal*, %struct.ch_thermal** %4, align 8
  %35 = getelementptr inbounds %struct.ch_thermal, %struct.ch_thermal* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @THERMAL_TRIP_CRITICAL, align 4
  %37 = load %struct.ch_thermal*, %struct.ch_thermal** %4, align 8
  %38 = getelementptr inbounds %struct.ch_thermal, %struct.ch_thermal* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %39

39:                                               ; preds = %31, %30
  %40 = load i32, i32* %5, align 4
  %41 = load %struct.adapter*, %struct.adapter** %3, align 8
  %42 = call i32* @thermal_zone_device_register(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %40, i32 0, %struct.adapter* %41, i32* @cxgb4_thermal_ops, i32* null, i32 0, i32 0)
  %43 = load %struct.ch_thermal*, %struct.ch_thermal** %4, align 8
  %44 = getelementptr inbounds %struct.ch_thermal, %struct.ch_thermal* %43, i32 0, i32 1
  store i32* %42, i32** %44, align 8
  %45 = load %struct.ch_thermal*, %struct.ch_thermal** %4, align 8
  %46 = getelementptr inbounds %struct.ch_thermal, %struct.ch_thermal* %45, i32 0, i32 1
  %47 = load i32*, i32** %46, align 8
  %48 = call i64 @IS_ERR(i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %39
  %51 = load %struct.ch_thermal*, %struct.ch_thermal** %4, align 8
  %52 = getelementptr inbounds %struct.ch_thermal, %struct.ch_thermal* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @PTR_ERR(i32* %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.adapter*, %struct.adapter** %3, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %59 = load %struct.ch_thermal*, %struct.ch_thermal** %4, align 8
  %60 = getelementptr inbounds %struct.ch_thermal, %struct.ch_thermal* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load i32, i32* %8, align 4
  store i32 %61, i32* %2, align 4
  br label %63

62:                                               ; preds = %39
  store i32 0, i32* %2, align 4
  br label %63

63:                                               ; preds = %62, %50
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_Y_V(i32) #1

declare dso_local i32 @t4_query_params(%struct.adapter*, i32, i32, i32, i32, i32*, i32*) #1

declare dso_local i32* @thermal_zone_device_register(i8*, i32, i32, %struct.adapter*, i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
