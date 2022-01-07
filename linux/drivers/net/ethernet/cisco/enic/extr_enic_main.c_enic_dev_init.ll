; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_dev_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cisco/enic/extr_enic_main.c_enic_dev_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.enic = type { i32, i32, i32*, i32, %struct.net_device* }
%struct.net_device = type { i32 }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [62 x i8] c"Using default conversion factor for interrupt coalesce timer\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"Get vNIC configuration failed, aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [84 x i8] c"Failed to set intr mode based on resource counts and system capabilities, aborting\0A\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Failed to alloc vNIC resources, aborting\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to config nic, aborting\0A\00", align 1
@enic_poll = common dso_local global i32 0, align 4
@enic_poll_msix_rq = common dso_local global i32 0, align 4
@NAPI_POLL_WEIGHT = common dso_local global i32 0, align 4
@enic_poll_msix_wq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.enic*)* @enic_dev_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enic_dev_init(%struct.enic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.enic*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.enic* %0, %struct.enic** %3, align 8
  %8 = load %struct.enic*, %struct.enic** %3, align 8
  %9 = call %struct.device* @enic_get_dev(%struct.enic* %8)
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = load %struct.enic*, %struct.enic** %3, align 8
  %11 = getelementptr inbounds %struct.enic, %struct.enic* %10, i32 0, i32 4
  %12 = load %struct.net_device*, %struct.net_device** %11, align 8
  store %struct.net_device* %12, %struct.net_device** %5, align 8
  %13 = load %struct.enic*, %struct.enic** %3, align 8
  %14 = call i32 @enic_dev_intr_coal_timer_info(%struct.enic* %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %4, align 8
  %19 = call i32 @dev_warn(%struct.device* %18, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.enic*, %struct.enic** %3, align 8
  %21 = getelementptr inbounds %struct.enic, %struct.enic* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @vnic_dev_intr_coal_timer_info_default(i32 %22)
  br label %24

24:                                               ; preds = %17, %1
  %25 = load %struct.enic*, %struct.enic** %3, align 8
  %26 = call i32 @enic_get_vnic_config(%struct.enic* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.device*, %struct.device** %4, align 8
  %31 = call i32 @dev_err(%struct.device* %30, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* %7, align 4
  store i32 %32, i32* %2, align 4
  br label %130

33:                                               ; preds = %24
  %34 = load %struct.enic*, %struct.enic** %3, align 8
  %35 = call i32 @enic_get_res_counts(%struct.enic* %34)
  %36 = load %struct.enic*, %struct.enic** %3, align 8
  %37 = call i32 @enic_kdump_kernel_config(%struct.enic* %36)
  %38 = load %struct.enic*, %struct.enic** %3, align 8
  %39 = call i32 @enic_set_intr_mode(%struct.enic* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %33
  %43 = load %struct.device*, %struct.device** %4, align 8
  %44 = call i32 @dev_err(%struct.device* %43, i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %2, align 4
  br label %130

46:                                               ; preds = %33
  %47 = load %struct.enic*, %struct.enic** %3, align 8
  %48 = call i32 @enic_alloc_vnic_resources(%struct.enic* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load %struct.device*, %struct.device** %4, align 8
  %53 = call i32 @dev_err(%struct.device* %52, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0))
  br label %122

54:                                               ; preds = %46
  %55 = load %struct.enic*, %struct.enic** %3, align 8
  %56 = call i32 @enic_init_vnic_resources(%struct.enic* %55)
  %57 = load %struct.enic*, %struct.enic** %3, align 8
  %58 = call i32 @enic_set_rss_nic_cfg(%struct.enic* %57)
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %7, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load %struct.device*, %struct.device** %4, align 8
  %63 = call i32 @dev_err(%struct.device* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  br label %122

64:                                               ; preds = %54
  %65 = load %struct.enic*, %struct.enic** %3, align 8
  %66 = getelementptr inbounds %struct.enic, %struct.enic* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @vnic_dev_get_intr_mode(i32 %67)
  switch i32 %68, label %69 [
    i32 128, label %77
  ]

69:                                               ; preds = %64
  %70 = load %struct.net_device*, %struct.net_device** %5, align 8
  %71 = load %struct.enic*, %struct.enic** %3, align 8
  %72 = getelementptr inbounds %struct.enic, %struct.enic* %71, i32 0, i32 2
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  %75 = load i32, i32* @enic_poll, align 4
  %76 = call i32 @netif_napi_add(%struct.net_device* %70, i32* %74, i32 %75, i32 64)
  br label %121

77:                                               ; preds = %64
  store i32 0, i32* %6, align 4
  br label %78

78:                                               ; preds = %95, %77
  %79 = load i32, i32* %6, align 4
  %80 = load %struct.enic*, %struct.enic** %3, align 8
  %81 = getelementptr inbounds %struct.enic, %struct.enic* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp ult i32 %79, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %78
  %85 = load %struct.net_device*, %struct.net_device** %5, align 8
  %86 = load %struct.enic*, %struct.enic** %3, align 8
  %87 = getelementptr inbounds %struct.enic, %struct.enic* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %6, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* @enic_poll_msix_rq, align 4
  %93 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %94 = call i32 @netif_napi_add(%struct.net_device* %85, i32* %91, i32 %92, i32 %93)
  br label %95

95:                                               ; preds = %84
  %96 = load i32, i32* %6, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %6, align 4
  br label %78

98:                                               ; preds = %78
  store i32 0, i32* %6, align 4
  br label %99

99:                                               ; preds = %117, %98
  %100 = load i32, i32* %6, align 4
  %101 = load %struct.enic*, %struct.enic** %3, align 8
  %102 = getelementptr inbounds %struct.enic, %struct.enic* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ult i32 %100, %103
  br i1 %104, label %105, label %120

105:                                              ; preds = %99
  %106 = load %struct.net_device*, %struct.net_device** %5, align 8
  %107 = load %struct.enic*, %struct.enic** %3, align 8
  %108 = getelementptr inbounds %struct.enic, %struct.enic* %107, i32 0, i32 2
  %109 = load i32*, i32** %108, align 8
  %110 = load %struct.enic*, %struct.enic** %3, align 8
  %111 = load i32, i32* %6, align 4
  %112 = call i64 @enic_cq_wq(%struct.enic* %110, i32 %111)
  %113 = getelementptr inbounds i32, i32* %109, i64 %112
  %114 = load i32, i32* @enic_poll_msix_wq, align 4
  %115 = load i32, i32* @NAPI_POLL_WEIGHT, align 4
  %116 = call i32 @netif_napi_add(%struct.net_device* %106, i32* %113, i32 %114, i32 %115)
  br label %117

117:                                              ; preds = %105
  %118 = load i32, i32* %6, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %99

120:                                              ; preds = %99
  br label %121

121:                                              ; preds = %120, %69
  store i32 0, i32* %2, align 4
  br label %130

122:                                              ; preds = %61, %51
  %123 = load %struct.enic*, %struct.enic** %3, align 8
  %124 = call i32 @enic_free_affinity_hint(%struct.enic* %123)
  %125 = load %struct.enic*, %struct.enic** %3, align 8
  %126 = call i32 @enic_clear_intr_mode(%struct.enic* %125)
  %127 = load %struct.enic*, %struct.enic** %3, align 8
  %128 = call i32 @enic_free_vnic_resources(%struct.enic* %127)
  %129 = load i32, i32* %7, align 4
  store i32 %129, i32* %2, align 4
  br label %130

130:                                              ; preds = %122, %121, %42, %29
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.device* @enic_get_dev(%struct.enic*) #1

declare dso_local i32 @enic_dev_intr_coal_timer_info(%struct.enic*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

declare dso_local i32 @vnic_dev_intr_coal_timer_info_default(i32) #1

declare dso_local i32 @enic_get_vnic_config(%struct.enic*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @enic_get_res_counts(%struct.enic*) #1

declare dso_local i32 @enic_kdump_kernel_config(%struct.enic*) #1

declare dso_local i32 @enic_set_intr_mode(%struct.enic*) #1

declare dso_local i32 @enic_alloc_vnic_resources(%struct.enic*) #1

declare dso_local i32 @enic_init_vnic_resources(%struct.enic*) #1

declare dso_local i32 @enic_set_rss_nic_cfg(%struct.enic*) #1

declare dso_local i32 @vnic_dev_get_intr_mode(i32) #1

declare dso_local i32 @netif_napi_add(%struct.net_device*, i32*, i32, i32) #1

declare dso_local i64 @enic_cq_wq(%struct.enic*, i32) #1

declare dso_local i32 @enic_free_affinity_hint(%struct.enic*) #1

declare dso_local i32 @enic_clear_intr_mode(%struct.enic*) #1

declare dso_local i32 @enic_free_vnic_resources(%struct.enic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
