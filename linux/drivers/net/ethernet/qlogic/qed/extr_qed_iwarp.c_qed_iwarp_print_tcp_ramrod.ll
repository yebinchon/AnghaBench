; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_print_tcp_ramrod.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_iwarp.c_qed_iwarp_print_tcp_ramrod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.iwarp_tcp_offload_ramrod_data = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@QED_MSG_RDMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"local_mac=%x %x %x, remote_mac=%x %x %x\0A\00", align 1
@TCP_IPV4 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [48 x i8] c"local_ip=%pI4h:%x, remote_ip=%pI4h:%x, vlan=%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"local_ip=%pI6:%x, remote_ip=%pI6:%x, vlan=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [90 x i8] c"flow_label=%x, ttl=%x, tos_or_tc=%x, mss=%x, rcv_wnd_scale=%x, connect_mode=%x, flags=%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"syn_ip_payload_length=%x, lo=%x, hi=%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.iwarp_tcp_offload_ramrod_data*)* @qed_iwarp_print_tcp_ramrod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_iwarp_print_tcp_ramrod(%struct.qed_hwfn* %0, %struct.iwarp_tcp_offload_ramrod_data* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.iwarp_tcp_offload_ramrod_data*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.iwarp_tcp_offload_ramrod_data* %1, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %5 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %6 = load i32, i32* @QED_MSG_RDMA, align 4
  %7 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %8 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 21
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %12 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 20
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %16 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 19
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %20 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 18
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %24 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 17
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %28 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 16
  %30 = load i32, i32* %29, align 4
  %31 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %5, i32 %6, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %10, i32 %14, i32 %18, i32 %22, i32 %26, i32 %30)
  %32 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %33 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TCP_IPV4, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %62

38:                                               ; preds = %2
  %39 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %40 = load i32, i32* @QED_MSG_RDMA, align 4
  %41 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %42 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 15
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %46 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 14
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %50 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 13
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %54 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 12
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %58 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 11
  %60 = load i32, i32* %59, align 8
  %61 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %39, i32 %40, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %44, i32 %48, i32 %52, i32 %56, i32 %60)
  br label %86

62:                                               ; preds = %2
  %63 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %64 = load i32, i32* @QED_MSG_RDMA, align 4
  %65 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %66 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 15
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %70 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 14
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %74 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 13
  %76 = load i32, i32* %75, align 8
  %77 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %78 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 12
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %82 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 11
  %84 = load i32, i32* %83, align 8
  %85 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %63, i32 %64, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i32 %68, i32 %72, i32 %76, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %62, %38
  %87 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %88 = load i32, i32* @QED_MSG_RDMA, align 4
  %89 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %90 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 10
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %94 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 9
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %98 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %102 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 7
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %106 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %110 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %114 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  %116 = load i32, i32* %115, align 4
  %117 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %87, i32 %88, i8* getelementptr inbounds ([90 x i8], [90 x i8]* @.str.3, i64 0, i64 0), i32 %92, i32 %96, i32 %100, i32 %104, i32 %108, i32 %112, i32 %116)
  %118 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %119 = load i32, i32* @QED_MSG_RDMA, align 4
  %120 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %121 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %125 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.iwarp_tcp_offload_ramrod_data*, %struct.iwarp_tcp_offload_ramrod_data** %4, align 8
  %129 = getelementptr inbounds %struct.iwarp_tcp_offload_ramrod_data, %struct.iwarp_tcp_offload_ramrod_data* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = call i32 (%struct.qed_hwfn*, i32, i8*, i32, i32, i32, ...) @DP_VERBOSE(%struct.qed_hwfn* %118, i32 %119, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %123, i32 %127, i32 %131)
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
