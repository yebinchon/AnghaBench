; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_pci_err_reset_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/ice/extr_ice_main.c_ice_pci_err_reset_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.ice_pf = type { i32 }

@__ICE_SUSPENDED = common dso_local global i32 0, align 4
@__ICE_PREPARED_FOR_RESET = common dso_local global i32 0, align 4
@__ICE_PFR_REQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*)* @ice_pci_err_reset_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ice_pci_err_reset_prepare(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci_dev*, align 8
  %3 = alloca %struct.ice_pf*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %2, align 8
  %4 = load %struct.pci_dev*, %struct.pci_dev** %2, align 8
  %5 = call %struct.ice_pf* @pci_get_drvdata(%struct.pci_dev* %4)
  store %struct.ice_pf* %5, %struct.ice_pf** %3, align 8
  %6 = load i32, i32* @__ICE_SUSPENDED, align 4
  %7 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %8 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @test_bit(i32 %6, i32 %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %30, label %12

12:                                               ; preds = %1
  %13 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %14 = call i32 @ice_service_task_stop(%struct.ice_pf* %13)
  %15 = load i32, i32* @__ICE_PREPARED_FOR_RESET, align 4
  %16 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %17 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @test_bit(i32 %15, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %12
  %22 = load i32, i32* @__ICE_PFR_REQ, align 4
  %23 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %24 = getelementptr inbounds %struct.ice_pf, %struct.ice_pf* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @set_bit(i32 %22, i32 %25)
  %27 = load %struct.ice_pf*, %struct.ice_pf** %3, align 8
  %28 = call i32 @ice_prepare_for_reset(%struct.ice_pf* %27)
  br label %29

29:                                               ; preds = %21, %12
  br label %30

30:                                               ; preds = %29, %1
  ret void
}

declare dso_local %struct.ice_pf* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @ice_service_task_stop(%struct.ice_pf*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @ice_prepare_for_reset(%struct.ice_pf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
