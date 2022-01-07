; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c___liquidio_set_vf_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c___liquidio_set_vf_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.lio = type { %struct.TYPE_9__, %struct.octeon_device* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i64* }
%struct.octnic_ctrl_pkt = type { i64*, i32, %struct.TYPE_11__, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i64 }
%struct.TYPE_10__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@OCTNET_CMD_CHANGE_MACADDR = common dso_local global i32 0, align 4
@liquidio_link_ctrl_cmd_completion = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i32*, i32)* @__liquidio_set_vf_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__liquidio_set_vf_mac(%struct.net_device* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lio*, align 8
  %11 = alloca %struct.octeon_device*, align 8
  %12 = alloca %struct.octnic_ctrl_pkt, align 8
  %13 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %14 = load %struct.net_device*, %struct.net_device** %6, align 8
  %15 = call %struct.lio* @GET_LIO(%struct.net_device* %14)
  store %struct.lio* %15, %struct.lio** %10, align 8
  %16 = load %struct.lio*, %struct.lio** %10, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 1
  %18 = load %struct.octeon_device*, %struct.octeon_device** %17, align 8
  store %struct.octeon_device* %18, %struct.octeon_device** %11, align 8
  store i32 0, i32* %13, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @is_valid_ether_addr(i32* %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %105

25:                                               ; preds = %4
  %26 = load i32, i32* %7, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load i32, i32* %7, align 4
  %30 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %31 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp sge i32 %29, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %28, %25
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %105

38:                                               ; preds = %28
  %39 = call i32 @memset(%struct.octnic_ctrl_pkt* %12, i32 0, i32 56)
  %40 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 1
  store i64 0, i64* %41, align 8
  %42 = load i32, i32* @OCTNET_CMD_CHANGE_MACADDR, align 4
  %43 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load i32, i32* %7, align 4
  %47 = add nsw i32 %46, 1
  %48 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 0
  store i32 %47, i32* %50, align 8
  %51 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 1
  store i32 1, i32* %53, align 4
  %54 = load %struct.lio*, %struct.lio** %10, align 8
  %55 = getelementptr inbounds %struct.lio, %struct.lio* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 4
  store i32 %61, i32* %62, align 8
  %63 = load %struct.net_device*, %struct.net_device** %6, align 8
  %64 = ptrtoint %struct.net_device* %63 to i64
  %65 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 3
  store i64 %64, i64* %65, align 8
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %38
  %69 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 2
  store i32 1, i32* %71, align 8
  %72 = load i32, i32* @liquidio_link_ctrl_cmd_completion, align 4
  %73 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 1
  store i32 %72, i32* %73, align 8
  br label %74

74:                                               ; preds = %68, %38
  %75 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  store i64 0, i64* %77, align 8
  %78 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 0
  %79 = load i64*, i64** %78, align 8
  %80 = getelementptr inbounds i64, i64* %79, i64 0
  %81 = bitcast i64* %80 to i32*
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32*, i32** %8, align 8
  %84 = call i32 @ether_addr_copy(i32* %82, i32* %83)
  %85 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %12, i32 0, i32 0
  %86 = load i64*, i64** %85, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %90 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 1
  %92 = load i64*, i64** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i64, i64* %92, i64 %94
  store i64 %88, i64* %95, align 8
  %96 = load %struct.octeon_device*, %struct.octeon_device** %11, align 8
  %97 = call i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device* %96, %struct.octnic_ctrl_pkt* %12)
  store i32 %97, i32* %13, align 4
  %98 = load i32, i32* %13, align 4
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %103

100:                                              ; preds = %74
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  br label %103

103:                                              ; preds = %100, %74
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %5, align 4
  br label %105

105:                                              ; preds = %103, %35, %22
  %106 = load i32, i32* %5, align 4
  ret i32 %106
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32*) #1

declare dso_local i32 @memset(%struct.octnic_ctrl_pkt*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

declare dso_local i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device*, %struct.octnic_ctrl_pkt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
