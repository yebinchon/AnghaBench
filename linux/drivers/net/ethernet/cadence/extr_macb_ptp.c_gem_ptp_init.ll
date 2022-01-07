; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cadence/extr_macb_ptp.c_gem_ptp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.net_device = type { i32 }
%struct.macb = type { i32, %struct.TYPE_6__*, %struct.macb_queue*, i32, i32*, %struct.TYPE_7__, %struct.TYPE_5__*, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.macb_queue = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32 (...)*, i32 (%struct.macb*)* }

@gem_ptp_caps_template = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@.str = private unnamed_addr constant [32 x i8] c"ptp clock register failed: %ld\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"ptp clock register failed\0A\00", align 1
@gem_tx_timestamp_flush = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"%s ptp clock registered.\0A\00", align 1
@GEM_PTP_TIMER_NAME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gem_ptp_init(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.macb*, align 8
  %4 = alloca %struct.macb_queue*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.macb* @netdev_priv(%struct.net_device* %6)
  store %struct.macb* %7, %struct.macb** %3, align 8
  %8 = load %struct.macb*, %struct.macb** %3, align 8
  %9 = getelementptr inbounds %struct.macb, %struct.macb* %8, i32 0, i32 5
  %10 = bitcast %struct.TYPE_7__* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %10, i8* align 4 bitcast (%struct.TYPE_7__* @gem_ptp_caps_template to i8*), i64 4, i1 false)
  %11 = load %struct.macb*, %struct.macb** %3, align 8
  %12 = getelementptr inbounds %struct.macb, %struct.macb* %11, i32 0, i32 6
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %15 = load i32 (%struct.macb*)*, i32 (%struct.macb*)** %14, align 8
  %16 = load %struct.macb*, %struct.macb** %3, align 8
  %17 = call i32 %15(%struct.macb* %16)
  %18 = load %struct.macb*, %struct.macb** %3, align 8
  %19 = getelementptr inbounds %struct.macb, %struct.macb* %18, i32 0, i32 7
  store i32 %17, i32* %19, align 8
  %20 = load %struct.macb*, %struct.macb** %3, align 8
  %21 = getelementptr inbounds %struct.macb, %struct.macb* %20, i32 0, i32 6
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32 (...)*, i32 (...)** %23, align 8
  %25 = call i32 (...) %24()
  %26 = load %struct.macb*, %struct.macb** %3, align 8
  %27 = getelementptr inbounds %struct.macb, %struct.macb* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.macb*, %struct.macb** %3, align 8
  %30 = call i32 @gem_ptp_init_timer(%struct.macb* %29)
  %31 = load %struct.macb*, %struct.macb** %3, align 8
  %32 = getelementptr inbounds %struct.macb, %struct.macb* %31, i32 0, i32 5
  %33 = load %struct.net_device*, %struct.net_device** %2, align 8
  %34 = getelementptr inbounds %struct.net_device, %struct.net_device* %33, i32 0, i32 0
  %35 = call i32* @ptp_clock_register(%struct.TYPE_7__* %32, i32* %34)
  %36 = load %struct.macb*, %struct.macb** %3, align 8
  %37 = getelementptr inbounds %struct.macb, %struct.macb* %36, i32 0, i32 4
  store i32* %35, i32** %37, align 8
  %38 = load %struct.macb*, %struct.macb** %3, align 8
  %39 = getelementptr inbounds %struct.macb, %struct.macb* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = call i64 @IS_ERR(i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %1
  %44 = load %struct.macb*, %struct.macb** %3, align 8
  %45 = getelementptr inbounds %struct.macb, %struct.macb* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = call i32 @PTR_ERR(i32* %46)
  %48 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load %struct.macb*, %struct.macb** %3, align 8
  %50 = getelementptr inbounds %struct.macb, %struct.macb* %49, i32 0, i32 4
  store i32* null, i32** %50, align 8
  br label %95

51:                                               ; preds = %1
  %52 = load %struct.macb*, %struct.macb** %3, align 8
  %53 = getelementptr inbounds %struct.macb, %struct.macb* %52, i32 0, i32 4
  %54 = load i32*, i32** %53, align 8
  %55 = icmp eq i32* %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %95

58:                                               ; preds = %51
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.macb*, %struct.macb** %3, align 8
  %61 = getelementptr inbounds %struct.macb, %struct.macb* %60, i32 0, i32 3
  %62 = call i32 @spin_lock_init(i32* %61)
  store i32 0, i32* %5, align 4
  %63 = load %struct.macb*, %struct.macb** %3, align 8
  %64 = getelementptr inbounds %struct.macb, %struct.macb* %63, i32 0, i32 2
  %65 = load %struct.macb_queue*, %struct.macb_queue** %64, align 8
  store %struct.macb_queue* %65, %struct.macb_queue** %4, align 8
  br label %66

66:                                               ; preds = %81, %59
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.macb*, %struct.macb** %3, align 8
  %69 = getelementptr inbounds %struct.macb, %struct.macb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp ult i32 %67, %70
  br i1 %71, label %72, label %86

72:                                               ; preds = %66
  %73 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %74 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %76 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %75, i32 0, i32 1
  store i64 0, i64* %76, align 8
  %77 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %78 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %77, i32 0, i32 0
  %79 = load i32, i32* @gem_tx_timestamp_flush, align 4
  %80 = call i32 @INIT_WORK(i32* %78, i32 %79)
  br label %81

81:                                               ; preds = %72
  %82 = load i32, i32* %5, align 4
  %83 = add i32 %82, 1
  store i32 %83, i32* %5, align 4
  %84 = load %struct.macb_queue*, %struct.macb_queue** %4, align 8
  %85 = getelementptr inbounds %struct.macb_queue, %struct.macb_queue* %84, i32 1
  store %struct.macb_queue* %85, %struct.macb_queue** %4, align 8
  br label %66

86:                                               ; preds = %66
  %87 = load %struct.macb*, %struct.macb** %3, align 8
  %88 = call i32 @gem_ptp_init_tsu(%struct.macb* %87)
  %89 = load %struct.macb*, %struct.macb** %3, align 8
  %90 = getelementptr inbounds %struct.macb, %struct.macb* %89, i32 0, i32 1
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* @GEM_PTP_TIMER_NAME, align 4
  %94 = call i32 @dev_info(i32* %92, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %93)
  br label %95

95:                                               ; preds = %86, %56, %43
  ret void
}

declare dso_local %struct.macb* @netdev_priv(%struct.net_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gem_ptp_init_timer(%struct.macb*) #1

declare dso_local i32* @ptp_clock_register(%struct.TYPE_7__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @gem_ptp_init_tsu(%struct.macb*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
