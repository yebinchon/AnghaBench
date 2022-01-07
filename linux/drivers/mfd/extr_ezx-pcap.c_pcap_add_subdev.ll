; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_pcap_add_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_ezx-pcap.c_pcap_add_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcap_chip = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.pcap_subdev = type { i32, i32, i32 }
%struct.platform_device = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32* }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcap_chip*, %struct.pcap_subdev*)* @pcap_add_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcap_add_subdev(%struct.pcap_chip* %0, %struct.pcap_subdev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcap_chip*, align 8
  %5 = alloca %struct.pcap_subdev*, align 8
  %6 = alloca %struct.platform_device*, align 8
  %7 = alloca i32, align 4
  store %struct.pcap_chip* %0, %struct.pcap_chip** %4, align 8
  store %struct.pcap_subdev* %1, %struct.pcap_subdev** %5, align 8
  %8 = load %struct.pcap_subdev*, %struct.pcap_subdev** %5, align 8
  %9 = getelementptr inbounds %struct.pcap_subdev, %struct.pcap_subdev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.pcap_subdev*, %struct.pcap_subdev** %5, align 8
  %12 = getelementptr inbounds %struct.pcap_subdev, %struct.pcap_subdev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.platform_device* @platform_device_alloc(i32 %10, i32 %13)
  store %struct.platform_device* %14, %struct.platform_device** %6, align 8
  %15 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %16 = icmp ne %struct.platform_device* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %43

20:                                               ; preds = %2
  %21 = load %struct.pcap_chip*, %struct.pcap_chip** %4, align 8
  %22 = getelementptr inbounds %struct.pcap_chip, %struct.pcap_chip* %21, i32 0, i32 0
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %26 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  store i32* %24, i32** %27, align 8
  %28 = load %struct.pcap_subdev*, %struct.pcap_subdev** %5, align 8
  %29 = getelementptr inbounds %struct.pcap_subdev, %struct.pcap_subdev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %35 = call i32 @platform_device_add(%struct.platform_device* %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %20
  %39 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %40 = call i32 @platform_device_put(%struct.platform_device* %39)
  br label %41

41:                                               ; preds = %38, %20
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %41, %17
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.platform_device* @platform_device_alloc(i32, i32) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @platform_device_put(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
