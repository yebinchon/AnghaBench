; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_liquidio_stop_nic_module.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_liquidio_stop_nic_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lio = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"Stopping network interfaces\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Init for Octeon was not completed\0A\00", align 1
@OCT_DRV_OFFLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"Network interfaces stopped\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_device*)* @liquidio_stop_nic_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_stop_nic_module(%struct.octeon_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.octeon_device*, align 8
  %4 = alloca %struct.lio*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %3, align 8
  %7 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %8 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = call i32 @dev_dbg(i32* %10, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %22, label %16

16:                                               ; preds = %1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %18 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %17, i32 0, i32 2
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %94

22:                                               ; preds = %1
  %23 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 4
  %25 = call i32 @spin_lock_bh(i32* %24)
  %26 = load i32, i32* @OCT_DRV_OFFLINE, align 4
  %27 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %28 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %30 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %29, i32 0, i32 4
  %31 = call i32 @spin_unlock_bh(i32* %30)
  store i32 0, i32* %5, align 4
  br label %32

32:                                               ; preds = %71, %22
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %74

38:                                               ; preds = %32
  %39 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %40 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %39, i32 0, i32 3
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.lio* @GET_LIO(i32 %46)
  store %struct.lio* %47, %struct.lio** %4, align 8
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %67, %38
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %51 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %56 = load %struct.lio*, %struct.lio** %4, align 8
  %57 = getelementptr inbounds %struct.lio, %struct.lio* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @octeon_unregister_droq_ops(%struct.octeon_device* %55, i32 %65)
  br label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %6, align 4
  br label %48

70:                                               ; preds = %48
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %5, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %5, align 4
  br label %32

74:                                               ; preds = %32
  store i32 0, i32* %5, align 4
  br label %75

75:                                               ; preds = %85, %74
  %76 = load i32, i32* %5, align 4
  %77 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %78 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %88

81:                                               ; preds = %75
  %82 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @liquidio_destroy_nic_device(%struct.octeon_device* %82, i32 %83)
  br label %85

85:                                               ; preds = %81
  %86 = load i32, i32* %5, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %5, align 4
  br label %75

88:                                               ; preds = %75
  %89 = load %struct.octeon_device*, %struct.octeon_device** %3, align 8
  %90 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %89, i32 0, i32 2
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = call i32 @dev_dbg(i32* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %88, %16
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local %struct.lio* @GET_LIO(i32) #1

declare dso_local i32 @octeon_unregister_droq_ops(%struct.octeon_device*, i32) #1

declare dso_local i32 @liquidio_destroy_nic_device(%struct.octeon_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
