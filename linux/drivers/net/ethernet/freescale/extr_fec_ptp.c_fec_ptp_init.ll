; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_ptp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/freescale/extr_fec_ptp.c_fec_ptp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32, i32 }
%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i32, i32, i32, i32*, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"fec ptp\00", align 1
@fec_ptp_adjfreq = common dso_local global i32 0, align 4
@fec_ptp_adjtime = common dso_local global i32 0, align 4
@fec_ptp_gettime = common dso_local global i32 0, align 4
@fec_ptp_settime = common dso_local global i32 0, align 4
@fec_ptp_enable = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@fec_time_keep = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"pps\00", align 1
@fec_pps_interrupt = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"request for pps irq failed(%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"ptp_clock_register failed\0A\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fec_ptp_init(%struct.platform_device* %0, i32 %1) #0 {
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %10 = call %struct.net_device* @platform_get_drvdata(%struct.platform_device* %9)
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %11)
  store %struct.fec_enet_private* %12, %struct.fec_enet_private** %6, align 8
  %13 = load i32, i32* @THIS_MODULE, align 4
  %14 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %15 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %14, i32 0, i32 4
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 12
  store i32 %13, i32* %16, align 4
  %17 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %18 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 11
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @snprintf(i32 %20, i32 16, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %22 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %23 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store i32 250000000, i32* %24, align 8
  %25 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %26 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %25, i32 0, i32 4
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 10
  store i64 0, i64* %27, align 8
  %28 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %29 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 9
  store i64 0, i64* %30, align 8
  %31 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %32 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %31, i32 0, i32 4
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 8
  store i64 0, i64* %33, align 8
  %34 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %35 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %34, i32 0, i32 4
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 7
  store i64 0, i64* %36, align 8
  %37 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %38 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  store i32 1, i32* %39, align 4
  %40 = load i32, i32* @fec_ptp_adjfreq, align 4
  %41 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %42 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 6
  store i32 %40, i32* %43, align 8
  %44 = load i32, i32* @fec_ptp_adjtime, align 4
  %45 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %46 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %45, i32 0, i32 4
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 5
  store i32 %44, i32* %47, align 4
  %48 = load i32, i32* @fec_ptp_gettime, align 4
  %49 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %50 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %49, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 4
  store i32 %48, i32* %51, align 8
  %52 = load i32, i32* @fec_ptp_settime, align 4
  %53 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %54 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 3
  store i32 %52, i32* %55, align 4
  %56 = load i32, i32* @fec_ptp_enable, align 4
  %57 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %58 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 2
  store i32 %56, i32* %59, align 8
  %60 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %61 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @clk_get_rate(i32 %62)
  %64 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %65 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  %66 = load i32, i32* @NSEC_PER_SEC, align 4
  %67 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %68 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = sdiv i32 %66, %69
  %71 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %72 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %74 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %73, i32 0, i32 5
  %75 = call i32 @spin_lock_init(i32* %74)
  %76 = load %struct.net_device*, %struct.net_device** %5, align 8
  %77 = call i32 @fec_ptp_start_cyclecounter(%struct.net_device* %76)
  %78 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %79 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %78, i32 0, i32 2
  %80 = load i32, i32* @fec_time_keep, align 4
  %81 = call i32 @INIT_DELAYED_WORK(i32* %79, i32 %80)
  %82 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %83 = call i32 @platform_get_irq_byname_optional(%struct.platform_device* %82, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %7, align 4
  %85 = icmp slt i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %2
  %87 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @platform_get_irq_optional(%struct.platform_device* %87, i32 %88)
  store i32 %89, i32* %7, align 4
  br label %90

90:                                               ; preds = %86, %2
  %91 = load i32, i32* %7, align 4
  %92 = icmp sge i32 %91, 0
  br i1 %92, label %93, label %111

93:                                               ; preds = %90
  %94 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %95 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %94, i32 0, i32 0
  %96 = load i32, i32* %7, align 4
  %97 = load i32, i32* @fec_pps_interrupt, align 4
  %98 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %99 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.net_device*, %struct.net_device** %5, align 8
  %102 = call i32 @devm_request_irq(i32* %95, i32 %96, i32 %97, i32 0, i32 %100, %struct.net_device* %101)
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* %8, align 4
  %104 = icmp slt i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %93
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = load i32, i32* %8, align 4
  %109 = call i32 @dev_warn(i32* %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %108)
  br label %110

110:                                              ; preds = %105, %93
  br label %111

111:                                              ; preds = %110, %90
  %112 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %113 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %112, i32 0, i32 4
  %114 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %115 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %114, i32 0, i32 0
  %116 = call i32* @ptp_clock_register(%struct.TYPE_2__* %113, i32* %115)
  %117 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %118 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %117, i32 0, i32 3
  store i32* %116, i32** %118, align 8
  %119 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %120 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %119, i32 0, i32 3
  %121 = load i32*, i32** %120, align 8
  %122 = call i64 @IS_ERR(i32* %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %130

124:                                              ; preds = %111
  %125 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %126 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %125, i32 0, i32 3
  store i32* null, i32** %126, align 8
  %127 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %128 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %127, i32 0, i32 0
  %129 = call i32 @dev_err(i32* %128, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  br label %130

130:                                              ; preds = %124, %111
  %131 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %132 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %131, i32 0, i32 2
  %133 = load i32, i32* @HZ, align 4
  %134 = call i32 @schedule_delayed_work(i32* %132, i32 %133)
  ret void
}

declare dso_local %struct.net_device* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @snprintf(i32, i32, i8*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @fec_ptp_start_cyclecounter(%struct.net_device*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @platform_get_irq_byname_optional(%struct.platform_device*, i8*) #1

declare dso_local i32 @platform_get_irq_optional(%struct.platform_device*, i32) #1

declare dso_local i32 @devm_request_irq(i32*, i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32* @ptp_clock_register(%struct.TYPE_2__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
