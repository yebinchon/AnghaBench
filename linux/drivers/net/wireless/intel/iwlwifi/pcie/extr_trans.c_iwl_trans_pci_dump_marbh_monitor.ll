; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pci_dump_marbh_monitor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pci_dump_marbh_monitor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }
%struct.iwl_fw_error_dump_fw_mon = type { i64 }

@MON_DMARB_RD_CTL_ADDR = common dso_local global i32 0, align 4
@MON_DMARB_RD_DATA_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, %struct.iwl_fw_error_dump_fw_mon*, i32)* @iwl_trans_pci_dump_marbh_monitor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pci_dump_marbh_monitor(%struct.iwl_trans* %0, %struct.iwl_fw_error_dump_fw_mon* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca %struct.iwl_fw_error_dump_fw_mon*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store %struct.iwl_fw_error_dump_fw_mon* %1, %struct.iwl_fw_error_dump_fw_mon** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = ashr i32 %12, 2
  store i32 %13, i32* %8, align 4
  %14 = load %struct.iwl_fw_error_dump_fw_mon*, %struct.iwl_fw_error_dump_fw_mon** %6, align 8
  %15 = getelementptr inbounds %struct.iwl_fw_error_dump_fw_mon, %struct.iwl_fw_error_dump_fw_mon* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i32*
  store i32* %17, i32** %9, align 8
  %18 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %19 = call i32 @iwl_trans_grab_nic_access(%struct.iwl_trans* %18, i64* %10)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %48

22:                                               ; preds = %3
  %23 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %24 = load i32, i32* @MON_DMARB_RD_CTL_ADDR, align 4
  %25 = call i32 @iwl_write_umac_prph_no_grab(%struct.iwl_trans* %23, i32 %24, i32 1)
  store i32 0, i32* %11, align 4
  br label %26

26:                                               ; preds = %38, %22
  %27 = load i32, i32* %11, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %32 = load i32, i32* @MON_DMARB_RD_DATA_ADDR, align 4
  %33 = call i32 @iwl_read_umac_prph_no_grab(%struct.iwl_trans* %31, i32 %32)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  store i32 %33, i32* %37, align 4
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %11, align 4
  br label %26

41:                                               ; preds = %26
  %42 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %43 = load i32, i32* @MON_DMARB_RD_CTL_ADDR, align 4
  %44 = call i32 @iwl_write_umac_prph_no_grab(%struct.iwl_trans* %42, i32 %43, i32 0)
  %45 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %46 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %45, i64* %10)
  %47 = load i32, i32* %7, align 4
  store i32 %47, i32* %4, align 4
  br label %48

48:                                               ; preds = %41, %21
  %49 = load i32, i32* %4, align 4
  ret i32 %49
}

declare dso_local i32 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @iwl_write_umac_prph_no_grab(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_read_umac_prph_no_grab(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
