; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_map_non_rx_causes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_map_non_rx_causes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_causes_list = type { i32, i32, i32 }
%struct.iwl_trans = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.iwl_trans_pcie = type { i32 }

@MSIX_NON_AUTO_CLEAR_CAUSE = common dso_local global i32 0, align 4
@IWL_DEVICE_FAMILY_22560 = common dso_local global i64 0, align 8
@causes_list = common dso_local global %struct.iwl_causes_list* null, align 8
@causes_list_v2 = common dso_local global %struct.iwl_causes_list* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_trans*)* @iwl_pcie_map_non_rx_causes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_pcie_map_non_rx_causes(%struct.iwl_trans* %0) #0 {
  %2 = alloca %struct.iwl_trans*, align 8
  %3 = alloca %struct.iwl_trans_pcie*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_causes_list*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %2, align 8
  %8 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %9 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %8)
  store %struct.iwl_trans_pcie* %9, %struct.iwl_trans_pcie** %3, align 8
  %10 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %3, align 8
  %11 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @MSIX_NON_AUTO_CLEAR_CAUSE, align 4
  %14 = or i32 %12, %13
  store i32 %14, i32* %4, align 4
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %16 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %1
  %23 = load %struct.iwl_causes_list*, %struct.iwl_causes_list** @causes_list, align 8
  %24 = call i32 @ARRAY_SIZE(%struct.iwl_causes_list* %23)
  br label %28

25:                                               ; preds = %1
  %26 = load %struct.iwl_causes_list*, %struct.iwl_causes_list** @causes_list_v2, align 8
  %27 = call i32 @ARRAY_SIZE(%struct.iwl_causes_list* %26)
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  store i32 %29, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %30

30:                                               ; preds = %72, %28
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %75

34:                                               ; preds = %30
  %35 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %36 = getelementptr inbounds %struct.iwl_trans, %struct.iwl_trans* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @IWL_DEVICE_FAMILY_22560, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load %struct.iwl_causes_list*, %struct.iwl_causes_list** @causes_list, align 8
  br label %46

44:                                               ; preds = %34
  %45 = load %struct.iwl_causes_list*, %struct.iwl_causes_list** @causes_list_v2, align 8
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi %struct.iwl_causes_list* [ %43, %42 ], [ %45, %44 ]
  store %struct.iwl_causes_list* %47, %struct.iwl_causes_list** %7, align 8
  %48 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %49 = load %struct.iwl_causes_list*, %struct.iwl_causes_list** %7, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.iwl_causes_list, %struct.iwl_causes_list* %49, i64 %51
  %53 = getelementptr inbounds %struct.iwl_causes_list, %struct.iwl_causes_list* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @CSR_MSIX_IVAR(i32 %54)
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @iwl_write8(%struct.iwl_trans* %48, i32 %55, i32 %56)
  %58 = load %struct.iwl_trans*, %struct.iwl_trans** %2, align 8
  %59 = load %struct.iwl_causes_list*, %struct.iwl_causes_list** %7, align 8
  %60 = load i32, i32* %5, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.iwl_causes_list, %struct.iwl_causes_list* %59, i64 %61
  %63 = getelementptr inbounds %struct.iwl_causes_list, %struct.iwl_causes_list* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.iwl_causes_list*, %struct.iwl_causes_list** %7, align 8
  %66 = load i32, i32* %5, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.iwl_causes_list, %struct.iwl_causes_list* %65, i64 %67
  %69 = getelementptr inbounds %struct.iwl_causes_list, %struct.iwl_causes_list* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @iwl_clear_bit(%struct.iwl_trans* %58, i32 %64, i32 %70)
  br label %72

72:                                               ; preds = %46
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %30

75:                                               ; preds = %30
  ret void
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.iwl_causes_list*) #1

declare dso_local i32 @iwl_write8(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @CSR_MSIX_IVAR(i32) #1

declare dso_local i32 @iwl_clear_bit(%struct.iwl_trans*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
