; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_get_vf_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_main.c_liquidio_get_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ifla_vf_info = type { i32, i32, i32, i32, i64, i32, i32, i32, i32* }
%struct.lio = type { %struct.TYPE_10__, %struct.octeon_device* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.octeon_device = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32*, i32*, i32*, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@VLAN_PRIO_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, %struct.ifla_vf_info*)* @liquidio_get_vf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @liquidio_get_vf_config(%struct.net_device* %0, i32 %1, %struct.ifla_vf_info* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ifla_vf_info*, align 8
  %8 = alloca %struct.lio*, align 8
  %9 = alloca %struct.octeon_device*, align 8
  %10 = alloca i32*, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ifla_vf_info* %2, %struct.ifla_vf_info** %7, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.lio* @GET_LIO(%struct.net_device* %11)
  store %struct.lio* %12, %struct.lio** %8, align 8
  %13 = load %struct.lio*, %struct.lio** %8, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 1
  %15 = load %struct.octeon_device*, %struct.octeon_device** %14, align 8
  store %struct.octeon_device* %15, %struct.octeon_device** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %21 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp sge i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %18, %3
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %123

28:                                               ; preds = %18
  %29 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %30 = call i32 @memset(%struct.ifla_vf_info* %29, i32 0, i32 48)
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %33 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %35 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 5
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  store i32* %41, i32** %10, align 8
  %42 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %43 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %42, i32 0, i32 8
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  %46 = load i32*, i32** %10, align 8
  %47 = call i32 @ether_addr_copy(i32* %45, i32* %46)
  %48 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %49 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @VLAN_VID_MASK, align 4
  %57 = and i32 %55, %56
  %58 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %59 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %61 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %6, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @VLAN_PRIO_SHIFT, align 4
  %69 = ashr i32 %67, %68
  %70 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %71 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %70, i32 0, i32 2
  store i32 %69, i32* %71, align 8
  %72 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %73 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %89

78:                                               ; preds = %28
  %79 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %80 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %6, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %88 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %87, i32 0, i32 3
  store i32 1, i32* %88, align 4
  br label %92

89:                                               ; preds = %78, %28
  %90 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %91 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %90, i32 0, i32 3
  store i32 0, i32* %91, align 4
  br label %92

92:                                               ; preds = %89, %86
  %93 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %94 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 3
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %6, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %102 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 8
  %103 = load %struct.octeon_device*, %struct.octeon_device** %9, align 8
  %104 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = load i32, i32* %6, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %112 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %111, i32 0, i32 6
  store i32 %110, i32* %112, align 4
  %113 = load %struct.lio*, %struct.lio** %8, align 8
  %114 = getelementptr inbounds %struct.lio, %struct.lio* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %120 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %119, i32 0, i32 5
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ifla_vf_info*, %struct.ifla_vf_info** %7, align 8
  %122 = getelementptr inbounds %struct.ifla_vf_info, %struct.ifla_vf_info* %121, i32 0, i32 4
  store i64 0, i64* %122, align 8
  store i32 0, i32* %4, align 4
  br label %123

123:                                              ; preds = %92, %25
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @memset(%struct.ifla_vf_info*, i32, i32) #1

declare dso_local i32 @ether_addr_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
