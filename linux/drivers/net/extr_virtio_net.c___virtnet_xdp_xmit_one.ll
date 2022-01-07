; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c___virtnet_xdp_xmit_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_virtio_net.c___virtnet_xdp_xmit_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32 }
%struct.send_queue = type { i32, i32 }
%struct.xdp_frame = type { i64, i32, %struct.virtio_net_hdr_mrg_rxbuf*, i32 }
%struct.virtio_net_hdr_mrg_rxbuf = type { i32 }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, %struct.send_queue*, %struct.xdp_frame*)* @__virtnet_xdp_xmit_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__virtnet_xdp_xmit_one(%struct.virtnet_info* %0, %struct.send_queue* %1, %struct.xdp_frame* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.virtnet_info*, align 8
  %6 = alloca %struct.send_queue*, align 8
  %7 = alloca %struct.xdp_frame*, align 8
  %8 = alloca %struct.virtio_net_hdr_mrg_rxbuf*, align 8
  %9 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %5, align 8
  store %struct.send_queue* %1, %struct.send_queue** %6, align 8
  store %struct.xdp_frame* %2, %struct.xdp_frame** %7, align 8
  %10 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %11 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EOPNOTSUPP, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %86

20:                                               ; preds = %3
  %21 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %22 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %25 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp slt i32 %23, %26
  %28 = zext i1 %27 to i32
  %29 = call i64 @unlikely(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %20
  %32 = load i32, i32* @EOVERFLOW, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %86

34:                                               ; preds = %20
  %35 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %36 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %39 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %38, i32 0, i32 2
  %40 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %39, align 8
  %41 = sext i32 %37 to i64
  %42 = sub i64 0, %41
  %43 = getelementptr inbounds %struct.virtio_net_hdr_mrg_rxbuf, %struct.virtio_net_hdr_mrg_rxbuf* %40, i64 %42
  store %struct.virtio_net_hdr_mrg_rxbuf* %43, %struct.virtio_net_hdr_mrg_rxbuf** %39, align 8
  %44 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %45 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %44, i32 0, i32 2
  %46 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %45, align 8
  store %struct.virtio_net_hdr_mrg_rxbuf* %46, %struct.virtio_net_hdr_mrg_rxbuf** %8, align 8
  %47 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %8, align 8
  %48 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %49 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @memset(%struct.virtio_net_hdr_mrg_rxbuf* %47, i32 0, i32 %50)
  %52 = load %struct.virtnet_info*, %struct.virtnet_info** %5, align 8
  %53 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %56 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, %54
  store i32 %58, i32* %56, align 8
  %59 = load %struct.send_queue*, %struct.send_queue** %6, align 8
  %60 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %63 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %62, i32 0, i32 2
  %64 = load %struct.virtio_net_hdr_mrg_rxbuf*, %struct.virtio_net_hdr_mrg_rxbuf** %63, align 8
  %65 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %66 = getelementptr inbounds %struct.xdp_frame, %struct.xdp_frame* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @sg_init_one(i32 %61, %struct.virtio_net_hdr_mrg_rxbuf* %64, i32 %67)
  %69 = load %struct.send_queue*, %struct.send_queue** %6, align 8
  %70 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.send_queue*, %struct.send_queue** %6, align 8
  %73 = getelementptr inbounds %struct.send_queue, %struct.send_queue* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.xdp_frame*, %struct.xdp_frame** %7, align 8
  %76 = call i32 @xdp_to_ptr(%struct.xdp_frame* %75)
  %77 = load i32, i32* @GFP_ATOMIC, align 4
  %78 = call i32 @virtqueue_add_outbuf(i32 %71, i32 %74, i32 1, i32 %76, i32 %77)
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %34
  %83 = load i32, i32* @ENOSPC, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %4, align 4
  br label %86

85:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %82, %31, %17
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @memset(%struct.virtio_net_hdr_mrg_rxbuf*, i32, i32) #1

declare dso_local i32 @sg_init_one(i32, %struct.virtio_net_hdr_mrg_rxbuf*, i32) #1

declare dso_local i32 @virtqueue_add_outbuf(i32, i32, i32, i32, i32) #1

declare dso_local i32 @xdp_to_ptr(%struct.xdp_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
