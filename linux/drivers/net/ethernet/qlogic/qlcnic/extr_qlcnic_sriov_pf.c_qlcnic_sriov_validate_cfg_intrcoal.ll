; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_intrcoal.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_cfg_intrcoal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_nic_intr_coalesce }
%struct.qlcnic_nic_intr_coalesce = type { i32, i32, i32, i32 }
%struct.qlcnic_vf_info = type { i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@QLC_INTR_COAL_TYPE_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Invalid coalescing type 0x%x received\0A\00", align 1
@.str.1 = private unnamed_addr constant [105 x i8] c"Expected: rx_ctx_id 0x%x rx_packets 0x%x rx_time_us 0x%x tx_ctx_id 0x%x tx_packets 0x%x tx_time_us 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Received: ctx_id 0x%x packets 0x%x time_us 0x%x type 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_validate_cfg_intrcoal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_validate_cfg_intrcoal(%struct.qlcnic_adapter* %0, %struct.qlcnic_vf_info* %1, %struct.qlcnic_cmd_args* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_cmd_args*, align 8
  %8 = alloca %struct.qlcnic_nic_intr_coalesce*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %6, align 8
  store %struct.qlcnic_cmd_args* %2, %struct.qlcnic_cmd_args** %7, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  store %struct.qlcnic_nic_intr_coalesce* %17, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %12, align 4
  %20 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %21 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @QLC_INTR_COAL_TYPE_MASK, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %13, align 4
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  %33 = load i32, i32* %32, align 4
  %34 = ashr i32 %33, 16
  store i32 %34, i32* %9, align 4
  %35 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %36 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 65535
  store i32 %41, i32* %10, align 4
  %42 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %7, align 8
  %43 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  %47 = load i32, i32* %46, align 4
  %48 = ashr i32 %47, 16
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %13, align 4
  switch i32 %49, label %90 [
    i32 129, label %50
    i32 128, label %70
  ]

50:                                               ; preds = %3
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %53 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %51, %54
  br i1 %55, label %68, label %56

56:                                               ; preds = %50
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %59 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp sgt i32 %57, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %65 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp slt i32 %63, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %62, %56, %50
  br label %98

69:                                               ; preds = %62
  br label %97

70:                                               ; preds = %3
  %71 = load i32, i32* %9, align 4
  %72 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %73 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %88, label %76

76:                                               ; preds = %70
  %77 = load i32, i32* %10, align 4
  %78 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %79 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = icmp sgt i32 %77, %80
  br i1 %81, label %88, label %82

82:                                               ; preds = %76
  %83 = load i32, i32* %11, align 4
  %84 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %85 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %89

88:                                               ; preds = %82, %76, %70
  br label %98

89:                                               ; preds = %82
  br label %97

90:                                               ; preds = %3
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* %13, align 4
  %95 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %93, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %94)
  %96 = load i32, i32* %12, align 4
  store i32 %96, i32* %4, align 4
  br label %130

97:                                               ; preds = %89, %69
  store i32 0, i32* %4, align 4
  br label %130

98:                                               ; preds = %88, %68
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %100 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %103 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %106 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %109 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %112 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %115 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.qlcnic_nic_intr_coalesce*, %struct.qlcnic_nic_intr_coalesce** %8, align 8
  %118 = getelementptr inbounds %struct.qlcnic_nic_intr_coalesce, %struct.qlcnic_nic_intr_coalesce* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 4
  %120 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %101, i8* getelementptr inbounds ([105 x i8], [105 x i8]* @.str.1, i64 0, i64 0), i32 %104, i32 %107, i32 %110, i32 %113, i32 %116, i32 %119)
  %121 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %122 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %9, align 4
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %13, align 4
  %128 = call i32 (i32, i8*, i32, ...) @netdev_err(i32 %123, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %124, i32 %125, i32 %126, i32 %127)
  %129 = load i32, i32* %12, align 4
  store i32 %129, i32* %4, align 4
  br label %130

130:                                              ; preds = %98, %97, %90
  %131 = load i32, i32* %4, align 4
  ret i32 %131
}

declare dso_local i32 @netdev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
