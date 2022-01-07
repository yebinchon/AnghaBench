; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-io.c_iwl_finish_nic_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/extr_iwl-io.c_iwl_finish_nic_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_cfg_trans_params = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@CSR_GP_CNTRL = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_8000 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"Failed to wake NIC\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_finish_nic_init(%struct.iwl_trans* %0, %struct.iwl_cfg_trans_params* %1) #0 {
  %3 = alloca %struct.iwl_trans*, align 8
  %4 = alloca %struct.iwl_cfg_trans_params*, align 8
  %5 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %3, align 8
  store %struct.iwl_cfg_trans_params* %1, %struct.iwl_cfg_trans_params** %4, align 8
  %6 = load %struct.iwl_cfg_trans_params*, %struct.iwl_cfg_trans_params** %4, align 8
  %7 = getelementptr inbounds %struct.iwl_cfg_trans_params, %struct.iwl_cfg_trans_params* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %2
  %11 = call i32 @mdelay(i32 2)
  br label %12

12:                                               ; preds = %10, %2
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %14 = load i32, i32* @CSR_GP_CNTRL, align 4
  %15 = load %struct.iwl_cfg_trans_params*, %struct.iwl_cfg_trans_params** %4, align 8
  %16 = getelementptr inbounds %struct.iwl_cfg_trans_params, %struct.iwl_cfg_trans_params* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @BIT(i32 %19)
  %21 = call i32 @iwl_set_bit(%struct.iwl_trans* %13, i32 %14, i32 %20)
  %22 = load %struct.iwl_cfg_trans_params*, %struct.iwl_cfg_trans_params** %4, align 8
  %23 = getelementptr inbounds %struct.iwl_cfg_trans_params, %struct.iwl_cfg_trans_params* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IWL_DEVICE_FAMILY_8000, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %12
  %28 = call i32 @udelay(i32 2)
  br label %29

29:                                               ; preds = %27, %12
  %30 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %31 = load i32, i32* @CSR_GP_CNTRL, align 4
  %32 = load %struct.iwl_cfg_trans_params*, %struct.iwl_cfg_trans_params** %4, align 8
  %33 = getelementptr inbounds %struct.iwl_cfg_trans_params, %struct.iwl_cfg_trans_params* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @BIT(i32 %36)
  %38 = load %struct.iwl_cfg_trans_params*, %struct.iwl_cfg_trans_params** %4, align 8
  %39 = getelementptr inbounds %struct.iwl_cfg_trans_params, %struct.iwl_cfg_trans_params* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @BIT(i32 %42)
  %44 = call i32 @iwl_poll_bit(%struct.iwl_trans* %30, i32 %31, i32 %37, i32 %43, i32 25000)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %29
  %48 = load %struct.iwl_trans*, %struct.iwl_trans** %3, align 8
  %49 = call i32 @IWL_DEBUG_INFO(%struct.iwl_trans* %48, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %50

50:                                               ; preds = %47, %29
  %51 = load %struct.iwl_cfg_trans_params*, %struct.iwl_cfg_trans_params** %4, align 8
  %52 = getelementptr inbounds %struct.iwl_cfg_trans_params, %struct.iwl_cfg_trans_params* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = call i32 @udelay(i32 200)
  br label %57

57:                                               ; preds = %55, %50
  %58 = load i32, i32* %5, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %57
  %61 = load i32, i32* %5, align 4
  br label %63

62:                                               ; preds = %57
  br label %63

63:                                               ; preds = %62, %60
  %64 = phi i32 [ %61, %60 ], [ 0, %62 ]
  ret i32 %64
}

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @iwl_set_bit(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @iwl_poll_bit(%struct.iwl_trans*, i32, i32, i32, i32) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_trans*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
