; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_lio_nic_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_vf_main.c_lio_nic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_recv_info = type { %struct.octeon_recv_pkt* }
%struct.octeon_recv_pkt = type { i64*, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.octeon_device = type { i32, %struct.TYPE_8__*, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%union.oct_link_status = type { i32 }

@OCT_DROQ_INFO_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Malformed NIC_INFO, len=%d, ifidx=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.octeon_recv_info*, i8*)* @lio_nic_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_nic_info(%struct.octeon_recv_info* %0, i8* %1) #0 {
  %3 = alloca %struct.octeon_recv_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.octeon_recv_pkt*, align 8
  %7 = alloca %union.oct_link_status*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.octeon_recv_info* %0, %struct.octeon_recv_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.octeon_device*
  store %struct.octeon_device* %11, %struct.octeon_device** %5, align 8
  %12 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %3, align 8
  %13 = getelementptr inbounds %struct.octeon_recv_info, %struct.octeon_recv_info* %12, i32 0, i32 0
  %14 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %13, align 8
  store %struct.octeon_recv_pkt* %14, %struct.octeon_recv_pkt** %6, align 8
  store i32 0, i32* %8, align 4
  %15 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %16 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = getelementptr inbounds i64, i64* %17, i64 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OCT_DROQ_INFO_SIZE, align 8
  %21 = add i64 4, %20
  %22 = icmp ne i64 %19, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %2
  %24 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %25 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %24, i32 0, i32 2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %29 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %34 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %33, i32 0, i32 3
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %32, i32 %37)
  br label %90

39:                                               ; preds = %2
  %40 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %41 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  store i32 %44, i32* %8, align 4
  %45 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %46 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @get_rbd(i32 %49)
  %51 = load i64, i64* @OCT_DROQ_INFO_SIZE, align 8
  %52 = add nsw i64 %50, %51
  %53 = inttoptr i64 %52 to %union.oct_link_status*
  store %union.oct_link_status* %53, %union.oct_link_status** %7, align 8
  %54 = load %union.oct_link_status*, %union.oct_link_status** %7, align 8
  %55 = bitcast %union.oct_link_status* %54 to i32*
  %56 = call i32 @octeon_swap_8B_data(i32* %55, i32 0)
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %86, %39
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %60 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %89

63:                                               ; preds = %57
  %64 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %65 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* %8, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %63
  %75 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %76 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %75, i32 0, i32 1
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %76, align 8
  %78 = load i32, i32* %9, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %union.oct_link_status*, %union.oct_link_status** %7, align 8
  %84 = call i32 @update_link_status(i32 %82, %union.oct_link_status* %83)
  br label %89

85:                                               ; preds = %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %9, align 4
  br label %57

89:                                               ; preds = %74, %57
  br label %90

90:                                               ; preds = %89, %23
  store i32 0, i32* %9, align 4
  br label %91

91:                                               ; preds = %106, %90
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %94 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = icmp slt i32 %92, %95
  br i1 %96, label %97, label %109

97:                                               ; preds = %91
  %98 = load %struct.octeon_recv_pkt*, %struct.octeon_recv_pkt** %6, align 8
  %99 = getelementptr inbounds %struct.octeon_recv_pkt, %struct.octeon_recv_pkt* %98, i32 0, i32 2
  %100 = load i32*, i32** %99, align 8
  %101 = load i32, i32* %9, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @recv_buffer_free(i32 %104)
  br label %106

106:                                              ; preds = %97
  %107 = load i32, i32* %9, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %9, align 4
  br label %91

109:                                              ; preds = %91
  %110 = load %struct.octeon_recv_info*, %struct.octeon_recv_info** %3, align 8
  %111 = call i32 @octeon_free_recv_info(%struct.octeon_recv_info* %110)
  ret i32 0
}

declare dso_local i32 @dev_err(i32*, i8*, i64, i32) #1

declare dso_local i64 @get_rbd(i32) #1

declare dso_local i32 @octeon_swap_8B_data(i32*, i32) #1

declare dso_local i32 @update_link_status(i32, %union.oct_link_status*) #1

declare dso_local i32 @recv_buffer_free(i32) #1

declare dso_local i32 @octeon_free_recv_info(%struct.octeon_recv_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
