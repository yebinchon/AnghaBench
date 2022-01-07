; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_geo.c_libipw_get_channel_flags.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_libipw_geo.c_libipw_get_channel_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libipw_device = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, %struct.TYPE_4__* }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@LIBIPW_CH_INVALID = common dso_local global i64 0, align 8
@LIBIPW_24GHZ_CHANNELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @libipw_get_channel_flags(%struct.libipw_device* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.libipw_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.libipw_device* %0, %struct.libipw_device** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @libipw_channel_to_index(%struct.libipw_device* %7, i64 %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load i64, i64* @LIBIPW_CH_INVALID, align 8
  store i64 %13, i64* %3, align 8
  br label %38

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = load i64, i64* @LIBIPW_24GHZ_CHANNELS, align 8
  %17 = icmp sle i64 %15, %16
  br i1 %17, label %18, label %28

18:                                               ; preds = %14
  %19 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %20 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %3, align 8
  br label %38

28:                                               ; preds = %14
  %29 = load %struct.libipw_device*, %struct.libipw_device** %4, align 8
  %30 = getelementptr inbounds %struct.libipw_device, %struct.libipw_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* %6, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %3, align 8
  br label %38

38:                                               ; preds = %28, %18, %12
  %39 = load i64, i64* %3, align 8
  ret i64 %39
}

declare dso_local i32 @libipw_channel_to_index(%struct.libipw_device*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
