; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_update_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_update_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64 }
%union.oct_link_status = type { i64 }
%struct.lio = type { %struct.TYPE_12__, %struct.TYPE_10__, i32, i64, %struct.octeon_device* }
%struct.TYPE_12__ = type { %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.octeon_device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Max MTU Changed from %d to %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [80 x i8] c"Current MTU is higher than new max MTU; Reducing the current mtu from %d to %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %union.oct_link_status*)* @update_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_link_status(%struct.net_device* %0, %union.oct_link_status* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %union.oct_link_status*, align 8
  %5 = alloca %struct.lio*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.octeon_device*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %union.oct_link_status* %1, %union.oct_link_status** %4, align 8
  %8 = load %struct.net_device*, %struct.net_device** %3, align 8
  %9 = call %struct.lio* @GET_LIO(%struct.net_device* %8)
  store %struct.lio* %9, %struct.lio** %5, align 8
  %10 = load %struct.lio*, %struct.lio** %5, align 8
  %11 = getelementptr inbounds %struct.lio, %struct.lio* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %6, align 4
  %16 = load %struct.lio*, %struct.lio** %5, align 8
  %17 = getelementptr inbounds %struct.lio, %struct.lio* %16, i32 0, i32 4
  %18 = load %struct.octeon_device*, %struct.octeon_device** %17, align 8
  store %struct.octeon_device* %18, %struct.octeon_device** %7, align 8
  %19 = load %struct.lio*, %struct.lio** %5, align 8
  %20 = getelementptr inbounds %struct.lio, %struct.lio* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %132

23:                                               ; preds = %2
  %24 = load %struct.lio*, %struct.lio** %5, align 8
  %25 = getelementptr inbounds %struct.lio, %struct.lio* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %union.oct_link_status*, %union.oct_link_status** %4, align 8
  %30 = bitcast %union.oct_link_status* %29 to i64*
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %132

33:                                               ; preds = %23
  %34 = load %union.oct_link_status*, %union.oct_link_status** %4, align 8
  %35 = bitcast %union.oct_link_status* %34 to i64*
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.lio*, %struct.lio** %5, align 8
  %38 = getelementptr inbounds %struct.lio, %struct.lio* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  store i64 %36, i64* %40, align 8
  %41 = load %struct.net_device*, %struct.net_device** %3, align 8
  %42 = call i32 @print_link_info(%struct.net_device* %41)
  %43 = load %struct.lio*, %struct.lio** %5, align 8
  %44 = getelementptr inbounds %struct.lio, %struct.lio* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load %struct.lio*, %struct.lio** %5, align 8
  %48 = getelementptr inbounds %struct.lio, %struct.lio* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %33
  %55 = load %struct.net_device*, %struct.net_device** %3, align 8
  %56 = call i32 @netif_carrier_on(%struct.net_device* %55)
  %57 = load %struct.net_device*, %struct.net_device** %3, align 8
  %58 = call i32 @wake_txqs(%struct.net_device* %57)
  br label %64

59:                                               ; preds = %33
  %60 = load %struct.net_device*, %struct.net_device** %3, align 8
  %61 = call i32 @netif_carrier_off(%struct.net_device* %60)
  %62 = load %struct.net_device*, %struct.net_device** %3, align 8
  %63 = call i32 @stop_txqs(%struct.net_device* %62)
  br label %64

64:                                               ; preds = %59, %54
  %65 = load %struct.lio*, %struct.lio** %5, align 8
  %66 = getelementptr inbounds %struct.lio, %struct.lio* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %94

73:                                               ; preds = %64
  %74 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %75 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %74, i32 0, i32 0
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i32, i32* %6, align 4
  %79 = load %struct.lio*, %struct.lio** %5, align 8
  %80 = getelementptr inbounds %struct.lio, %struct.lio* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @dev_info(i32* %77, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %78, i32 %84)
  %86 = load %struct.lio*, %struct.lio** %5, align 8
  %87 = getelementptr inbounds %struct.lio, %struct.lio* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.net_device*, %struct.net_device** %3, align 8
  %93 = getelementptr inbounds %struct.net_device, %struct.net_device* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %73, %64
  %95 = load %struct.lio*, %struct.lio** %5, align 8
  %96 = getelementptr inbounds %struct.lio, %struct.lio* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = load %struct.net_device*, %struct.net_device** %3, align 8
  %103 = getelementptr inbounds %struct.net_device, %struct.net_device* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = icmp slt i64 %101, %104
  br i1 %105, label %106, label %131

106:                                              ; preds = %94
  %107 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %108 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %107, i32 0, i32 0
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load %struct.net_device*, %struct.net_device** %3, align 8
  %112 = getelementptr inbounds %struct.net_device, %struct.net_device* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.lio*, %struct.lio** %5, align 8
  %115 = getelementptr inbounds %struct.lio, %struct.lio* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = sext i32 %119 to i64
  %121 = call i32 @dev_warn(i32* %110, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i64 %113, i64 %120)
  %122 = load %struct.lio*, %struct.lio** %5, align 8
  %123 = getelementptr inbounds %struct.lio, %struct.lio* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load %struct.lio*, %struct.lio** %5, align 8
  %127 = getelementptr inbounds %struct.lio, %struct.lio* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = call i32 @queue_delayed_work(i32 %125, i32* %129, i32 0)
  br label %131

131:                                              ; preds = %106, %94
  br label %132

132:                                              ; preds = %131, %23, %2
  ret void
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i32 @print_link_info(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @wake_txqs(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @stop_txqs(%struct.net_device*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*, i64, i64) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
