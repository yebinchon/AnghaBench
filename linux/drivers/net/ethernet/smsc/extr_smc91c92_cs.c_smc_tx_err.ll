; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_tx_err.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smc91c92_cs.c_smc_tx_err.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }
%struct.smc_private = type { i32, i32, i32 }

@PNR_ARR = common dso_local global i64 0, align 8
@FIFO_PORTS = common dso_local global i64 0, align 8
@PTR_AUTOINC = common dso_local global i32 0, align 4
@PTR_READ = common dso_local global i32 0, align 4
@POINTER = common dso_local global i64 0, align 8
@DATA_1 = common dso_local global i64 0, align 8
@TS_LOSTCAR = common dso_local global i32 0, align 4
@TS_LATCOL = common dso_local global i32 0, align 4
@TS_16COL = common dso_local global i32 0, align 4
@TS_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"Successful packet caused error interrupt?\0A\00", align 1
@TCR = common dso_local global i64 0, align 8
@TCR_ENABLE = common dso_local global i32 0, align 4
@MC_FREEPKT = common dso_local global i32 0, align 4
@MMU_CMD = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @smc_tx_err to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smc_tx_err(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.smc_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.smc_private* @netdev_priv(%struct.net_device* %8)
  store %struct.smc_private* %9, %struct.smc_private** %3, align 8
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = zext i32 %13 to i64
  %15 = load i64, i64* @PNR_ARR, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @inw(i64 %16)
  %18 = and i32 %17, 255
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %4, align 4
  %20 = zext i32 %19 to i64
  %21 = load i64, i64* @FIFO_PORTS, align 8
  %22 = add nsw i64 %20, %21
  %23 = call i32 @inw(i64 %22)
  %24 = and i32 %23, 127
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %4, align 4
  %27 = zext i32 %26 to i64
  %28 = load i64, i64* @PNR_ARR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outw(i32 %25, i64 %29)
  %31 = load i32, i32* @PTR_AUTOINC, align 4
  %32 = load i32, i32* @PTR_READ, align 4
  %33 = or i32 %31, %32
  %34 = load i32, i32* %4, align 4
  %35 = zext i32 %34 to i64
  %36 = load i64, i64* @POINTER, align 8
  %37 = add nsw i64 %35, %36
  %38 = call i32 @outw(i32 %33, i64 %37)
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = load i64, i64* @DATA_1, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @inw(i64 %42)
  store i32 %43, i32* %7, align 4
  %44 = load %struct.net_device*, %struct.net_device** %2, align 8
  %45 = getelementptr inbounds %struct.net_device, %struct.net_device* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %46, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TS_LOSTCAR, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %1
  %54 = load %struct.net_device*, %struct.net_device** %2, align 8
  %55 = getelementptr inbounds %struct.net_device, %struct.net_device* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %53, %1
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @TS_LATCOL, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %59
  %65 = load %struct.net_device*, %struct.net_device** %2, align 8
  %66 = getelementptr inbounds %struct.net_device, %struct.net_device* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 4
  br label %70

70:                                               ; preds = %64, %59
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @TS_16COL, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %85

75:                                               ; preds = %70
  %76 = load %struct.net_device*, %struct.net_device** %2, align 8
  %77 = getelementptr inbounds %struct.net_device, %struct.net_device* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  %81 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %82 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %75, %70
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* @TS_SUCCESS, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load %struct.net_device*, %struct.net_device** %2, align 8
  %92 = call i32 @netdev_notice(%struct.net_device* %91, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  br label %93

93:                                               ; preds = %90, %85
  %94 = call i32 @SMC_SELECT_BANK(i32 0)
  %95 = load i32, i32* %4, align 4
  %96 = zext i32 %95 to i64
  %97 = load i64, i64* @TCR, align 8
  %98 = add nsw i64 %96, %97
  %99 = call i32 @inw(i64 %98)
  %100 = load i32, i32* @TCR_ENABLE, align 4
  %101 = or i32 %99, %100
  %102 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %103 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = or i32 %101, %104
  %106 = load i32, i32* %4, align 4
  %107 = zext i32 %106 to i64
  %108 = load i64, i64* @TCR, align 8
  %109 = add nsw i64 %107, %108
  %110 = call i32 @outw(i32 %105, i64 %109)
  %111 = call i32 @SMC_SELECT_BANK(i32 2)
  %112 = load i32, i32* @MC_FREEPKT, align 4
  %113 = load i32, i32* %4, align 4
  %114 = zext i32 %113 to i64
  %115 = load i64, i64* @MMU_CMD, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @outw(i32 %112, i64 %116)
  %118 = load %struct.smc_private*, %struct.smc_private** %3, align 8
  %119 = getelementptr inbounds %struct.smc_private, %struct.smc_private* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %119, align 4
  %122 = load i32, i32* %5, align 4
  %123 = load i32, i32* %4, align 4
  %124 = zext i32 %123 to i64
  %125 = load i64, i64* @PNR_ARR, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @outw(i32 %122, i64 %126)
  ret void
}

declare dso_local %struct.smc_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @netdev_notice(%struct.net_device*, i8*) #1

declare dso_local i32 @SMC_SELECT_BANK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
