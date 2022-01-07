; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_init_shared_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_common.c_i40e_init_shared_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_hw = type { i32, %struct.TYPE_4__, i8*, i8*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@I40E_ERR_DEVICE_NOT_SUPPORTED = common dso_local global i32 0, align 4
@I40E_PFGEN_PORTNUM = common dso_local global i32 0, align 4
@I40E_PFGEN_PORTNUM_PORT_NUM_MASK = common dso_local global i32 0, align 4
@I40E_PFGEN_PORTNUM_PORT_NUM_SHIFT = common dso_local global i32 0, align 4
@I40E_GLPCI_CAPSUP = common dso_local global i32 0, align 4
@I40E_GLPCI_CAPSUP_ARI_EN_MASK = common dso_local global i32 0, align 4
@I40E_GLPCI_CAPSUP_ARI_EN_SHIFT = common dso_local global i32 0, align 4
@I40E_PF_FUNC_RID = common dso_local global i32 0, align 4
@I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE = common dso_local global i32 0, align 4
@I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_init_shared_code(%struct.i40e_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.i40e_hw* %0, %struct.i40e_hw** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %9 = call i32 @i40e_set_mac_type(%struct.i40e_hw* %8)
  %10 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %11 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %15 [
    i32 128, label %14
    i32 129, label %14
  ]

14:                                               ; preds = %1, %1
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @I40E_ERR_DEVICE_NOT_SUPPORTED, align 4
  store i32 %16, i32* %2, align 4
  br label %77

17:                                               ; preds = %14
  %18 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %19 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %18, i32 0, i32 4
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 1, i32* %20, align 8
  %21 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %22 = load i32, i32* @I40E_PFGEN_PORTNUM, align 4
  %23 = call i32 @rd32(%struct.i40e_hw* %21, i32 %22)
  %24 = load i32, i32* @I40E_PFGEN_PORTNUM_PORT_NUM_MASK, align 4
  %25 = and i32 %23, %24
  %26 = load i32, i32* @I40E_PFGEN_PORTNUM_PORT_NUM_SHIFT, align 4
  %27 = ashr i32 %25, %26
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %32 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %31, i32 0, i32 3
  store i8* %30, i8** %32, align 8
  %33 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %34 = load i32, i32* @I40E_GLPCI_CAPSUP, align 4
  %35 = call i32 @rd32(%struct.i40e_hw* %33, i32 %34)
  %36 = load i32, i32* @I40E_GLPCI_CAPSUP_ARI_EN_MASK, align 4
  %37 = and i32 %35, %36
  %38 = load i32, i32* @I40E_GLPCI_CAPSUP_ARI_EN_SHIFT, align 4
  %39 = ashr i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %41 = load i32, i32* @I40E_PF_FUNC_RID, align 4
  %42 = call i32 @rd32(%struct.i40e_hw* %40, i32 %41)
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %52

45:                                               ; preds = %17
  %46 = load i32, i32* %7, align 4
  %47 = and i32 %46, 255
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %51 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %59

52:                                               ; preds = %17
  %53 = load i32, i32* %7, align 4
  %54 = and i32 %53, 7
  %55 = sext i32 %54 to i64
  %56 = inttoptr i64 %55 to i8*
  %57 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %58 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %57, i32 0, i32 2
  store i8* %56, i8** %58, align 8
  br label %59

59:                                               ; preds = %52, %45
  %60 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %61 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp eq i32 %63, 129
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load i32, i32* @I40E_HW_FLAG_AQ_SRCTL_ACCESS_ENABLE, align 4
  %67 = load i32, i32* @I40E_HW_FLAG_NVM_READ_REQUIRES_LOCK, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %70 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %65, %59
  %74 = load %struct.i40e_hw*, %struct.i40e_hw** %3, align 8
  %75 = call i32 @i40e_init_nvm(%struct.i40e_hw* %74)
  store i32 %75, i32* %4, align 4
  %76 = load i32, i32* %4, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %73, %15
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @i40e_set_mac_type(%struct.i40e_hw*) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @i40e_init_nvm(%struct.i40e_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
