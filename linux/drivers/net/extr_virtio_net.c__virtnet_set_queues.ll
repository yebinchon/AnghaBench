; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c__virtnet_set_queues.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c__virtnet_set_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32, i32, %struct.TYPE_3__*, i32, i32, %struct.net_device* }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.scatterlist = type { i32 }

@VIRTIO_NET_F_MQ = common dso_local global i32 0, align 4
@VIRTIO_NET_CTRL_MQ = common dso_local global i32 0, align 4
@VIRTIO_NET_CTRL_MQ_VQ_PAIRS_SET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Fail to set num of queue pairs to %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, i32)* @_virtnet_set_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_virtnet_set_queues(%struct.virtnet_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scatterlist, align 4
  %7 = alloca %struct.net_device*, align 8
  store %struct.virtnet_info* %0, %struct.virtnet_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %9 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %8, i32 0, i32 5
  %10 = load %struct.net_device*, %struct.net_device** %9, align 8
  store %struct.net_device* %10, %struct.net_device** %7, align 8
  %11 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %12 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %17 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @VIRTIO_NET_F_MQ, align 4
  %20 = call i32 @virtio_has_feature(i32 %18, i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %2
  store i32 0, i32* %3, align 4
  br label %67

23:                                               ; preds = %15
  %24 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %25 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @cpu_to_virtio16(i32 %26, i32 %27)
  %29 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %30 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %29, i32 0, i32 2
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i32 %28, i32* %33, align 4
  %34 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %35 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %34, i32 0, i32 2
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = call i32 @sg_init_one(%struct.scatterlist* %6, %struct.TYPE_4__* %37, i32 4)
  %39 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %40 = load i32, i32* @VIRTIO_NET_CTRL_MQ, align 4
  %41 = load i32, i32* @VIRTIO_NET_CTRL_MQ_VQ_PAIRS_SET, align 4
  %42 = call i32 @virtnet_send_command(%struct.virtnet_info* %39, i32 %40, i32 %41, %struct.scatterlist* %6)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %23
  %45 = load %struct.net_device*, %struct.net_device** %7, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 1
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @dev_warn(i32* %46, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %67

51:                                               ; preds = %23
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %54 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.net_device*, %struct.net_device** %7, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @IFF_UP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %51
  %62 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %63 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %62, i32 0, i32 0
  %64 = call i32 @schedule_delayed_work(i32* %63, i32 0)
  br label %65

65:                                               ; preds = %61, %51
  br label %66

66:                                               ; preds = %65
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %44, %22
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @virtio_has_feature(i32, i32) #1

declare dso_local i32 @cpu_to_virtio16(i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @virtnet_send_command(%struct.virtnet_info*, i32, i32, %struct.scatterlist*) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
