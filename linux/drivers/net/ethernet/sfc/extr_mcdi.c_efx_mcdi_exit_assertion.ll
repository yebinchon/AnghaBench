; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_exit_assertion.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_exit_assertion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }

@inbuf = common dso_local global i32 0, align 4
@MC_CMD_REBOOT_IN_LEN = common dso_local global i32 0, align 4
@MC_CMD_REBOOT_OUT_LEN = common dso_local global i64 0, align 8
@REBOOT_IN_FLAGS = common dso_local global i32 0, align 4
@MC_CMD_REBOOT_FLAGS_AFTER_ASSERTION = common dso_local global i32 0, align 4
@MC_CMD_REBOOT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_mcdi_exit_assertion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_exit_assertion(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %4 = load i32, i32* @inbuf, align 4
  %5 = load i32, i32* @MC_CMD_REBOOT_IN_LEN, align 4
  %6 = call i32 @MCDI_DECLARE_BUF(i32 %4, i32 %5)
  %7 = load i64, i64* @MC_CMD_REBOOT_OUT_LEN, align 8
  %8 = icmp ne i64 %7, 0
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUILD_BUG_ON(i32 %9)
  %11 = load i32, i32* @inbuf, align 4
  %12 = load i32, i32* @REBOOT_IN_FLAGS, align 4
  %13 = load i32, i32* @MC_CMD_REBOOT_FLAGS_AFTER_ASSERTION, align 4
  %14 = call i32 @MCDI_SET_DWORD(i32 %11, i32 %12, i32 %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = load i32, i32* @MC_CMD_REBOOT, align 4
  %17 = load i32, i32* @inbuf, align 4
  %18 = load i32, i32* @MC_CMD_REBOOT_IN_LEN, align 4
  %19 = call i32 @efx_mcdi_rpc_quiet(%struct.efx_nic* %15, i32 %16, i32 %17, i32 %18, i32* null, i32 0, i32* null)
  store i32 %19, i32* %3, align 4
  %20 = load i32, i32* %3, align 4
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %24, %1
  %26 = load i32, i32* %3, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %25
  %29 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %30 = load i32, i32* @MC_CMD_REBOOT, align 4
  %31 = load i32, i32* @MC_CMD_REBOOT_IN_LEN, align 4
  %32 = load i32, i32* %3, align 4
  %33 = call i32 @efx_mcdi_display_error(%struct.efx_nic* %29, i32 %30, i32 %31, i32* null, i32 0, i32 %32)
  br label %34

34:                                               ; preds = %28, %25
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @MCDI_DECLARE_BUF(i32, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @MCDI_SET_DWORD(i32, i32, i32) #1

declare dso_local i32 @efx_mcdi_rpc_quiet(%struct.efx_nic*, i32, i32, i32, i32*, i32, i32*) #1

declare dso_local i32 @efx_mcdi_display_error(%struct.efx_nic*, i32, i32, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
