; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_oct_ptp_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_oct_ptp_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i8* }
%struct.lio = type { i32*, %struct.TYPE_4__, i64, i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i32, i32 }
%struct.octeon_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@liquidio_ptp_adjfreq = common dso_local global i32 0, align 4
@liquidio_ptp_adjtime = common dso_local global i32 0, align 4
@liquidio_ptp_gettime = common dso_local global i32 0, align 4
@liquidio_ptp_settime = common dso_local global i32 0, align 4
@liquidio_ptp_enable = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @oct_ptp_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oct_ptp_open(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.lio*, align 8
  %4 = alloca %struct.octeon_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.lio* @GET_LIO(%struct.net_device* %5)
  store %struct.lio* %6, %struct.lio** %3, align 8
  %7 = load %struct.lio*, %struct.lio** %3, align 8
  %8 = getelementptr inbounds %struct.lio, %struct.lio* %7, i32 0, i32 4
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.octeon_device*
  store %struct.octeon_device* %10, %struct.octeon_device** %4, align 8
  %11 = load %struct.lio*, %struct.lio** %3, align 8
  %12 = getelementptr inbounds %struct.lio, %struct.lio* %11, i32 0, i32 3
  %13 = call i32 @spin_lock_init(i32* %12)
  %14 = load %struct.lio*, %struct.lio** %3, align 8
  %15 = getelementptr inbounds %struct.lio, %struct.lio* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 11
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 @snprintf(i32 %17, i32 16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* @THIS_MODULE, align 4
  %23 = load %struct.lio*, %struct.lio** %3, align 8
  %24 = getelementptr inbounds %struct.lio, %struct.lio* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 10
  store i32 %22, i32* %25, align 8
  %26 = load %struct.lio*, %struct.lio** %3, align 8
  %27 = getelementptr inbounds %struct.lio, %struct.lio* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32 250000000, i32* %28, align 8
  %29 = load %struct.lio*, %struct.lio** %3, align 8
  %30 = getelementptr inbounds %struct.lio, %struct.lio* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 9
  store i64 0, i64* %31, align 8
  %32 = load %struct.lio*, %struct.lio** %3, align 8
  %33 = getelementptr inbounds %struct.lio, %struct.lio* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 8
  store i64 0, i64* %34, align 8
  %35 = load %struct.lio*, %struct.lio** %3, align 8
  %36 = getelementptr inbounds %struct.lio, %struct.lio* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 7
  store i64 0, i64* %37, align 8
  %38 = load %struct.lio*, %struct.lio** %3, align 8
  %39 = getelementptr inbounds %struct.lio, %struct.lio* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load i32, i32* @liquidio_ptp_adjfreq, align 4
  %42 = load %struct.lio*, %struct.lio** %3, align 8
  %43 = getelementptr inbounds %struct.lio, %struct.lio* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  store i32 %41, i32* %44, align 4
  %45 = load i32, i32* @liquidio_ptp_adjtime, align 4
  %46 = load %struct.lio*, %struct.lio** %3, align 8
  %47 = getelementptr inbounds %struct.lio, %struct.lio* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  store i32 %45, i32* %48, align 8
  %49 = load i32, i32* @liquidio_ptp_gettime, align 4
  %50 = load %struct.lio*, %struct.lio** %3, align 8
  %51 = getelementptr inbounds %struct.lio, %struct.lio* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i32 %49, i32* %52, align 4
  %53 = load i32, i32* @liquidio_ptp_settime, align 4
  %54 = load %struct.lio*, %struct.lio** %3, align 8
  %55 = getelementptr inbounds %struct.lio, %struct.lio* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32 %53, i32* %56, align 8
  %57 = load i32, i32* @liquidio_ptp_enable, align 4
  %58 = load %struct.lio*, %struct.lio** %3, align 8
  %59 = getelementptr inbounds %struct.lio, %struct.lio* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.lio*, %struct.lio** %3, align 8
  %62 = getelementptr inbounds %struct.lio, %struct.lio* %61, i32 0, i32 2
  store i64 0, i64* %62, align 8
  %63 = load %struct.lio*, %struct.lio** %3, align 8
  %64 = getelementptr inbounds %struct.lio, %struct.lio* %63, i32 0, i32 1
  %65 = load %struct.octeon_device*, %struct.octeon_device** %4, align 8
  %66 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = call i32* @ptp_clock_register(%struct.TYPE_4__* %64, i32* %68)
  %70 = load %struct.lio*, %struct.lio** %3, align 8
  %71 = getelementptr inbounds %struct.lio, %struct.lio* %70, i32 0, i32 0
  store i32* %69, i32** %71, align 8
  %72 = load %struct.lio*, %struct.lio** %3, align 8
  %73 = getelementptr inbounds %struct.lio, %struct.lio* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = call i64 @IS_ERR(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %1
  %78 = load %struct.lio*, %struct.lio** %3, align 8
  %79 = getelementptr inbounds %struct.lio, %struct.lio* %78, i32 0, i32 0
  store i32* null, i32** %79, align 8
  br label %80

80:                                               ; preds = %77, %1
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32* @ptp_clock_register(%struct.TYPE_4__*, i32*) #1

declare dso_local i64 @IS_ERR(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
