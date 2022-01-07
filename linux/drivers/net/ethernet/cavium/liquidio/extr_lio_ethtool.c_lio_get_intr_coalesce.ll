; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_intr_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/liquidio/extr_lio_ethtool.c_lio_get_intr_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_coalesce = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32 }
%struct.lio = type { i32, %struct.TYPE_6__, %struct.octeon_device* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.octeon_device = type { i32, %struct.octeon_instr_queue**, i64, i32, i32, i32 }
%struct.octeon_instr_queue = type { i32 }
%struct.oct_intrmod_cfg = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.octeon_cn6xxx = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Unknown Chip !!\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_coalesce*)* @lio_get_intr_coalesce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lio_get_intr_coalesce(%struct.net_device* %0, %struct.ethtool_coalesce* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_coalesce*, align 8
  %6 = alloca %struct.lio*, align 8
  %7 = alloca %struct.octeon_device*, align 8
  %8 = alloca %struct.octeon_instr_queue*, align 8
  %9 = alloca %struct.oct_intrmod_cfg, align 8
  %10 = alloca %struct.octeon_cn6xxx*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_coalesce* %1, %struct.ethtool_coalesce** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.lio* @GET_LIO(%struct.net_device* %11)
  store %struct.lio* %12, %struct.lio** %6, align 8
  %13 = load %struct.lio*, %struct.lio** %6, align 8
  %14 = getelementptr inbounds %struct.lio, %struct.lio* %13, i32 0, i32 2
  %15 = load %struct.octeon_device*, %struct.octeon_device** %14, align 8
  store %struct.octeon_device* %15, %struct.octeon_device** %7, align 8
  %16 = load %struct.lio*, %struct.lio** %6, align 8
  %17 = call i64 @octnet_get_intrmod_cfg(%struct.lio* %16, %struct.oct_intrmod_cfg* %9)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %2
  %20 = load i32, i32* @ENODEV, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %164

22:                                               ; preds = %2
  %23 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %24 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %92 [
    i32 131, label %26
    i32 130, label %26
    i32 128, label %52
    i32 129, label %52
  ]

26:                                               ; preds = %22, %22
  %27 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 10
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %26
  %31 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %32 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %34, i32 0, i32 13
  store i32 %33, i32* %35, align 8
  %36 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %37 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %39, i32 0, i32 12
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %30, %26
  %42 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %41
  %46 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %47 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %46, i32 0, i32 3
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %50 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %49, i32 0, i32 11
  store i32 %48, i32* %50, align 8
  br label %51

51:                                               ; preds = %45, %41
  br label %101

52:                                               ; preds = %22, %22
  %53 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %54 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to %struct.octeon_cn6xxx*
  store %struct.octeon_cn6xxx* %56, %struct.octeon_cn6xxx** %10, align 8
  %57 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 10
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %73, label %60

60:                                               ; preds = %52
  %61 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %10, align 8
  %62 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @CFG_GET_OQ_INTR_TIME(i32 %63)
  %65 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %66 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %65, i32 0, i32 13
  store i32 %64, i32* %66, align 8
  %67 = load %struct.octeon_cn6xxx*, %struct.octeon_cn6xxx** %10, align 8
  %68 = getelementptr inbounds %struct.octeon_cn6xxx, %struct.octeon_cn6xxx* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @CFG_GET_OQ_INTR_PKT(i32 %69)
  %71 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %72 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %71, i32 0, i32 12
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %60, %52
  %74 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %75 = getelementptr inbounds %struct.octeon_device, %struct.octeon_device* %74, i32 0, i32 1
  %76 = load %struct.octeon_instr_queue**, %struct.octeon_instr_queue*** %75, align 8
  %77 = load %struct.lio*, %struct.lio** %6, align 8
  %78 = getelementptr inbounds %struct.lio, %struct.lio* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %76, i64 %84
  %86 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %85, align 8
  store %struct.octeon_instr_queue* %86, %struct.octeon_instr_queue** %8, align 8
  %87 = load %struct.octeon_instr_queue*, %struct.octeon_instr_queue** %8, align 8
  %88 = getelementptr inbounds %struct.octeon_instr_queue, %struct.octeon_instr_queue* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %91 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %90, i32 0, i32 11
  store i32 %89, i32* %91, align 8
  br label %101

92:                                               ; preds = %22
  %93 = load %struct.lio*, %struct.lio** %6, align 8
  %94 = load i32, i32* @drv, align 4
  %95 = load %struct.lio*, %struct.lio** %6, align 8
  %96 = getelementptr inbounds %struct.lio, %struct.lio* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @netif_info(%struct.lio* %93, i32 %94, i32 %97, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %3, align 4
  br label %164

101:                                              ; preds = %73, %51
  %102 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 10
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %138

105:                                              ; preds = %101
  %106 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 10
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %109 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %108, i32 0, i32 10
  store i64 %107, i64* %109, align 8
  %110 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 9
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %113 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %112, i32 0, i32 9
  store i32 %111, i32* %113, align 8
  %114 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 8
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %117 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %116, i32 0, i32 8
  store i32 %115, i32* %117, align 4
  %118 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 7
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %120, i32 0, i32 7
  store i32 %119, i32* %121, align 8
  %122 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 6
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %125 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %124, i32 0, i32 6
  store i32 %123, i32* %125, align 4
  %126 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %128, i32 0, i32 5
  store i32 %127, i32* %129, align 8
  %130 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 4
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %133 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %137 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %136, i32 0, i32 3
  store i32 %135, i32* %137, align 8
  br label %138

138:                                              ; preds = %105, %101
  %139 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %140 = call i64 @OCTEON_CN23XX_PF(%struct.octeon_device* %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %146, label %142

142:                                              ; preds = %138
  %143 = load %struct.octeon_device*, %struct.octeon_device** %7, align 8
  %144 = call i64 @OCTEON_CN23XX_VF(%struct.octeon_device* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %163

146:                                              ; preds = %142, %138
  %147 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %163

150:                                              ; preds = %146
  %151 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 2
  %152 = load i64, i64* %151, align 8
  %153 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %154 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %153, i32 0, i32 2
  store i64 %152, i64* %154, align 8
  %155 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %158 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %157, i32 0, i32 1
  store i32 %156, i32* %158, align 4
  %159 = getelementptr inbounds %struct.oct_intrmod_cfg, %struct.oct_intrmod_cfg* %9, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = load %struct.ethtool_coalesce*, %struct.ethtool_coalesce** %5, align 8
  %162 = getelementptr inbounds %struct.ethtool_coalesce, %struct.ethtool_coalesce* %161, i32 0, i32 0
  store i32 %160, i32* %162, align 8
  br label %163

163:                                              ; preds = %150, %146, %142
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %92, %19
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.lio* @GET_LIO(%struct.net_device*) #1

declare dso_local i64 @octnet_get_intrmod_cfg(%struct.lio*, %struct.oct_intrmod_cfg*) #1

declare dso_local i32 @CFG_GET_OQ_INTR_TIME(i32) #1

declare dso_local i32 @CFG_GET_OQ_INTR_PKT(i32) #1

declare dso_local i32 @netif_info(%struct.lio*, i32, i32, i8*) #1

declare dso_local i64 @OCTEON_CN23XX_PF(%struct.octeon_device*) #1

declare dso_local i64 @OCTEON_CN23XX_VF(%struct.octeon_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
