; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_get_nic_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_pf.c_qlcnic_sriov_validate_get_nic_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_vf_info = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@BIT_31 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_vf_info*, %struct.qlcnic_cmd_args*)* @qlcnic_sriov_validate_get_nic_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_sriov_validate_get_nic_info(%struct.qlcnic_vf_info* %0, %struct.qlcnic_cmd_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_vf_info*, align 8
  %5 = alloca %struct.qlcnic_cmd_args*, align 8
  store %struct.qlcnic_vf_info* %0, %struct.qlcnic_vf_info** %4, align 8
  store %struct.qlcnic_cmd_args* %1, %struct.qlcnic_cmd_args** %5, align 8
  %6 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %7 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @BIT_31, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %2
  %16 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %17 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 16
  %23 = and i32 %22, 32767
  %24 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %25 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %15
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %47

31:                                               ; preds = %15
  br label %46

32:                                               ; preds = %2
  %33 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %4, align 8
  %34 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = load %struct.qlcnic_cmd_args*, %struct.qlcnic_cmd_args** %5, align 8
  %40 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %38
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %32, %31
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %46, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
