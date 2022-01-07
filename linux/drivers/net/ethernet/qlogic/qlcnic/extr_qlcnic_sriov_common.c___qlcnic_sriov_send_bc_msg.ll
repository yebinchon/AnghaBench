; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c___qlcnic_sriov_send_bc_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_sriov_common.c___qlcnic_sriov_send_bc_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_bc_trans = type { i32 }
%struct.qlcnic_vf_info = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@QLC_BC_VF_FLR = common dso_local global i32 0, align 4
@QLC_BC_VF_CHANNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_bc_trans*, %struct.qlcnic_vf_info*, i32)* @__qlcnic_sriov_send_bc_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__qlcnic_sriov_send_bc_msg(%struct.qlcnic_bc_trans* %0, %struct.qlcnic_vf_info* %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_bc_trans*, align 8
  %5 = alloca %struct.qlcnic_vf_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.qlcnic_bc_trans* %0, %struct.qlcnic_bc_trans** %4, align 8
  store %struct.qlcnic_vf_info* %1, %struct.qlcnic_vf_info** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %9 = load i32, i32* @EIO, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %63, %3
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %64

14:                                               ; preds = %11
  %15 = load i32, i32* @QLC_BC_VF_FLR, align 4
  %16 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %17 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %14
  %21 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %22 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20, %14
  %28 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %29 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %28, i32 0, i32 0
  store i32 132, i32* %29, align 4
  br label %30

30:                                               ; preds = %27, %20
  %31 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %32 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %60 [
    i32 130, label %34
    i32 129, label %45
    i32 128, label %49
    i32 131, label %52
    i32 132, label %53
  ]

34:                                               ; preds = %30
  %35 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %36 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %35, i32 0, i32 0
  store i32 129, i32* %36, align 4
  %37 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = call i32 @qlcnic_sriov_issue_bc_post(%struct.qlcnic_bc_trans* %37, i32 %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %43 = getelementptr inbounds %struct.qlcnic_bc_trans, %struct.qlcnic_bc_trans* %42, i32 0, i32 0
  store i32 132, i32* %43, align 4
  br label %44

44:                                               ; preds = %41, %34
  br label %63

45:                                               ; preds = %30
  %46 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @qlcnic_sriov_wait_for_channel_free(%struct.qlcnic_bc_trans* %46, i32 %47)
  br label %63

49:                                               ; preds = %30
  %50 = load %struct.qlcnic_bc_trans*, %struct.qlcnic_bc_trans** %4, align 8
  %51 = call i32 @qlcnic_sriov_wait_for_resp(%struct.qlcnic_bc_trans* %50)
  br label %63

52:                                               ; preds = %30
  store i32 0, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %63

53:                                               ; preds = %30
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  store i32 0, i32* %7, align 4
  %56 = load i32, i32* @QLC_BC_VF_CHANNEL, align 4
  %57 = load %struct.qlcnic_vf_info*, %struct.qlcnic_vf_info** %5, align 8
  %58 = getelementptr inbounds %struct.qlcnic_vf_info, %struct.qlcnic_vf_info* %57, i32 0, i32 0
  %59 = call i32 @clear_bit(i32 %56, i32* %58)
  br label %63

60:                                               ; preds = %30
  %61 = load i32, i32* @EIO, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %63

63:                                               ; preds = %60, %53, %52, %49, %45, %44
  br label %11

64:                                               ; preds = %11
  %65 = load i32, i32* %8, align 4
  ret i32 %65
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @qlcnic_sriov_issue_bc_post(%struct.qlcnic_bc_trans*, i32) #1

declare dso_local i32 @qlcnic_sriov_wait_for_channel_free(%struct.qlcnic_bc_trans*, i32) #1

declare dso_local i32 @qlcnic_sriov_wait_for_resp(%struct.qlcnic_bc_trans*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
