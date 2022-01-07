; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_devinfo_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc_drv.c_netvsc_devinfo_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netvsc_device_info = type { i32, i32, i32, i32, i32, i32 }
%struct.netvsc_device = type { %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@NETVSC_HASH_KEYLEN = common dso_local global i32 0, align 4
@VRSS_CHANNEL_DEFAULT = common dso_local global i32 0, align 4
@NETVSC_DEFAULT_TX = common dso_local global i32 0, align 4
@NETVSC_SEND_SECTION_SIZE = common dso_local global i32 0, align 4
@NETVSC_DEFAULT_RX = common dso_local global i32 0, align 4
@NETVSC_RECV_SECTION_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netvsc_device_info* (%struct.netvsc_device*)* @netvsc_devinfo_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netvsc_device_info* @netvsc_devinfo_get(%struct.netvsc_device* %0) #0 {
  %2 = alloca %struct.netvsc_device_info*, align 8
  %3 = alloca %struct.netvsc_device*, align 8
  %4 = alloca %struct.netvsc_device_info*, align 8
  store %struct.netvsc_device* %0, %struct.netvsc_device** %3, align 8
  %5 = load i32, i32* @GFP_ATOMIC, align 4
  %6 = call %struct.netvsc_device_info* @kzalloc(i32 24, i32 %5)
  store %struct.netvsc_device_info* %6, %struct.netvsc_device_info** %4, align 8
  %7 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %8 = icmp ne %struct.netvsc_device_info* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.netvsc_device_info* null, %struct.netvsc_device_info** %2, align 8
  br label %67

10:                                               ; preds = %1
  %11 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %12 = icmp ne %struct.netvsc_device* %11, null
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %15 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %18 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %17, i32 0, i32 4
  store i32 %16, i32* %18, align 4
  %19 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %20 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %23 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %22, i32 0, i32 3
  store i32 %21, i32* %23, align 4
  %24 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %25 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %28 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %30 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %33 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %35 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %38 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %40 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.netvsc_device*, %struct.netvsc_device** %3, align 8
  %43 = getelementptr inbounds %struct.netvsc_device, %struct.netvsc_device* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @NETVSC_HASH_KEYLEN, align 4
  %48 = call i32 @memcpy(i32 %41, i32 %46, i32 %47)
  br label %65

49:                                               ; preds = %10
  %50 = load i32, i32* @VRSS_CHANNEL_DEFAULT, align 4
  %51 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %52 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* @NETVSC_DEFAULT_TX, align 4
  %54 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %55 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %54, i32 0, i32 3
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* @NETVSC_SEND_SECTION_SIZE, align 4
  %57 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %58 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* @NETVSC_DEFAULT_RX, align 4
  %60 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %61 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @NETVSC_RECV_SECTION_SIZE, align 4
  %63 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  %64 = getelementptr inbounds %struct.netvsc_device_info, %struct.netvsc_device_info* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  br label %65

65:                                               ; preds = %49, %13
  %66 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %4, align 8
  store %struct.netvsc_device_info* %66, %struct.netvsc_device_info** %2, align 8
  br label %67

67:                                               ; preds = %65, %9
  %68 = load %struct.netvsc_device_info*, %struct.netvsc_device_info** %2, align 8
  ret %struct.netvsc_device_info* %68
}

declare dso_local %struct.netvsc_device_info* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
