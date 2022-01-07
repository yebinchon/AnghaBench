; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_remove_vq_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c_remove_vq_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtnet_info*)* @remove_vq_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @remove_vq_common(%struct.virtnet_info* %0) #0 {
  %2 = alloca %struct.virtnet_info*, align 8
  store %struct.virtnet_info* %0, %struct.virtnet_info** %2, align 8
  %3 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %4 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %3, i32 0, i32 0
  %5 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %8, align 8
  %10 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %11 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 %9(%struct.TYPE_4__* %12)
  %14 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %15 = call i32 @free_unused_bufs(%struct.virtnet_info* %14)
  %16 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %17 = call i32 @free_receive_bufs(%struct.virtnet_info* %16)
  %18 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %19 = call i32 @free_receive_page_frags(%struct.virtnet_info* %18)
  %20 = load %struct.virtnet_info*, %struct.virtnet_info** %2, align 8
  %21 = call i32 @virtnet_del_vqs(%struct.virtnet_info* %20)
  ret void
}

declare dso_local i32 @free_unused_bufs(%struct.virtnet_info*) #1

declare dso_local i32 @free_receive_bufs(%struct.virtnet_info*) #1

declare dso_local i32 @free_receive_page_frags(%struct.virtnet_info*) #1

declare dso_local i32 @virtnet_del_vqs(%struct.virtnet_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
