; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_send_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_common.c_ice_aq_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ice_hw = type { i32 }
%struct.ice_aq_desc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ice_aqc_req_res }
%struct.ice_aqc_req_res = type { i32 }
%struct.ice_sq_cd = type { i32 }

@ICE_AQC_RES_ID_GLBL_LOCK = common dso_local global i32 0, align 4
@ice_global_cfg_lock_sw = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ice_aq_send_cmd(%struct.ice_hw* %0, %struct.ice_aq_desc* %1, i8* %2, i32 %3, %struct.ice_sq_cd* %4) #0 {
  %6 = alloca %struct.ice_hw*, align 8
  %7 = alloca %struct.ice_aq_desc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ice_sq_cd*, align 8
  %11 = alloca %struct.ice_aqc_req_res*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ice_hw* %0, %struct.ice_hw** %6, align 8
  store %struct.ice_aq_desc* %1, %struct.ice_aq_desc** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store %struct.ice_sq_cd* %4, %struct.ice_sq_cd** %10, align 8
  %14 = load %struct.ice_aq_desc*, %struct.ice_aq_desc** %7, align 8
  %15 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.ice_aqc_req_res* %16, %struct.ice_aqc_req_res** %11, align 8
  store i32 0, i32* %12, align 4
  %17 = load %struct.ice_aq_desc*, %struct.ice_aq_desc** %7, align 8
  %18 = getelementptr inbounds %struct.ice_aq_desc, %struct.ice_aq_desc* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  switch i32 %20, label %31 [
    i32 131, label %21
    i32 130, label %21
    i32 129, label %21
    i32 128, label %22
  ]

21:                                               ; preds = %5, %5, %5
  br label %33

22:                                               ; preds = %5
  %23 = load %struct.ice_aqc_req_res*, %struct.ice_aqc_req_res** %11, align 8
  %24 = getelementptr inbounds %struct.ice_aqc_req_res, %struct.ice_aqc_req_res* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = load i32, i32* @ICE_AQC_RES_ID_GLBL_LOCK, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %22
  br label %33

30:                                               ; preds = %22
  br label %31

31:                                               ; preds = %5, %30
  %32 = call i32 @mutex_lock(i32* @ice_global_cfg_lock_sw)
  store i32 1, i32* %12, align 4
  br label %33

33:                                               ; preds = %31, %29, %21
  %34 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %35 = load %struct.ice_hw*, %struct.ice_hw** %6, align 8
  %36 = getelementptr inbounds %struct.ice_hw, %struct.ice_hw* %35, i32 0, i32 0
  %37 = load %struct.ice_aq_desc*, %struct.ice_aq_desc** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load i32, i32* %9, align 4
  %40 = load %struct.ice_sq_cd*, %struct.ice_sq_cd** %10, align 8
  %41 = call i32 @ice_sq_send_cmd(%struct.ice_hw* %34, i32* %36, %struct.ice_aq_desc* %37, i8* %38, i32 %39, %struct.ice_sq_cd* %40)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = call i32 @mutex_unlock(i32* @ice_global_cfg_lock_sw)
  br label %46

46:                                               ; preds = %44, %33
  %47 = load i32, i32* %13, align 4
  ret i32 %47
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ice_sq_send_cmd(%struct.ice_hw*, i32*, %struct.ice_aq_desc*, i8*, i32, %struct.ice_sq_cd*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
