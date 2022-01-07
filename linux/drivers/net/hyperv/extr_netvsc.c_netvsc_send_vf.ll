; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send_vf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_netvsc.c_netvsc_send_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.nvsp_message = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.net_device_context = type { i64, i32 }

@.str = private unnamed_addr constant [15 x i8] c"VF slot %u %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"added\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"removed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.nvsp_message*)* @netvsc_send_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @netvsc_send_vf(%struct.net_device* %0, %struct.nvsp_message* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.nvsp_message*, align 8
  %5 = alloca %struct.net_device_context*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.nvsp_message* %1, %struct.nvsp_message** %4, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.net_device_context* @netdev_priv(%struct.net_device* %6)
  store %struct.net_device_context* %7, %struct.net_device_context** %5, align 8
  %8 = load %struct.nvsp_message*, %struct.nvsp_message** %4, align 8
  %9 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %15 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %14, i32 0, i32 0
  store i64 %13, i64* %15, align 8
  %16 = load %struct.nvsp_message*, %struct.nvsp_message** %4, align 8
  %17 = getelementptr inbounds %struct.nvsp_message, %struct.nvsp_message* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %23 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.net_device*, %struct.net_device** %3, align 8
  %25 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %26 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.net_device_context*, %struct.net_device_context** %5, align 8
  %29 = getelementptr inbounds %struct.net_device_context, %struct.net_device_context* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %34 = call i32 @netdev_info(%struct.net_device* %24, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %27, i8* %33)
  ret void
}

declare dso_local %struct.net_device_context* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_info(%struct.net_device*, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
