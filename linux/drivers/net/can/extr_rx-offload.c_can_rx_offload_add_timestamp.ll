; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_add_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/extr_rx-offload.c_can_rx_offload_add_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.can_rx_offload = type { i64, i64, i32, i32 }

@BITS_PER_LONG_LONG = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @can_rx_offload_add_timestamp(%struct.net_device* %0, %struct.can_rx_offload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.can_rx_offload*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.can_rx_offload* %1, %struct.can_rx_offload** %5, align 8
  %7 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %8 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @BITS_PER_LONG_LONG, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %23, label %12

12:                                               ; preds = %2
  %13 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %14 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @BITS_PER_LONG_LONG, align 8
  %17 = icmp sgt i64 %15, %16
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %20 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18, %12, %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %61

26:                                               ; preds = %18
  %27 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %28 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %31 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp slt i64 %29, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %26
  %35 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %36 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %35, i32 0, i32 2
  store i32 1, i32* %36, align 8
  %37 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %38 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %41 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = sub nsw i64 %39, %42
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %6, align 4
  br label %56

45:                                               ; preds = %26
  %46 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %47 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %46, i32 0, i32 2
  store i32 0, i32* %47, align 8
  %48 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %49 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %52 = getelementptr inbounds %struct.can_rx_offload, %struct.can_rx_offload* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = sub nsw i64 %50, %53
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %45, %34
  %57 = load %struct.net_device*, %struct.net_device** %4, align 8
  %58 = load %struct.can_rx_offload*, %struct.can_rx_offload** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @can_rx_offload_init_queue(%struct.net_device* %57, %struct.can_rx_offload* %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %23
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @can_rx_offload_init_queue(%struct.net_device*, %struct.can_rx_offload*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
