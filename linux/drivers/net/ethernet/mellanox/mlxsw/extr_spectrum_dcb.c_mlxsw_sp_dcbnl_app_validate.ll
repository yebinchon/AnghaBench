; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_app_validate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/mellanox/mlxsw/extr_spectrum_dcb.c_mlxsw_sp_dcbnl_app_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dcb_app = type { i64, i32, i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"APP entry with priority value %u is invalid\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"DSCP APP entry with protocol value %u is invalid\0A\00", align 1
@.str.2 = private unnamed_addr constant [76 x i8] c"Choosing priority %d for DSCP %d in favor of previously-active value of %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [70 x i8] c"Ignoring new priority %d for DSCP %d in favor of current value of %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"EtherType APP entries with protocol value != 0 not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"APP entries with selector %u not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.dcb_app*)* @mlxsw_sp_dcbnl_app_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxsw_sp_dcbnl_app_validate(%struct.net_device* %0, %struct.dcb_app* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.dcb_app*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.dcb_app* %1, %struct.dcb_app** %5, align 8
  %7 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %8 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @IEEE_8021QAZ_MAX_TCS, align 8
  %11 = icmp sge i64 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %15 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %13, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %106

20:                                               ; preds = %2
  %21 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %22 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  switch i32 %23, label %97 [
    i32 129, label %24
    i32 128, label %86
  ]

24:                                               ; preds = %20
  %25 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %26 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = icmp sge i32 %27, 64
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %32 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %30, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %33)
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %106

37:                                               ; preds = %24
  %38 = load %struct.net_device*, %struct.net_device** %4, align 8
  %39 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %40 = call i32 @dcb_ieee_getapp_mask(%struct.net_device* %38, %struct.dcb_app* %39)
  %41 = call i32 @fls(i32 %40)
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = add nsw i32 %42, -1
  store i32 %43, i32* %6, align 4
  %44 = icmp ne i32 %42, 0
  br i1 %44, label %45, label %85

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %49 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp slt i64 %47, %50
  br i1 %51, label %52, label %64

52:                                               ; preds = %45
  %53 = load %struct.net_device*, %struct.net_device** %4, align 8
  %54 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %55 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %59 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @netdev_warn(%struct.net_device* %53, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str.2, i64 0, i64 0), i32 %57, i64 %61, i32 %62)
  br label %84

64:                                               ; preds = %45
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %68 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %66, %69
  br i1 %70, label %71, label %83

71:                                               ; preds = %64
  %72 = load %struct.net_device*, %struct.net_device** %4, align 8
  %73 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %74 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %78 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %6, align 4
  %82 = call i32 @netdev_warn(%struct.net_device* %72, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.3, i64 0, i64 0), i32 %76, i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %71, %64
  br label %84

84:                                               ; preds = %83, %52
  br label %85

85:                                               ; preds = %84, %37
  br label %105

86:                                               ; preds = %20
  %87 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %88 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %86
  %92 = load %struct.net_device*, %struct.net_device** %4, align 8
  %93 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %92, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %106

96:                                               ; preds = %86
  br label %105

97:                                               ; preds = %20
  %98 = load %struct.net_device*, %struct.net_device** %4, align 8
  %99 = load %struct.dcb_app*, %struct.dcb_app** %5, align 8
  %100 = getelementptr inbounds %struct.dcb_app, %struct.dcb_app* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %98, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0), i32 %101)
  %103 = load i32, i32* @EINVAL, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %106

105:                                              ; preds = %96, %85
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %97, %91, %29, %12
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @fls(i32) #1

declare dso_local i32 @dcb_ieee_getapp_mask(%struct.net_device*, %struct.dcb_app*) #1

declare dso_local i32 @netdev_warn(%struct.net_device*, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
