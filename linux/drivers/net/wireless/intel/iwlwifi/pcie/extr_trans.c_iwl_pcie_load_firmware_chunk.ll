; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_firmware_chunk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_pcie_load_firmware_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_trans_pcie = type { i32, i32 }

@EIO = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"Failed to load firmware chunk!\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32, i32, i32)* @iwl_pcie_load_firmware_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_pcie_load_firmware_chunk(%struct.iwl_trans* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_trans*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_trans_pcie*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %14 = call %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans* %13)
  store %struct.iwl_trans_pcie* %14, %struct.iwl_trans_pcie** %10, align 8
  %15 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %16 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %18 = call i32 @iwl_trans_grab_nic_access(%struct.iwl_trans* %17, i64* %11)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %50

23:                                               ; preds = %4
  %24 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @iwl_pcie_load_firmware_chunk_fh(%struct.iwl_trans* %24, i32 %25, i32 %26, i32 %27)
  %29 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %30 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %29, i64* %11)
  %31 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %32 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.iwl_trans_pcie*, %struct.iwl_trans_pcie** %10, align 8
  %35 = getelementptr inbounds %struct.iwl_trans_pcie, %struct.iwl_trans_pcie* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @HZ, align 4
  %38 = mul nsw i32 5, %37
  %39 = call i32 @wait_event_timeout(i32 %33, i32 %36, i32 %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %49, label %42

42:                                               ; preds = %23
  %43 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %44 = call i32 @IWL_ERR(%struct.iwl_trans* %43, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %6, align 8
  %46 = call i32 @iwl_trans_pcie_dump_regs(%struct.iwl_trans* %45)
  %47 = load i32, i32* @ETIMEDOUT, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %50

49:                                               ; preds = %23
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %49, %42, %20
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.iwl_trans_pcie* @IWL_TRANS_GET_PCIE_TRANS(%struct.iwl_trans*) #1

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @iwl_pcie_load_firmware_chunk_fh(%struct.iwl_trans*, i32, i32, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_trans*, i8*) #1

declare dso_local i32 @iwl_trans_pcie_dump_regs(%struct.iwl_trans*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
