; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_quiesce_vf_pci.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/i40e/extr_i40e_virtchnl_pf.c_i40e_quiesce_vf_pci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i40e_vf = type { i32, %struct.i40e_pf* }
%struct.i40e_pf = type { %struct.i40e_hw }
%struct.i40e_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@I40E_PF_PCI_CIAA = common dso_local global i32 0, align 4
@VF_DEVICE_STATUS = common dso_local global i32 0, align 4
@I40E_PF_PCI_CIAA_VF_NUM_SHIFT = common dso_local global i32 0, align 4
@I40E_PF_PCI_CIAD = common dso_local global i32 0, align 4
@VF_TRANS_PENDING_MASK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i40e_vf*)* @i40e_quiesce_vf_pci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i40e_quiesce_vf_pci(%struct.i40e_vf* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i40e_vf*, align 8
  %4 = alloca %struct.i40e_pf*, align 8
  %5 = alloca %struct.i40e_hw*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.i40e_vf* %0, %struct.i40e_vf** %3, align 8
  %9 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %10 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %9, i32 0, i32 1
  %11 = load %struct.i40e_pf*, %struct.i40e_pf** %10, align 8
  store %struct.i40e_pf* %11, %struct.i40e_pf** %4, align 8
  %12 = load %struct.i40e_pf*, %struct.i40e_pf** %4, align 8
  %13 = getelementptr inbounds %struct.i40e_pf, %struct.i40e_pf* %12, i32 0, i32 0
  store %struct.i40e_hw* %13, %struct.i40e_hw** %5, align 8
  %14 = load %struct.i40e_vf*, %struct.i40e_vf** %3, align 8
  %15 = getelementptr inbounds %struct.i40e_vf, %struct.i40e_vf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %18 = getelementptr inbounds %struct.i40e_hw, %struct.i40e_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %16, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %23 = load i32, i32* @I40E_PF_PCI_CIAA, align 4
  %24 = load i32, i32* @VF_DEVICE_STATUS, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @I40E_PF_PCI_CIAA_VF_NUM_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = or i32 %24, %27
  %29 = call i32 @wr32(%struct.i40e_hw* %22, i32 %23, i32 %28)
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %44, %1
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 100
  br i1 %32, label %33, label %47

33:                                               ; preds = %30
  %34 = load %struct.i40e_hw*, %struct.i40e_hw** %5, align 8
  %35 = load i32, i32* @I40E_PF_PCI_CIAD, align 4
  %36 = call i32 @rd32(%struct.i40e_hw* %34, i32 %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @VF_TRANS_PENDING_MASK, align 4
  %39 = and i32 %37, %38
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %33
  store i32 0, i32* %2, align 4
  br label %50

42:                                               ; preds = %33
  %43 = call i32 @udelay(i32 1)
  br label %44

44:                                               ; preds = %42
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %7, align 4
  br label %30

47:                                               ; preds = %30
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @wr32(%struct.i40e_hw*, i32, i32) #1

declare dso_local i32 @rd32(%struct.i40e_hw*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
