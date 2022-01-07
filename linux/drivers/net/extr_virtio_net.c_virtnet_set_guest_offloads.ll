; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_set_guest_offloads.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_virtnet_set_guest_offloads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.scatterlist = type { i32 }

@VIRTIO_NET_CTRL_GUEST_OFFLOADS = common dso_local global i32 0, align 4
@VIRTIO_NET_CTRL_GUEST_OFFLOADS_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Fail to set guest offload.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, i32)* @virtnet_set_guest_offloads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtnet_set_guest_offloads(%struct.virtnet_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %8 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @cpu_to_virtio64(i32 %9, i32 %10)
  %12 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %13 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  store i32 %11, i32* %15, align 4
  %16 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %17 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = call i32 @sg_init_one(%struct.scatterlist* %6, i32* %19, i32 4)
  %21 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %22 = load i32, i32* @VIRTIO_NET_CTRL_GUEST_OFFLOADS, align 4
  %23 = load i32, i32* @VIRTIO_NET_CTRL_GUEST_OFFLOADS_SET, align 4
  %24 = call i32 @virtnet_send_command(%struct.virtnet_info* %21, i32 %22, i32 %23, %struct.scatterlist* %6)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %34, label %26

26:                                               ; preds = %2
  %27 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %28 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = call i32 @dev_warn(i32* %30, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %35

34:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %34, %26
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local i32 @cpu_to_virtio64(i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @virtnet_send_command(%struct.virtnet_info*, i32, i32, %struct.scatterlist*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
