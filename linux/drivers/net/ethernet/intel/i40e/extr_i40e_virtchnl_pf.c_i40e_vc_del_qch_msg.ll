; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_del_qch_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_del_qch_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, i32, i64, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@I40E_ERR_PARAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [60 x i8] c"Deleting Queue Channels and cloud filters for ADq on VF %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"VF %d trying to delete queue channels but ADq isn't enabled\0A\00", align 1
@I40E_SUCCESS = common dso_local global i32 0, align 4
@VIRTCHNL_OP_DISABLE_CHANNELS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i32*)* @i40e_vc_del_qch_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_del_qch_msg(%struct.i40e_vf* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %9 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %8, i32 0, i32 4
  %10 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  store %struct.i40e_pf* %10, %struct.i40e_pf** %6, align 8
  store i32 0, i32* %7, align 4
  %11 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %12 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %12, i32 0, i32 3
  %14 = call i32 @test_bit(i32 %11, i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %17, i32* %7, align 4
  br label %56

18:                                               ; preds = %2
  %19 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %20 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %18
  %24 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %25 = call i32 @i40e_del_all_cloud_filters(%struct.i40e_vf* %24)
  %26 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %27 = call i32 @i40e_del_qch(%struct.i40e_vf* %26)
  %28 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %29 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %28, i32 0, i32 0
  store i32 0, i32* %29, align 8
  %30 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %31 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %30, i32 0, i32 2
  store i64 0, i64* %31, align 8
  %32 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %33 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %32, i32 0, i32 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %37 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_info(i32* %35, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str, i64 0, i64 0), i32 %38)
  br label %50

40:                                               ; preds = %18
  %41 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %42 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %46 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @I40E_ERR_PARAM, align 4
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %40, %23
  %51 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %52 = call i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf* %51)
  %53 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %54 = call i32 @i40e_reset_vf(%struct.i40e_vf* %53, i32 0)
  %55 = load i32, i32* @I40E_SUCCESS, align 4
  store i32 %55, i32* %3, align 4
  br label %61

56:                                               ; preds = %16
  %57 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %58 = load i32, i32* @VIRTCHNL_OP_DISABLE_CHANNELS, align 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf* %57, i32 %58, i32 %59)
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %56, %50
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @i40e_del_all_cloud_filters(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_del_qch(%struct.i40e_vf*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_reset_vf(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_vc_send_resp_to_vf(%struct.i40e_vf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
