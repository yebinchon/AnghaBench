; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_get_acl_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_pf_get_acl_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { %struct.qlcnic_vf_info* }
%struct.qlcnic_vf_info = type { %struct.qlcnic_adapter*, %struct.qlcnic_vport* }
%struct.qlcnic_adapter = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.qlcnic_sriov* }
%struct.qlcnic_sriov = type { i32 }
%struct.qlcnic_vport = type { i32, i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_pf_get_acl_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_pf_get_acl_cmd(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_bc_trans*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  %6 = alloca %struct.qlcnic_vf_info*, align 8
  %7 = alloca %struct.qlcnic_vport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qlcnic_adapter*, align 8
  %10 = alloca %struct.qlcnic_sriov*, align 8
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %11 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %12 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %11, i32 0, i32 0
  %13 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %12, align 8
  store %struct.qlcnic_vf_info* %13, %struct.qlcnic_vf_info** %6, align 8
  %14 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %15 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %14, i32 0, i32 1
  %16 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %15, align 8
  store %struct.qlcnic_vport* %16, %struct.qlcnic_vport** %7, align 8
  %17 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %7, align 8
  %18 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %6, align 8
  %21 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %20, i32 0, i32 0
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %21, align 8
  store %struct.qlcnic_adapter* %22, %struct.qlcnic_adapter** %9, align 8
  %23 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %24 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %26, align 8
  store %struct.qlcnic_sriov* %27, %struct.qlcnic_sriov** %10, align 8
  %28 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  %34 = or i32 %33, 33554432
  store i32 %34, i32* %32, align 4
  %35 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %9, align 8
  %36 = call i64 @qlcnic_84xx_check(%struct.qlcnic_adapter* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %2
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 128
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %75

42:                                               ; preds = %38, %2
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %74 [
    i32 129, label %44
    i32 128, label %61
  ]

44:                                               ; preds = %42
  %45 = load i32, i32* %8, align 4
  %46 = or i32 %45, 256
  %47 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %48 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 %46, i32* %51, align 4
  %52 = load %struct.qlcnic_sriov*, %struct.qlcnic_sriov** %10, align 8
  %53 = getelementptr inbounds %struct.qlcnic_sriov, %struct.qlcnic_sriov* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = shl i32 %54, 16
  %56 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %57 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32 %55, i32* %60, align 4
  br label %74

61:                                               ; preds = %42
  %62 = load i32, i32* %8, align 4
  %63 = or i32 %62, 256
  %64 = load %struct.qlcnic_vport*, %struct.qlcnic_vport** %7, align 8
  %65 = getelementptr inbounds %struct.qlcnic_vport, %struct.qlcnic_vport* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 16
  %68 = or i32 %63, %67
  %69 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %70 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32*, i32** %71, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 %68, i32* %73, align 4
  br label %74

74:                                               ; preds = %42, %61, %44
  store i32 0, i32* %3, align 4
  br label %75

75:                                               ; preds = %74, %41
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i64 @qlcnic_84xx_check(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
