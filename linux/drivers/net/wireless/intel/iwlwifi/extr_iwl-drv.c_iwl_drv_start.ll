; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_drv_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-drv.c_iwl_drv_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_drv = type { %struct.iwl_trans*, i8*, i32, i32, i32 }
%struct.iwl_trans = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Couldn't request the fw\0A\00", align 1
@iwl_dbgfs_root = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.iwl_drv* @iwl_drv_start(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_drv*, align 8
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_drv*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.iwl_drv* @kzalloc(i32 32, i32 %6)
  store %struct.iwl_drv* %7, %struct.iwl_drv** %4, align 8
  %8 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %9 = icmp ne %struct.iwl_drv* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %5, align 4
  br label %49

13:                                               ; preds = %1
  %14 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %15 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %15, i32 0, i32 0
  store %struct.iwl_trans* %14, %struct.iwl_trans** %16, align 8
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %18 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %21 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 8
  %22 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %22, i32 0, i32 3
  %24 = call i32 @init_completion(i32* %23)
  %25 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %25, i32 0, i32 2
  %27 = call i32 @INIT_LIST_HEAD(i32* %26)
  %28 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %29 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %28, i32 0, i32 0
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %29, align 8
  %31 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %34 = getelementptr inbounds %struct.iwl_drv, %struct.iwl_drv* %33, i32 0, i32 0
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %34, align 8
  %36 = call i32 @iwl_dbg_tlv_load_bin(i32 %32, %struct.iwl_trans* %35)
  %37 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %38 = call i32 @iwl_request_firmware(%struct.iwl_drv* %37, i32 1)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %13
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %43 = call i32 @IWL_ERR(%struct.iwl_trans* %42, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %46

44:                                               ; preds = %13
  %45 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  store %struct.iwl_drv* %45, %struct.iwl_drv** %2, align 8
  br label %52

46:                                               ; preds = %41
  %47 = load %struct.iwl_drv*, %struct.iwl_drv** %4, align 8
  %48 = call i32 @kfree(%struct.iwl_drv* %47)
  br label %49

49:                                               ; preds = %46, %10
  %50 = load i32, i32* %5, align 4
  %51 = call %struct.iwl_drv* @ERR_PTR(i32 %50)
  store %struct.iwl_drv* %51, %struct.iwl_drv** %2, align 8
  br label %52

52:                                               ; preds = %49, %44
  %53 = load %struct.iwl_drv*, %struct.iwl_drv** %2, align 8
  ret %struct.iwl_drv* %53
}

declare dso_local %struct.iwl_drv* @kzalloc(i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @iwl_dbg_tlv_load_bin(i32, %struct.iwl_trans*) #1

declare dso_local i32 @iwl_request_firmware(%struct.iwl_drv*, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @kfree(%struct.iwl_drv*) #1

declare dso_local %struct.iwl_drv* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
