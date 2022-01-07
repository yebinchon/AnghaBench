; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_get_software_info_inner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/can/usb/kvaser_usb/extr_kvaser_usb_leaf.c_kvaser_usb_leaf_get_software_info_inner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvaser_usb = type { i8*, i8*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.kvaser_cmd = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_11__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32 }

@CMD_GET_SOFTWARE_INFO = common dso_local global i32 0, align 4
@CMD_GET_SOFTWARE_INFO_REPLY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvaser_usb*)* @kvaser_usb_leaf_get_software_info_inner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvaser_usb_leaf_get_software_info_inner(%struct.kvaser_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvaser_usb*, align 8
  %4 = alloca %struct.kvaser_cmd, align 4
  %5 = alloca i32, align 4
  store %struct.kvaser_usb* %0, %struct.kvaser_usb** %3, align 8
  %6 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %7 = load i32, i32* @CMD_GET_SOFTWARE_INFO, align 4
  %8 = call i32 @kvaser_usb_leaf_send_simple_cmd(%struct.kvaser_usb* %6, i32 %7, i32 0)
  store i32 %8, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %2, align 4
  br label %62

13:                                               ; preds = %1
  %14 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %15 = load i32, i32* @CMD_GET_SOFTWARE_INFO_REPLY, align 4
  %16 = call i32 @kvaser_usb_leaf_wait_cmd(%struct.kvaser_usb* %14, i32 %15, %struct.kvaser_cmd* %4)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %13
  %20 = load i32, i32* %5, align 4
  store i32 %20, i32* %2, align 4
  br label %62

21:                                               ; preds = %13
  %22 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %23 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %61 [
    i32 129, label %27
    i32 128, label %44
  ]

27:                                               ; preds = %21
  %28 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %4, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @le32_to_cpu(i32 %32)
  %34 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %35 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %34, i32 0, i32 1
  store i8* %33, i8** %35, align 8
  %36 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %4, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @le16_to_cpu(i32 %40)
  %42 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %43 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  br label %61

44:                                               ; preds = %21
  %45 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %4, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @le32_to_cpu(i32 %49)
  %51 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %52 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = getelementptr inbounds %struct.kvaser_cmd, %struct.kvaser_cmd* %4, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @le16_to_cpu(i32 %57)
  %59 = load %struct.kvaser_usb*, %struct.kvaser_usb** %3, align 8
  %60 = getelementptr inbounds %struct.kvaser_usb, %struct.kvaser_usb* %59, i32 0, i32 0
  store i8* %58, i8** %60, align 8
  br label %61

61:                                               ; preds = %21, %44, %27
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %61, %19, %11
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @kvaser_usb_leaf_send_simple_cmd(%struct.kvaser_usb*, i32, i32) #1

declare dso_local i32 @kvaser_usb_leaf_wait_cmd(%struct.kvaser_usb*, i32, %struct.kvaser_cmd*) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i8* @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
