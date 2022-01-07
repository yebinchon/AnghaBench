; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_update_link_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_update_link_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_10__*, i32, i32)* }
%struct.TYPE_7__ = type { i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*, i32*)* }

@.str = private unnamed_addr constant [31 x i8] c"%s: link change old %d new %d\0A\00", align 1
@AQ_CFG_DRV_NAME = common dso_local global i32 0, align 4
@AQ_NIC_FLAG_STARTED = common dso_local global i32 0, align 4
@AQ_NIC_LINK_DOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aq_nic_s*)* @aq_nic_update_link_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aq_nic_update_link_status(%struct.aq_nic_s* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.aq_nic_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %3, align 8
  %6 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %7 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %6, i32 0, i32 5
  %8 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 0
  %10 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %9, align 8
  %11 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %12 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %11, i32 0, i32 3
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = call i32 %10(%struct.TYPE_10__* %13)
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %1
  %18 = load i32, i32* %4, align 4
  store i32 %18, i32* %2, align 4
  br label %144

19:                                               ; preds = %1
  %20 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %21 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %25 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %24, i32 0, i32 3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %23, %29
  br i1 %30, label %31, label %81

31:                                               ; preds = %19
  %32 = load i32, i32* @AQ_CFG_DRV_NAME, align 4
  %33 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %34 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %38 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %37, i32 0, i32 3
  %39 = load %struct.TYPE_10__*, %struct.TYPE_10__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @pr_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %32, i64 %36, i64 %42)
  %44 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %45 = call i32 @aq_nic_update_interrupt_moderation_settings(%struct.aq_nic_s* %44)
  %46 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %47 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %46, i32 0, i32 5
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %49, align 8
  %51 = icmp ne i32 (%struct.TYPE_10__*, i32*)* %50, null
  br i1 %51, label %52, label %62

52:                                               ; preds = %31
  %53 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %54 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %53, i32 0, i32 5
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 1
  %57 = load i32 (%struct.TYPE_10__*, i32*)*, i32 (%struct.TYPE_10__*, i32*)** %56, align 8
  %58 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %59 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %58, i32 0, i32 3
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = call i32 %57(%struct.TYPE_10__* %60, i32* %5)
  br label %62

62:                                               ; preds = %52, %31
  %63 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %64 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %63, i32 0, i32 4
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 0
  %67 = load i32 (%struct.TYPE_10__*, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32)** %66, align 8
  %68 = icmp ne i32 (%struct.TYPE_10__*, i32, i32)* %67, null
  br i1 %68, label %69, label %80

69:                                               ; preds = %62
  %70 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %71 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %70, i32 0, i32 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = load i32 (%struct.TYPE_10__*, i32, i32)*, i32 (%struct.TYPE_10__*, i32, i32)** %73, align 8
  %75 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %76 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %75, i32 0, i32 3
  %77 = load %struct.TYPE_10__*, %struct.TYPE_10__** %76, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i32 %74(%struct.TYPE_10__* %77, i32 %78, i32 0)
  br label %80

80:                                               ; preds = %69, %62
  br label %81

81:                                               ; preds = %80, %19
  %82 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %83 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %82, i32 0, i32 2
  %84 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %85 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %84, i32 0, i32 3
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = bitcast %struct.TYPE_9__* %83 to i8*
  %89 = bitcast %struct.TYPE_9__* %87 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %88, i8* align 8 %89, i64 8, i1 false)
  %90 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %91 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @netif_carrier_ok(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %118, label %95

95:                                               ; preds = %81
  %96 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %97 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %118

101:                                              ; preds = %95
  %102 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %103 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %102, i32 0, i32 0
  %104 = load i32, i32* @AQ_NIC_FLAG_STARTED, align 4
  %105 = call i32 @aq_utils_obj_set(i32* %103, i32 %104)
  %106 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %107 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %106, i32 0, i32 0
  %108 = load i32, i32* @AQ_NIC_LINK_DOWN, align 4
  %109 = call i32 @aq_utils_obj_clear(i32* %107, i32 %108)
  %110 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %111 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @netif_carrier_on(i32 %112)
  %114 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %115 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @netif_tx_wake_all_queues(i32 %116)
  br label %118

118:                                              ; preds = %101, %95, %81
  %119 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %120 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i64 @netif_carrier_ok(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %143

124:                                              ; preds = %118
  %125 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %126 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %125, i32 0, i32 2
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %143, label %130

130:                                              ; preds = %124
  %131 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %132 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %131, i32 0, i32 1
  %133 = load i32, i32* %132, align 4
  %134 = call i32 @netif_carrier_off(i32 %133)
  %135 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %136 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 @netif_tx_disable(i32 %137)
  %139 = load %struct.aq_nic_s*, %struct.aq_nic_s** %3, align 8
  %140 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %139, i32 0, i32 0
  %141 = load i32, i32* @AQ_NIC_LINK_DOWN, align 4
  %142 = call i32 @aq_utils_obj_set(i32* %140, i32 %141)
  br label %143

143:                                              ; preds = %130, %124, %118
  store i32 0, i32* %2, align 4
  br label %144

144:                                              ; preds = %143, %17
  %145 = load i32, i32* %2, align 4
  ret i32 %145
}

declare dso_local i32 @pr_info(i8*, i32, i64, i64) #1

declare dso_local i32 @aq_nic_update_interrupt_moderation_settings(%struct.aq_nic_s*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @netif_carrier_ok(i32) #1

declare dso_local i32 @aq_utils_obj_set(i32*, i32) #1

declare dso_local i32 @aq_utils_obj_clear(i32*, i32) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_tx_wake_all_queues(i32) #1

declare dso_local i32 @netif_carrier_off(i32) #1

declare dso_local i32 @netif_tx_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
