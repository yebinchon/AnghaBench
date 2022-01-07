; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_liquidio_set_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_liquidio_set_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.sockaddr = type { i32 }
%struct.lio = type { %struct.TYPE_12__, %struct.octeon_device* }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.octnic_ctrl_pkt = type { i64, i64*, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__, i64 }
%struct.TYPE_7__ = type { i32, i64, i32 }

@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@OCTNET_CMD_CHANGE_MACADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"MAC Address change failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@OCTEON_REQUEST_NO_PERMISSION = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"MAC Address change failed: no permission\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @liquidio_set_mac to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_set_mac(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.sockaddr*, align 8
  %7 = alloca %struct.lio*, align 8
  %8 = alloca %struct.octeon_device*, align 8
  %9 = alloca %struct.octnic_ctrl_pkt, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.sockaddr*
  store %struct.sockaddr* %12, %struct.sockaddr** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.lio* @GET_LIO(%struct.net_device* %13)
  store %struct.lio* %14, %struct.lio** %7, align 8
  %15 = load %struct.lio*, %struct.lio** %7, align 8
  %16 = getelementptr inbounds %struct.lio, %struct.lio* %15, i32 0, i32 1
  %17 = load %struct.octeon_device*, %struct.octeon_device** %16, align 8
  store %struct.octeon_device* %17, %struct.octeon_device** %8, align 8
  store i32 0, i32* %10, align 4
  %18 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %19 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @is_valid_ether_addr(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EADDRNOTAVAIL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %130

26:                                               ; preds = %2
  %27 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %28 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds %struct.net_device, %struct.net_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i64 @ether_addr_equal(i32 %29, i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %130

36:                                               ; preds = %26
  %37 = load %struct.lio*, %struct.lio** %7, align 8
  %38 = getelementptr inbounds %struct.lio, %struct.lio* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32, i32* @EPERM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %130

45:                                               ; preds = %36
  %46 = call i32 @memset(%struct.octnic_ctrl_pkt* %9, i32 0, i32 64)
  %47 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %9, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load i32, i32* @OCTNET_CMD_CHANGE_MACADDR, align 4
  %50 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %9, i32 0, i32 4
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 8
  %53 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %9, i32 0, i32 4
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  %56 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %9, i32 0, i32 4
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  store i32 1, i32* %58, align 8
  %59 = load %struct.lio*, %struct.lio** %7, align 8
  %60 = getelementptr inbounds %struct.lio, %struct.lio* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %9, i32 0, i32 3
  store i32 %66, i32* %67, align 8
  %68 = load %struct.net_device*, %struct.net_device** %4, align 8
  %69 = ptrtoint %struct.net_device* %68 to i64
  %70 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %9, i32 0, i32 2
  store i64 %69, i64* %70, align 8
  %71 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %9, i32 0, i32 1
  %72 = load i64*, i64** %71, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 0
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %9, i32 0, i32 1
  %75 = load i64*, i64** %74, align 8
  %76 = getelementptr inbounds i64, i64* %75, i64 0
  %77 = bitcast i64* %76 to i32*
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %80 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @ether_addr_copy(i32* %78, i32 %81)
  %83 = load %struct.lio*, %struct.lio** %7, align 8
  %84 = getelementptr inbounds %struct.lio, %struct.lio* %83, i32 0, i32 1
  %85 = load %struct.octeon_device*, %struct.octeon_device** %84, align 8
  %86 = call i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device* %85, %struct.octnic_ctrl_pkt* %9)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %97

89:                                               ; preds = %45
  %90 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %91 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %90, i32 0, i32 0
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = call i32 @dev_err(i32* %93, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %95 = load i32, i32* @ENOMEM, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %3, align 4
  br label %130

97:                                               ; preds = %45
  %98 = getelementptr inbounds %struct.octnic_ctrl_pkt, %struct.octnic_ctrl_pkt* %9, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* @OCTEON_REQUEST_NO_PERMISSION, align 4
  %101 = call i64 @FIRMWARE_STATUS_CODE(i32 %100)
  %102 = icmp eq i64 %99, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %97
  %104 = load %struct.octeon_device*, %struct.octeon_device** %8, align 8
  %105 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %104, i32 0, i32 0
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 0
  %108 = call i32 @dev_err(i32* %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %109 = load i32, i32* @EPERM, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %130

111:                                              ; preds = %97
  %112 = load %struct.net_device*, %struct.net_device** %4, align 8
  %113 = getelementptr inbounds %struct.net_device, %struct.net_device* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %116 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.net_device*, %struct.net_device** %4, align 8
  %119 = getelementptr inbounds %struct.net_device, %struct.net_device* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @memcpy(i32 %114, i32 %117, i32 %120)
  %122 = load %struct.lio*, %struct.lio** %7, align 8
  %123 = getelementptr inbounds %struct.lio, %struct.lio* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 0
  %125 = getelementptr inbounds i32, i32* %124, i64 2
  %126 = load %struct.sockaddr*, %struct.sockaddr** %6, align 8
  %127 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @ether_addr_copy(i32* %125, i32 %128)
  store i32 0, i32* %3, align 4
  br label %130

130:                                              ; preds = %111, %103, %89, %42, %35, %23
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @is_valid_ether_addr(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @memset(%struct.octnic_ctrl_pkt*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32) #1

declare dso_local i32 @octnet_send_nic_ctrl_pkt(%struct.octeon_device*, %struct.octnic_ctrl_pkt*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @FIRMWARE_STATUS_CODE(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
