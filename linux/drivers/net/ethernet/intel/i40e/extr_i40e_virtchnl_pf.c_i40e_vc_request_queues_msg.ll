; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_request_queues_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_vc_request_queues_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i64, i64, i32, i32, %struct.i40e_pf* }
%struct.i40e_pf = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.virtchnl_vf_res_request = type { i64 }

@I40E_VF_STATE_ACTIVE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@I40E_MAX_VF_QUEUES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"VF %d tried to request more than %d queues.\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"VF %d requested %d more queues, but only %d left.\0A\00", align 1
@VIRTCHNL_OP_REQUEST_QUEUES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*, i64*)* @i40e_vc_request_queues_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_vc_request_queues_msg(%struct.i40e_vf* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i40e_vf*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.virtchnl_vf_res_request*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.i40e_pf*, align 8
  store %struct.i40e_vf* %0, %struct.i40e_vf** %4, align 8
  store i64* %1, i64** %5, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = bitcast i64* %10 to %struct.virtchnl_vf_res_request*
  store %struct.virtchnl_vf_res_request* %11, %struct.virtchnl_vf_res_request** %6, align 8
  %12 = load %struct.virtchnl_vf_res_request*, %struct.virtchnl_vf_res_request** %6, align 8
  %13 = getelementptr inbounds %struct.virtchnl_vf_res_request, %struct.virtchnl_vf_res_request* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %7, align 8
  %15 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %16 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %8, align 8
  %18 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %19 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %18, i32 0, i32 4
  %20 = load %struct.i40e_pf*, %struct.i40e_pf** %19, align 8
  store %struct.i40e_pf* %20, %struct.i40e_pf** %9, align 8
  %21 = load i32, i32* @I40E_VF_STATE_ACTIVE, align 4
  %22 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %23 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %22, i32 0, i32 3
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %91

29:                                               ; preds = %2
  %30 = load i64, i64* %7, align 8
  %31 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %32 = icmp sgt i64 %30, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %29
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %39 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %42 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %40, i64 %41)
  %43 = load i64, i64* @I40E_MAX_VF_QUEUES, align 8
  %44 = load %struct.virtchnl_vf_res_request*, %struct.virtchnl_vf_res_request** %6, align 8
  %45 = getelementptr inbounds %struct.virtchnl_vf_res_request, %struct.virtchnl_vf_res_request* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  br label %85

46:                                               ; preds = %29
  %47 = load i64, i64* %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = sub nsw i64 %47, %48
  %50 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %51 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp sgt i64 %49, %52
  br i1 %53, label %54, label %76

54:                                               ; preds = %46
  %55 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %56 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %55, i32 0, i32 1
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %60 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = sub nsw i64 %62, %63
  %65 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %66 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @dev_warn(i32* %58, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %61, i64 %64, i64 %67)
  %69 = load %struct.i40e_pf*, %struct.i40e_pf** %9, align 8
  %70 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %8, align 8
  %73 = add nsw i64 %71, %72
  %74 = load %struct.virtchnl_vf_res_request*, %struct.virtchnl_vf_res_request** %6, align 8
  %75 = getelementptr inbounds %struct.virtchnl_vf_res_request, %struct.virtchnl_vf_res_request* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  br label %84

76:                                               ; preds = %46
  %77 = load i64, i64* %7, align 8
  %78 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %79 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %81 = call i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf* %80)
  %82 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %83 = call i32 @i40e_reset_vf(%struct.i40e_vf* %82, i32 0)
  store i32 0, i32* %3, align 4
  br label %91

84:                                               ; preds = %54
  br label %85

85:                                               ; preds = %84, %33
  %86 = load %struct.i40e_vf*, %struct.i40e_vf** %4, align 8
  %87 = load i32, i32* @VIRTCHNL_OP_REQUEST_QUEUES, align 4
  %88 = load %struct.virtchnl_vf_res_request*, %struct.virtchnl_vf_res_request** %6, align 8
  %89 = bitcast %struct.virtchnl_vf_res_request* %88 to i64*
  %90 = call i32 @i40e_vc_send_msg_to_vf(%struct.i40e_vf* %86, i32 %87, i32 0, i64* %89, i32 8)
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %85, %76, %26
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, i64) #1

declare dso_local i32 @dev_warn(i32*, i8*, i32, i64, i64) #1

declare dso_local i32 @i40e_vc_notify_vf_reset(%struct.i40e_vf*) #1

declare dso_local i32 @i40e_reset_vf(%struct.i40e_vf*, i32) #1

declare dso_local i32 @i40e_vc_send_msg_to_vf(%struct.i40e_vf*, i32, i32, i64*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
