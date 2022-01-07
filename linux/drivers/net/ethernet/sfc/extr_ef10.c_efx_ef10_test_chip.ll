; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_test_chip.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_test_chip.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_self_tests = type { i32, i32 }

@RESET_TYPE_WORLD = common dso_local global i32 0, align 4
@MC_CMD_ENABLE_OFFLINE_BIST = common dso_local global i32 0, align 4
@MC_CMD_MC_MEM_BIST = common dso_local global i32 0, align 4
@MC_CMD_REG_BIST = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, %struct.efx_self_tests*)* @efx_ef10_test_chip to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_test_chip(%struct.efx_nic* %0, %struct.efx_self_tests* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca %struct.efx_self_tests*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store %struct.efx_self_tests* %1, %struct.efx_self_tests** %4, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %8 = load i32, i32* @RESET_TYPE_WORLD, align 4
  %9 = call i32 @efx_reset_down(%struct.efx_nic* %7, i32 %8)
  %10 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %11 = load i32, i32* @MC_CMD_ENABLE_OFFLINE_BIST, align 4
  %12 = call i32 @efx_mcdi_rpc(%struct.efx_nic* %10, i32 %11, i32* null, i32 0, i32* null, i32 0, i32* null)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %36

16:                                               ; preds = %2
  %17 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %18 = load i32, i32* @MC_CMD_MC_MEM_BIST, align 4
  %19 = call i64 @efx_ef10_run_bist(%struct.efx_nic* %17, i32 %18)
  %20 = icmp ne i64 %19, 0
  %21 = zext i1 %20 to i64
  %22 = select i1 %20, i32 -1, i32 1
  %23 = load %struct.efx_self_tests*, %struct.efx_self_tests** %4, align 8
  %24 = getelementptr inbounds %struct.efx_self_tests, %struct.efx_self_tests* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %26 = load i32, i32* @MC_CMD_REG_BIST, align 4
  %27 = call i64 @efx_ef10_run_bist(%struct.efx_nic* %25, i32 %26)
  %28 = icmp ne i64 %27, 0
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 -1, i32 1
  %31 = load %struct.efx_self_tests*, %struct.efx_self_tests** %4, align 8
  %32 = getelementptr inbounds %struct.efx_self_tests, %struct.efx_self_tests* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %34 = load i32, i32* @RESET_TYPE_WORLD, align 4
  %35 = call i32 @efx_mcdi_reset(%struct.efx_nic* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %16, %15
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* @EPERM, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %36
  %43 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %44 = load i32, i32* @RESET_TYPE_WORLD, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp eq i32 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @efx_reset_up(%struct.efx_nic* %43, i32 %44, i32 %47)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %5, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %42
  %52 = load i32, i32* %5, align 4
  br label %55

53:                                               ; preds = %42
  %54 = load i32, i32* %6, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  ret i32 %56
}

declare dso_local i32 @efx_reset_down(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_mcdi_rpc(%struct.efx_nic*, i32, i32*, i32, i32*, i32, i32*) #1

declare dso_local i64 @efx_ef10_run_bist(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_mcdi_reset(%struct.efx_nic*, i32) #1

declare dso_local i32 @efx_reset_up(%struct.efx_nic*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
