; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_rcv_packets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/micrel/extr_ksz884x.c_dev_rcv_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dev_info = type { %struct.ksz_hw }
%struct.ksz_hw = type { %struct.ksz_desc_info, %struct.TYPE_5__* }
%struct.ksz_desc_info = type { i32, i32, i32, %struct.ksz_desc* }
%struct.ksz_desc = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { %struct.net_device* }
%struct.net_device = type { i32 }
%union.desc_stat = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dev_info*)* @dev_rcv_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_rcv_packets(%struct.dev_info* %0) #0 {
  %2 = alloca %struct.dev_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.desc_stat, align 8
  %5 = alloca %struct.ksz_hw*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ksz_desc_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ksz_desc*, align 8
  %10 = alloca i32, align 4
  store %struct.dev_info* %0, %struct.dev_info** %2, align 8
  %11 = load %struct.dev_info*, %struct.dev_info** %2, align 8
  %12 = getelementptr inbounds %struct.dev_info, %struct.dev_info* %11, i32 0, i32 0
  store %struct.ksz_hw* %12, %struct.ksz_hw** %5, align 8
  %13 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %14 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %13, i32 0, i32 1
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i64 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %6, align 8
  %19 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %20 = getelementptr inbounds %struct.ksz_hw, %struct.ksz_hw* %19, i32 0, i32 0
  store %struct.ksz_desc_info* %20, %struct.ksz_desc_info** %7, align 8
  %21 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %22 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %8, align 4
  store i32 0, i32* %10, align 4
  %24 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %25 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %3, align 4
  br label %27

27:                                               ; preds = %72, %1
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, -1
  store i32 %29, i32* %8, align 4
  %30 = icmp ne i32 %28, 0
  br i1 %30, label %31, label %82

31:                                               ; preds = %27
  %32 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %33 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %32, i32 0, i32 3
  %34 = load %struct.ksz_desc*, %struct.ksz_desc** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %34, i64 %36
  store %struct.ksz_desc* %37, %struct.ksz_desc** %9, align 8
  %38 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %39 = getelementptr inbounds %struct.ksz_desc, %struct.ksz_desc* %38, i32 0, i32 0
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @le32_to_cpu(i32 %43)
  %45 = bitcast %union.desc_stat* %4 to i32*
  store i32 %44, i32* %45, align 8
  %46 = bitcast %union.desc_stat* %4 to %struct.TYPE_8__*
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %31
  br label %82

51:                                               ; preds = %31
  %52 = bitcast %union.desc_stat* %4 to %struct.TYPE_8__*
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = bitcast %union.desc_stat* %4 to %struct.TYPE_8__*
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %56
  %62 = load %struct.net_device*, %struct.net_device** %6, align 8
  %63 = load %struct.ksz_hw*, %struct.ksz_hw** %5, align 8
  %64 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %65 = call i64 @rx_proc(%struct.net_device* %62, %struct.ksz_hw* %63, %struct.ksz_desc* %64, %union.desc_stat* byval(%union.desc_stat) align 8 %4)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  br label %72

68:                                               ; preds = %61
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %71

71:                                               ; preds = %68, %56, %51
  br label %72

72:                                               ; preds = %71, %67
  %73 = load %struct.ksz_desc*, %struct.ksz_desc** %9, align 8
  %74 = call i32 @release_desc(%struct.ksz_desc* %73)
  %75 = load i32, i32* %3, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %3, align 4
  %77 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %78 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %3, align 4
  %81 = and i32 %80, %79
  store i32 %81, i32* %3, align 4
  br label %27

82:                                               ; preds = %50, %27
  %83 = load i32, i32* %3, align 4
  %84 = load %struct.ksz_desc_info*, %struct.ksz_desc_info** %7, align 8
  %85 = getelementptr inbounds %struct.ksz_desc_info, %struct.ksz_desc_info* %84, i32 0, i32 1
  store i32 %83, i32* %85, align 4
  %86 = load i32, i32* %10, align 4
  ret i32 %86
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @rx_proc(%struct.net_device*, %struct.ksz_hw*, %struct.ksz_desc*, %union.desc_stat* byval(%union.desc_stat) align 8) #1

declare dso_local i32 @release_desc(%struct.ksz_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
