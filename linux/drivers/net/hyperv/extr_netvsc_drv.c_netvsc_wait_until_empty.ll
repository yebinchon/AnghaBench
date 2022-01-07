; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_wait_until_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_wait_until_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vmbus_channel* }
%struct.vmbus_channel = type { i32, i32 }

@RETRY_MAX = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@RETRY_US_LO = common dso_local global i32 0, align 4
@RETRY_US_HI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.netvsc_device*)* @netvsc_wait_until_empty to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netvsc_wait_until_empty(%struct.netvsc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.netvsc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.vmbus_channel*, align 8
  store %struct.netvsc_device* %0, %struct.netvsc_device** %3, align 8
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %65, %1
  store i64 0, i64* %6, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %50, %8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %12 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %53

15:                                               ; preds = %9
  %16 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %17 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.vmbus_channel*, %struct.vmbus_channel** %22, align 8
  store %struct.vmbus_channel* %23, %struct.vmbus_channel** %7, align 8
  %24 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %25 = icmp ne %struct.vmbus_channel* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %15
  br label %50

27:                                               ; preds = %15
  %28 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %29 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = call i32 @napi_synchronize(i32* %34)
  %36 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %37 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %36, i32 0, i32 1
  %38 = call i64 @hv_get_bytes_to_read(i32* %37)
  store i64 %38, i64* %6, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %27
  br label %53

42:                                               ; preds = %27
  %43 = load %struct.vmbus_channel*, %struct.vmbus_channel** %7, align 8
  %44 = getelementptr inbounds %struct.vmbus_channel, %struct.vmbus_channel* %43, i32 0, i32 0
  %45 = call i64 @hv_get_bytes_to_read(i32* %44)
  store i64 %45, i64* %6, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %42
  br label %53

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %26
  %51 = load i32, i32* %5, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %5, align 4
  br label %9

53:                                               ; preds = %48, %41, %9
  %54 = load i64, i64* %6, align 8
  %55 = icmp eq i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  store i32 0, i32* %2, align 4
  br label %69

57:                                               ; preds = %53
  %58 = load i32, i32* %4, align 4
  %59 = add i32 %58, 1
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @RETRY_MAX, align 4
  %61 = icmp ugt i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %57
  %63 = load i32, i32* @ETIMEDOUT, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %69

65:                                               ; preds = %57
  %66 = load i32, i32* @RETRY_US_LO, align 4
  %67 = load i32, i32* @RETRY_US_HI, align 4
  %68 = call i32 @usleep_range(i32 %66, i32 %67)
  br label %8

69:                                               ; preds = %62, %56
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i32 @napi_synchronize(i32*) #1

declare dso_local i64 @hv_get_bytes_to_read(i32*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
