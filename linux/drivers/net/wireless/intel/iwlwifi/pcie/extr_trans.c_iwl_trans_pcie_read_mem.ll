; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_read_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlwifi/pcie/extr_trans.c_iwl_trans_pcie_read_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_trans = type { i32 }

@HBUS_TARG_MEM_RADDR = common dso_local global i32 0, align 4
@HBUS_TARG_MEM_RDAT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_trans*, i32, i8*, i32)* @iwl_trans_pcie_read_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_trans_pcie_read_mem(%struct.iwl_trans* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.iwl_trans*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.iwl_trans* %0, %struct.iwl_trans** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %11, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = bitcast i8* %13 to i32*
  store i32* %14, i32** %12, align 8
  %15 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %16 = call i64 @iwl_trans_grab_nic_access(%struct.iwl_trans* %15, i64* %9)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %41

18:                                               ; preds = %4
  %19 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %20 = load i32, i32* @HBUS_TARG_MEM_RADDR, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @iwl_write32(%struct.iwl_trans* %19, i32 %20, i32 %21)
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %35, %18
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* %8, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %29 = load i32, i32* @HBUS_TARG_MEM_RDAT, align 4
  %30 = call i32 @iwl_read32(%struct.iwl_trans* %28, i32 %29)
  %31 = load i32*, i32** %12, align 8
  %32 = load i32, i32* %10, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %30, i32* %34, align 4
  br label %35

35:                                               ; preds = %27
  %36 = load i32, i32* %10, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %10, align 4
  br label %23

38:                                               ; preds = %23
  %39 = load %struct.iwl_trans*, %struct.iwl_trans** %5, align 8
  %40 = call i32 @iwl_trans_release_nic_access(%struct.iwl_trans* %39, i64* %9)
  br label %44

41:                                               ; preds = %4
  %42 = load i32, i32* @EBUSY, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %41, %38
  %45 = load i32, i32* %11, align 4
  ret i32 %45
}

declare dso_local i64 @iwl_trans_grab_nic_access(%struct.iwl_trans*, i64*) #1

declare dso_local i32 @iwl_write32(%struct.iwl_trans*, i32, i32) #1

declare dso_local i32 @iwl_read32(%struct.iwl_trans*, i32) #1

declare dso_local i32 @iwl_trans_release_nic_access(%struct.iwl_trans*, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
