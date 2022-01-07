; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_set_vport_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_set_vport_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@QLCNIC_CMD_SET_NIC_INFO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Failed to set vport info, err=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.qlcnic_info*, i32)* @qlcnic_sriov_pf_set_vport_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_set_vport_info(%struct.qlcnic_adapter* %0, %struct.qlcnic_info* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca %struct.qlcnic_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.qlcnic_cmd_args, align 8
  %9 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store %struct.qlcnic_info* %1, %struct.qlcnic_info** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %11 = load i32, i32* @QLCNIC_CMD_SET_NIC_INFO, align 4
  %12 = call i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %8, %struct.qlcnic_adapter* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %3
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %4, align 4
  br label %145

17:                                               ; preds = %3
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 16
  %20 = or i32 %19, 1
  %21 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %26 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 2
  store i32 %27, i32* %31, align 4
  %32 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %33 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 16
  %36 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %35
  store i32 %41, i32* %39, align 4
  %42 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %43 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %46 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = shl i32 %47, 16
  %49 = or i32 %44, %48
  %50 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %49, i32* %53, align 4
  %54 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %55 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 4
  store i32 %56, i32* %60, align 4
  %61 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %62 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %61, i32 0, i32 5
  %63 = load i32, i32* %62, align 4
  %64 = shl i32 %63, 16
  %65 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 4
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, %64
  store i32 %70, i32* %68, align 4
  %71 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %72 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %71, i32 0, i32 6
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %75 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = or i32 %73, %77
  %79 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 5
  store i32 %78, i32* %82, align 4
  %83 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %84 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %83, i32 0, i32 8
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %87 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %86, i32 0, i32 9
  %88 = load i32, i32* %87, align 4
  %89 = shl i32 %88, 16
  %90 = or i32 %85, %89
  %91 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 6
  store i32 %90, i32* %94, align 4
  %95 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %96 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %95, i32 0, i32 10
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %99 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %98, i32 0, i32 11
  %100 = load i32, i32* %99, align 4
  %101 = shl i32 %100, 16
  %102 = or i32 %97, %101
  %103 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  store i32 %102, i32* %106, align 4
  %107 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %108 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %107, i32 0, i32 12
  %109 = load i32, i32* %108, align 4
  %110 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %110, i32 0, i32 0
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 8
  store i32 %109, i32* %113, align 4
  %114 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %115 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %114, i32 0, i32 13
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %116, 16
  %118 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 8
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %117
  store i32 %123, i32* %121, align 4
  %124 = load %struct.qlcnic_info*, %struct.qlcnic_info** %6, align 8
  %125 = getelementptr inbounds %struct.qlcnic_info, %struct.qlcnic_info* %124, i32 0, i32 14
  %126 = load i32, i32* %125, align 4
  %127 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %8, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 9
  store i32 %126, i32* %130, align 4
  %131 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %132 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %131, %struct.qlcnic_cmd_args* %8)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %17
  %136 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %137 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %136, i32 0, i32 0
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %9, align 4
  %141 = call i32 @dev_err(i32* %139, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %135, %17
  %143 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %8)
  %144 = load i32, i32* %9, align 4
  store i32 %144, i32* %4, align 4
  br label %145

145:                                              ; preds = %142, %14
  %146 = load i32, i32* %4, align 4
  ret i32 %146
}

declare dso_local i64 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
