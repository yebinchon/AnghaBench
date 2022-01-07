; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_global_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/rcar/extr_rcar_canfd.c_rcar_canfd_global_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.net_device_stats }
%struct.net_device_stats = type { i32, i32 }
%struct.rcar_canfd_channel = type { i32, i32, %struct.rcar_canfd_global* }
%struct.rcar_canfd_global = type { i64 }

@RCANFD_RFFIFO_IDX = common dso_local global i32 0, align 4
@RCANFD_GERFL = common dso_local global i32 0, align 4
@RCANFD_GERFL_EEF0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Ch0: ECC Error flag\0A\00", align 1
@RCANFD_GERFL_EEF1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"Ch1: ECC Error flag\0A\00", align 1
@RCANFD_GERFL_MES = common dso_local global i32 0, align 4
@RCANFD_CFFIFO_IDX = common dso_local global i32 0, align 4
@RCANFD_CFSTS_CFMLT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Tx Message Lost flag\0A\00", align 1
@RCANFD_RFSTS_RFMLT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [22 x i8] c"Rx Message Lost flag\0A\00", align 1
@RCANFD_GERFL_CMPOF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [35 x i8] c"global payload overflow interrupt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @rcar_canfd_global_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcar_canfd_global_error(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rcar_canfd_channel*, align 8
  %4 = alloca %struct.rcar_canfd_global*, align 8
  %5 = alloca %struct.net_device_stats*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device* %10)
  store %struct.rcar_canfd_channel* %11, %struct.rcar_canfd_channel** %3, align 8
  %12 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %13 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %12, i32 0, i32 2
  %14 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %13, align 8
  store %struct.rcar_canfd_global* %14, %struct.rcar_canfd_global** %4, align 8
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  store %struct.net_device_stats* %16, %struct.net_device_stats** %5, align 8
  %17 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %18 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @RCANFD_RFFIFO_IDX, align 4
  %22 = add nsw i32 %20, %21
  store i32 %22, i32* %9, align 4
  %23 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %24 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @RCANFD_GERFL, align 4
  %27 = call i32 @rcar_canfd_read(i32 %25, i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @RCANFD_GERFL_EEF0, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %1
  %33 = load i32, i32* %6, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %32
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = call i32 @netdev_dbg(%struct.net_device* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %39 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %35, %32, %1
  %43 = load i32, i32* %7, align 4
  %44 = load i32, i32* @RCANFD_GERFL_EEF1, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %42
  %48 = load i32, i32* %6, align 4
  %49 = icmp eq i32 %48, 1
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load %struct.net_device*, %struct.net_device** %2, align 8
  %52 = call i32 @netdev_dbg(%struct.net_device* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %54 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %50, %47, %42
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* @RCANFD_GERFL_MES, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %121

62:                                               ; preds = %57
  %63 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %64 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %68 = call i32 @RCANFD_CFSTS(i32 %66, i32 %67)
  %69 = call i32 @rcar_canfd_read(i32 %65, i32 %68)
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @RCANFD_CFSTS_CFMLT, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %92

74:                                               ; preds = %62
  %75 = load %struct.net_device*, %struct.net_device** %2, align 8
  %76 = call i32 @netdev_dbg(%struct.net_device* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %77 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %78 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %82 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* @RCANFD_CFFIFO_IDX, align 4
  %86 = call i32 @RCANFD_CFSTS(i32 %84, i32 %85)
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @RCANFD_CFSTS_CFMLT, align 4
  %89 = xor i32 %88, -1
  %90 = and i32 %87, %89
  %91 = call i32 @rcar_canfd_write(i32 %83, i32 %86, i32 %90)
  br label %92

92:                                               ; preds = %74, %62
  %93 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %94 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @RCANFD_RFSTS(i32 %96)
  %98 = call i32 @rcar_canfd_read(i32 %95, i32 %97)
  store i32 %98, i32* %8, align 4
  %99 = load i32, i32* %8, align 4
  %100 = load i32, i32* @RCANFD_RFSTS_RFMLT, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %92
  %104 = load %struct.net_device*, %struct.net_device** %2, align 8
  %105 = call i32 @netdev_dbg(%struct.net_device* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %106 = load %struct.net_device_stats*, %struct.net_device_stats** %5, align 8
  %107 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = add nsw i32 %108, 1
  store i32 %109, i32* %107, align 4
  %110 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %111 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %9, align 4
  %114 = call i32 @RCANFD_RFSTS(i32 %113)
  %115 = load i32, i32* %8, align 4
  %116 = load i32, i32* @RCANFD_RFSTS_RFMLT, align 4
  %117 = xor i32 %116, -1
  %118 = and i32 %115, %117
  %119 = call i32 @rcar_canfd_write(i32 %112, i32 %114, i32 %118)
  br label %120

120:                                              ; preds = %103, %92
  br label %121

121:                                              ; preds = %120, %57
  %122 = load %struct.rcar_canfd_global*, %struct.rcar_canfd_global** %4, align 8
  %123 = getelementptr inbounds %struct.rcar_canfd_global, %struct.rcar_canfd_global* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @RCANFD_GERFL_CMPOF, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %134

131:                                              ; preds = %126
  %132 = load %struct.net_device*, %struct.net_device** %2, align 8
  %133 = call i32 @netdev_dbg(%struct.net_device* %132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %134

134:                                              ; preds = %131, %126, %121
  %135 = load %struct.rcar_canfd_channel*, %struct.rcar_canfd_channel** %3, align 8
  %136 = getelementptr inbounds %struct.rcar_canfd_channel, %struct.rcar_canfd_channel* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* @RCANFD_GERFL, align 4
  %139 = call i32 @rcar_canfd_write(i32 %137, i32 %138, i32 0)
  ret void
}

declare dso_local %struct.rcar_canfd_channel* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @rcar_canfd_read(i32, i32) #1

declare dso_local i32 @netdev_dbg(%struct.net_device*, i8*) #1

declare dso_local i32 @RCANFD_CFSTS(i32, i32) #1

declare dso_local i32 @rcar_canfd_write(i32, i32, i32) #1

declare dso_local i32 @RCANFD_RFSTS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
