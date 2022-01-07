; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_set_qos_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/fm10k/extr_fm10k_main.c_fm10k_set_qos_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fm10k_intfc = type { i32, i32, %struct.fm10k_ring_feature*, %struct.TYPE_4__, %struct.net_device* }
%struct.fm10k_ring_feature = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.net_device = type { i32 }

@RING_F_QOS = common dso_local global i64 0, align 8
@RING_F_RSS = common dso_local global i64 0, align 8
@u16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fm10k_intfc*)* @fm10k_set_qos_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fm10k_set_qos_queues(%struct.fm10k_intfc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fm10k_intfc*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.fm10k_ring_feature*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.fm10k_intfc* %0, %struct.fm10k_intfc** %3, align 8
  %9 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %10 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %9, i32 0, i32 4
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %4, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call i32 @netdev_get_num_tc(%struct.net_device* %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp sle i32 %14, 1
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %91

17:                                               ; preds = %1
  %18 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %19 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %18, i32 0, i32 2
  %20 = load %struct.fm10k_ring_feature*, %struct.fm10k_ring_feature** %19, align 8
  %21 = load i64, i64* @RING_F_QOS, align 8
  %22 = getelementptr inbounds %struct.fm10k_ring_feature, %struct.fm10k_ring_feature* %20, i64 %21
  store %struct.fm10k_ring_feature* %22, %struct.fm10k_ring_feature** %5, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load %struct.fm10k_ring_feature*, %struct.fm10k_ring_feature** %5, align 8
  %25 = getelementptr inbounds %struct.fm10k_ring_feature, %struct.fm10k_ring_feature* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sub nsw i32 %26, 1
  %28 = call i64 @fls(i32 %27)
  %29 = call i32 @BIT(i64 %28)
  %30 = sub nsw i32 %29, 1
  %31 = load %struct.fm10k_ring_feature*, %struct.fm10k_ring_feature** %5, align 8
  %32 = getelementptr inbounds %struct.fm10k_ring_feature, %struct.fm10k_ring_feature* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %34 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = call i64 @fls(i32 %40)
  %42 = sub nsw i64 %41, 1
  %43 = call i32 @BIT(i64 %42)
  store i32 %43, i32* %6, align 4
  %44 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %45 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %44, i32 0, i32 2
  %46 = load %struct.fm10k_ring_feature*, %struct.fm10k_ring_feature** %45, align 8
  %47 = load i64, i64* @RING_F_RSS, align 8
  %48 = getelementptr inbounds %struct.fm10k_ring_feature, %struct.fm10k_ring_feature* %46, i64 %47
  store %struct.fm10k_ring_feature* %48, %struct.fm10k_ring_feature** %5, align 8
  %49 = load i32, i32* @u16, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.fm10k_ring_feature*, %struct.fm10k_ring_feature** %5, align 8
  %52 = getelementptr inbounds %struct.fm10k_ring_feature, %struct.fm10k_ring_feature* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @min_t(i32 %49, i32 %50, i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.fm10k_ring_feature*, %struct.fm10k_ring_feature** %5, align 8
  %57 = getelementptr inbounds %struct.fm10k_ring_feature, %struct.fm10k_ring_feature* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load i32, i32* %6, align 4
  %59 = sub nsw i32 %58, 1
  %60 = call i64 @fls(i32 %59)
  %61 = call i32 @BIT(i64 %60)
  %62 = sub nsw i32 %61, 1
  %63 = load %struct.fm10k_ring_feature*, %struct.fm10k_ring_feature** %5, align 8
  %64 = getelementptr inbounds %struct.fm10k_ring_feature, %struct.fm10k_ring_feature* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  store i32 0, i32* %7, align 4
  br label %65

65:                                               ; preds = %77, %17
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %66, %67
  br i1 %68, label %69, label %80

69:                                               ; preds = %65
  %70 = load %struct.net_device*, %struct.net_device** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* %7, align 4
  %75 = mul nsw i32 %73, %74
  %76 = call i32 @netdev_set_tc_queue(%struct.net_device* %70, i32 %71, i32 %72, i32 %75)
  br label %77

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %65

80:                                               ; preds = %65
  %81 = load i32, i32* %6, align 4
  %82 = load i32, i32* %8, align 4
  %83 = mul nsw i32 %81, %82
  %84 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %85 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load i32, i32* %6, align 4
  %87 = load i32, i32* %8, align 4
  %88 = mul nsw i32 %86, %87
  %89 = load %struct.fm10k_intfc*, %struct.fm10k_intfc** %3, align 8
  %90 = getelementptr inbounds %struct.fm10k_intfc, %struct.fm10k_intfc* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 4
  store i32 1, i32* %2, align 4
  br label %91

91:                                               ; preds = %80, %16
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @netdev_get_num_tc(%struct.net_device*) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @fls(i32) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @netdev_set_tc_queue(%struct.net_device*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
