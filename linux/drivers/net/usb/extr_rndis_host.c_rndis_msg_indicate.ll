; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_msg_indicate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/usb/extr_rndis_host.c_rndis_msg_indicate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)* }
%struct.rndis_indicate = type { i32 }
%struct.cdc_state = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.device }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"rndis media connect\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"rndis media disconnect\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"rndis indication: 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*, %struct.rndis_indicate*, i32)* @rndis_msg_indicate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_msg_indicate(%struct.usbnet* %0, %struct.rndis_indicate* %1, i32 %2) #0 {
  %4 = alloca %struct.usbnet*, align 8
  %5 = alloca %struct.rndis_indicate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdc_state*, align 8
  %8 = alloca %struct.device*, align 8
  %9 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %4, align 8
  store %struct.rndis_indicate* %1, %struct.rndis_indicate** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %11 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %10, i32 0, i32 1
  %12 = bitcast i32* %11 to i8*
  %13 = bitcast i8* %12 to %struct.cdc_state*
  store %struct.cdc_state* %13, %struct.cdc_state** %7, align 8
  %14 = load %struct.cdc_state*, %struct.cdc_state** %7, align 8
  %15 = getelementptr inbounds %struct.cdc_state, %struct.cdc_state* %14, i32 0, i32 0
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %8, align 8
  %18 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %19 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = load i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)*, i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)** %21, align 8
  %23 = icmp ne i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)* %22, null
  br i1 %23, label %24, label %34

24:                                               ; preds = %3
  %25 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %26 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)*, i32 (%struct.usbnet*, %struct.rndis_indicate*, i32)** %28, align 8
  %30 = load %struct.usbnet*, %struct.usbnet** %4, align 8
  %31 = load %struct.rndis_indicate*, %struct.rndis_indicate** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 %29(%struct.usbnet* %30, %struct.rndis_indicate* %31, i32 %32)
  br label %51

34:                                               ; preds = %3
  %35 = load %struct.rndis_indicate*, %struct.rndis_indicate** %5, align 8
  %36 = getelementptr inbounds %struct.rndis_indicate, %struct.rndis_indicate* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %46 [
    i32 129, label %40
    i32 128, label %43
  ]

40:                                               ; preds = %34
  %41 = load %struct.device*, %struct.device** %8, align 8
  %42 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %50

43:                                               ; preds = %34
  %44 = load %struct.device*, %struct.device** %8, align 8
  %45 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %44, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %50

46:                                               ; preds = %34
  %47 = load %struct.device*, %struct.device** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call i32 (%struct.device*, i8*, ...) @dev_info(%struct.device* %47, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  br label %50

50:                                               ; preds = %46, %43, %40
  br label %51

51:                                               ; preds = %50, %24
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
