; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_can_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnxt/extr_bnxt_tc.c_bnxt_tc_can_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnxt = type { i32 }
%struct.bnxt_tc_flow = type { i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64 }

@BNXT_TC_FLOW_FLAGS_PORTS = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i64 0, align 8
@IPPROTO_UDP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"Cannot offload non-TCP/UDP (%d) ports\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Wildcard match unsupported for Source MAC\0A\00", align 1
@.str.2 = private unnamed_addr constant [41 x i8] c"Wildcard match unsupported for Dest MAC\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"Unsupported VLAN TCI\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Wildcard match unsupported for VLAN TPID\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"Wildcard match unsupported for Ethertype\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnxt*, %struct.bnxt_tc_flow*)* @bnxt_tc_can_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnxt_tc_can_offload(%struct.bnxt* %0, %struct.bnxt_tc_flow* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnxt*, align 8
  %5 = alloca %struct.bnxt_tc_flow*, align 8
  store %struct.bnxt* %0, %struct.bnxt** %4, align 8
  store %struct.bnxt_tc_flow* %1, %struct.bnxt_tc_flow** %5, align 8
  %6 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %7 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @BNXT_TC_FLOW_FLAGS_PORTS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %35

12:                                               ; preds = %2
  %13 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %14 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IPPROTO_TCP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %35

19:                                               ; preds = %12
  %20 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %21 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IPPROTO_UDP, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %19
  %27 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %28 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %31 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i32, i8*, ...) @netdev_info(i32 %29, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %33)
  store i32 0, i32* %3, align 4
  br label %121

35:                                               ; preds = %19, %12, %2
  %36 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %37 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = call i64 @bits_set(i32* %38, i32 4)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %53

41:                                               ; preds = %35
  %42 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %43 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 4
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @is_exactmatch(i32* %45, i32 8)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %41
  %49 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %50 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 (i32, i8*, ...) @netdev_info(i32 %51, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

53:                                               ; preds = %41, %35
  %54 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %55 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 2
  %57 = call i64 @bits_set(i32* %56, i32 4)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %70

59:                                               ; preds = %53
  %60 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %61 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 3
  %63 = call i32 @is_exactmatch(i32* %62, i32 4)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %70, label %65

65:                                               ; preds = %59
  %66 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %67 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 (i32, i8*, ...) @netdev_info(i32 %68, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

70:                                               ; preds = %59, %53
  %71 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %72 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %71, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 1
  %74 = call i64 @bits_set(i32* %73, i32 4)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %92

76:                                               ; preds = %70
  %77 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %78 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %82 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @is_vlan_tci_allowed(i32 %80, i32 %84)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %76
  %88 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %89 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call i32 (i32, i8*, ...) @netdev_info(i32 %90, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

92:                                               ; preds = %76, %70
  %93 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %94 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = call i64 @bits_set(i32* %95, i32 4)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %109

98:                                               ; preds = %92
  %99 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %100 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  %102 = call i32 @is_exactmatch(i32* %101, i32 4)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %109, label %104

104:                                              ; preds = %98
  %105 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %106 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 (i32, i8*, ...) @netdev_info(i32 %107, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

109:                                              ; preds = %98, %92
  %110 = load %struct.bnxt_tc_flow*, %struct.bnxt_tc_flow** %5, align 8
  %111 = getelementptr inbounds %struct.bnxt_tc_flow, %struct.bnxt_tc_flow* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = call i32 @is_exactmatch(i32* %112, i32 4)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %109
  %116 = load %struct.bnxt*, %struct.bnxt** %4, align 8
  %117 = getelementptr inbounds %struct.bnxt, %struct.bnxt* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = call i32 (i32, i8*, ...) @netdev_info(i32 %118, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

120:                                              ; preds = %109
  store i32 1, i32* %3, align 4
  br label %121

121:                                              ; preds = %120, %115, %104, %87, %65, %48, %26
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i32 @netdev_info(i32, i8*, ...) #1

declare dso_local i64 @bits_set(i32*, i32) #1

declare dso_local i32 @is_exactmatch(i32*, i32) #1

declare dso_local i32 @is_vlan_tci_allowed(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
