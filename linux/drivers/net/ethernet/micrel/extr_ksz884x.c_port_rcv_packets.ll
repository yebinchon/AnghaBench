; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_rcv_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_port_rcv_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { i32, %struct.TYPE_7__*, %struct.ksz_desc_info }
%struct.TYPE_7__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%struct.ksz_desc_info = type { i32, i32, i32, %struct.ksz_desc* }
%struct.ksz_desc = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%union.desc_stat = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_info*)* @port_rcv_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @port_rcv_packets(%struct.dev_info* %0) #0 {
  %2 = alloca %struct.dev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.desc_stat, align 8
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ksz_desc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ksz_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.dev_info* %0, %struct.dev_info** %2, align 8
  %12 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %13 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %12, i32 0, i32 0
  store %struct.ksz_hw* %13, %struct.ksz_hw** %5, align 8
  %14 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %14, i32 0, i32 1
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load %struct.net_device*, %struct.net_device** %18, align 8
  store %struct.net_device* %19, %struct.net_device** %6, align 8
  %20 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %21 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %20, i32 0, i32 2
  store %struct.ksz_desc_info* %21, %struct.ksz_desc_info** %7, align 8
  %22 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %23 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %25 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %26 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %96, %1
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %29, -1
  store i32 %30, i32* %8, align 4
  %31 = icmp ne i32 %29, 0
  br i1 %31, label %32, label %106

32:                                               ; preds = %28
  %33 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %34 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %33, i32 0, i32 3
  %35 = load %struct.ksz_desc*, %struct.ksz_desc** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %35, i64 %37
  store %struct.ksz_desc* %38, %struct.ksz_desc** %9, align 8
  %39 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %40 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le32_to_cpu(i32 %44)
  %46 = bitcast %union.desc_stat* %4 to i32*
  store i32 %45, i32* %46, align 8
  %47 = bitcast %union.desc_stat* %4 to %struct.TYPE_8__*
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %32
  br label %106

52:                                               ; preds = %32
  %53 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %54 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %75

57:                                               ; preds = %52
  %58 = bitcast %union.desc_stat* %4 to %struct.TYPE_8__*
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @HW_TO_DEV_PORT(i32 %60)
  store i32 %61, i32* %11, align 4
  %62 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %63 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %62, i32 0, i32 1
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %63, align 8
  %65 = load i32, i32* %11, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.net_device*, %struct.net_device** %68, align 8
  store %struct.net_device* %69, %struct.net_device** %6, align 8
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = call i32 @netif_running(%struct.net_device* %70)
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %57
  br label %96

74:                                               ; preds = %57
  br label %75

75:                                               ; preds = %74, %52
  %76 = bitcast %union.desc_stat* %4 to %struct.TYPE_8__*
  %77 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %95

80:                                               ; preds = %75
  %81 = bitcast %union.desc_stat* %4 to %struct.TYPE_8__*
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %95

85:                                               ; preds = %80
  %86 = load %struct.net_device*, %struct.net_device** %6, align 8
  %87 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %88 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %89 = call i64 @rx_proc(%struct.net_device* %86, %struct.ksz_hw* %87, %struct.ksz_desc* %88, %union.desc_stat* byval(%union.desc_stat) align 8 %4)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %85
  br label %96

92:                                               ; preds = %85
  %93 = load i32, i32* %10, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %92, %80, %75
  br label %96

96:                                               ; preds = %95, %91, %73
  %97 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %98 = call i32 @release_desc(%struct.ksz_desc* %97)
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %3, align 4
  %101 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %102 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* %3, align 4
  %105 = and i32 %104, %103
  store i32 %105, i32* %3, align 4
  br label %28

106:                                              ; preds = %51, %28
  %107 = load i32, i32* %3, align 4
  %108 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %109 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %108, i32 0, i32 1
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %10, align 4
  ret i32 %110
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @HW_TO_DEV_PORT(i32) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @rx_proc(%struct.net_device*, %struct.ksz_hw*, %struct.ksz_desc*, %union.desc_stat* byval(%union.desc_stat) align 8) #1

declare dso_local i32 @release_desc(%struct.ksz_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
