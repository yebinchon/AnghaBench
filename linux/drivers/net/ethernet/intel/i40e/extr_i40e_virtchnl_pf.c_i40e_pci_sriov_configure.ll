; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_pci_sriov_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_pci_sriov_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.i40e_pf = type { i32, i32, i32 }

@__I40E_VIRTCHNL_OP_PENDING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to configure VFs, other operation is pending.\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@I40E_FLAG_VEB_MODE_ENABLED = common dso_local global i32 0, align 4
@I40E_PF_RESET_FLAG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Unable to free VFs because some are assigned to VMs.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @i40e_pci_sriov_configure(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.i40e_pf*, align 8
  %7 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %9 = call %struct.i40e_pf* @pci_get_drvdata(%struct.pci_dev* %8)
  store %struct.i40e_pf* %9, %struct.i40e_pf** %6, align 8
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %12 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @test_and_set_bit(i32 %10, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %18 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %17, i32 0, i32 0
  %19 = call i32 @dev_warn(i32* %18, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EAGAIN, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %77

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %22
  %26 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %27 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @I40E_FLAG_VEB_MODE_ENABLED, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* @I40E_FLAG_VEB_MODE_ENABLED, align 4
  %34 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %35 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 4
  %38 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %39 = load i32, i32* @I40E_PF_RESET_FLAG, align 4
  %40 = call i32 @i40e_do_reset_safe(%struct.i40e_pf* %38, i32 %39)
  br label %41

41:                                               ; preds = %32, %25
  %42 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @i40e_pci_sriov_enable(%struct.pci_dev* %42, i32 %43)
  store i32 %44, i32* %7, align 4
  br label %70

45:                                               ; preds = %22
  %46 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %47 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @pci_vfs_assigned(i32 %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %63, label %51

51:                                               ; preds = %45
  %52 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %53 = call i32 @i40e_free_vfs(%struct.i40e_pf* %52)
  %54 = load i32, i32* @I40E_FLAG_VEB_MODE_ENABLED, align 4
  %55 = xor i32 %54, -1
  %56 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %57 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, %55
  store i32 %59, i32* %57, align 4
  %60 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %61 = load i32, i32* @I40E_PF_RESET_FLAG, align 4
  %62 = call i32 @i40e_do_reset_safe(%struct.i40e_pf* %60, i32 %61)
  br label %69

63:                                               ; preds = %45
  %64 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %65 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %64, i32 0, i32 0
  %66 = call i32 @dev_warn(i32* %65, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %70

69:                                               ; preds = %51
  br label %70

70:                                               ; preds = %69, %63, %41
  %71 = load i32, i32* @__I40E_VIRTCHNL_OP_PENDING, align 4
  %72 = load %struct.i40e_pf*, %struct.i40e_pf** %6, align 8
  %73 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @clear_bit(i32 %71, i32 %74)
  %76 = load i32, i32* %7, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %16
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.i40e_pf* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i64 @test_and_set_bit(i32, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @i40e_do_reset_safe(%struct.i40e_pf*, i32) #1

declare dso_local i32 @i40e_pci_sriov_enable(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_vfs_assigned(i32) #1

declare dso_local i32 @i40e_free_vfs(%struct.i40e_pf*) #1

declare dso_local i32 @clear_bit(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
