; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_xdp_setup_drv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_common.c_nfp_net_xdp_setup_drv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_net = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i32 }
%struct.netdev_bpf = type { i32, %struct.bpf_prog* }
%struct.bpf_prog = type { i32 }
%struct.nfp_net_dp = type { i64, i32, i32, %struct.bpf_prog* }

@EBUSY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@XDP_PACKET_HEADROOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_net*, %struct.netdev_bpf*)* @nfp_net_xdp_setup_drv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_net_xdp_setup_drv(%struct.nfp_net* %0, %struct.netdev_bpf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfp_net*, align 8
  %5 = alloca %struct.netdev_bpf*, align 8
  %6 = alloca %struct.bpf_prog*, align 8
  %7 = alloca %struct.nfp_net_dp*, align 8
  %8 = alloca i32, align 4
  store %struct.nfp_net* %0, %struct.nfp_net** %4, align 8
  store %struct.netdev_bpf* %1, %struct.netdev_bpf** %5, align 8
  %9 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %10 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %9, i32 0, i32 1
  %11 = load %struct.bpf_prog*, %struct.bpf_prog** %10, align 8
  store %struct.bpf_prog* %11, %struct.bpf_prog** %6, align 8
  %12 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %13 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %12, i32 0, i32 0
  %14 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %15 = call i32 @xdp_attachment_flags_ok(i32* %13, %struct.netdev_bpf* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %116

20:                                               ; preds = %2
  %21 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %22 = icmp ne %struct.bpf_prog* %21, null
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  %25 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %26 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  %32 = icmp eq i32 %24, %31
  br i1 %32, label %33, label %44

33:                                               ; preds = %20
  %34 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %35 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %39 = call i32 @WRITE_ONCE(i32 %37, %struct.bpf_prog* %38)
  %40 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %41 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %40, i32 0, i32 0
  %42 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %43 = call i32 @xdp_attachment_setup(i32* %41, %struct.netdev_bpf* %42)
  store i32 0, i32* %3, align 4
  br label %116

44:                                               ; preds = %20
  %45 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %46 = call %struct.nfp_net_dp* @nfp_net_clone_dp(%struct.nfp_net* %45)
  store %struct.nfp_net_dp* %46, %struct.nfp_net_dp** %7, align 8
  %47 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %48 = icmp ne %struct.nfp_net_dp* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %116

52:                                               ; preds = %44
  %53 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %54 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %55 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %54, i32 0, i32 3
  store %struct.bpf_prog* %53, %struct.bpf_prog** %55, align 8
  %56 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %57 = icmp ne %struct.bpf_prog* %56, null
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %60 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  br label %69

63:                                               ; preds = %52
  %64 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %65 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = sub nsw i64 0, %67
  br label %69

69:                                               ; preds = %63, %58
  %70 = phi i64 [ %62, %58 ], [ %68, %63 ]
  %71 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %72 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %74, %70
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %72, align 4
  %77 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %78 = icmp ne %struct.bpf_prog* %77, null
  br i1 %78, label %79, label %81

79:                                               ; preds = %69
  %80 = load i32, i32* @DMA_BIDIRECTIONAL, align 4
  br label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @DMA_FROM_DEVICE, align 4
  br label %83

83:                                               ; preds = %81, %79
  %84 = phi i32 [ %80, %79 ], [ %82, %81 ]
  %85 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %86 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %85, i32 0, i32 1
  store i32 %84, i32* %86, align 8
  %87 = load %struct.bpf_prog*, %struct.bpf_prog** %6, align 8
  %88 = icmp ne %struct.bpf_prog* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load i64, i64* @XDP_PACKET_HEADROOM, align 8
  %91 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %92 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %90, %94
  br label %97

96:                                               ; preds = %83
  br label %97

97:                                               ; preds = %96, %89
  %98 = phi i64 [ %95, %89 ], [ 0, %96 ]
  %99 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %100 = getelementptr inbounds %struct.nfp_net_dp, %struct.nfp_net_dp* %99, i32 0, i32 0
  store i64 %98, i64* %100, align 8
  %101 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %102 = load %struct.nfp_net_dp*, %struct.nfp_net_dp** %7, align 8
  %103 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %104 = getelementptr inbounds %struct.netdev_bpf, %struct.netdev_bpf* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @nfp_net_ring_reconfig(%struct.nfp_net* %101, %struct.nfp_net_dp* %102, i32 %105)
  store i32 %106, i32* %8, align 4
  %107 = load i32, i32* %8, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %111

109:                                              ; preds = %97
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %3, align 4
  br label %116

111:                                              ; preds = %97
  %112 = load %struct.nfp_net*, %struct.nfp_net** %4, align 8
  %113 = getelementptr inbounds %struct.nfp_net, %struct.nfp_net* %112, i32 0, i32 0
  %114 = load %struct.netdev_bpf*, %struct.netdev_bpf** %5, align 8
  %115 = call i32 @xdp_attachment_setup(i32* %113, %struct.netdev_bpf* %114)
  store i32 0, i32* %3, align 4
  br label %116

116:                                              ; preds = %111, %109, %49, %33, %17
  %117 = load i32, i32* %3, align 4
  ret i32 %117
}

declare dso_local i32 @xdp_attachment_flags_ok(i32*, %struct.netdev_bpf*) #1

declare dso_local i32 @WRITE_ONCE(i32, %struct.bpf_prog*) #1

declare dso_local i32 @xdp_attachment_setup(i32*, %struct.netdev_bpf*) #1

declare dso_local %struct.nfp_net_dp* @nfp_net_clone_dp(%struct.nfp_net*) #1

declare dso_local i32 @nfp_net_ring_reconfig(%struct.nfp_net*, %struct.nfp_net_dp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
