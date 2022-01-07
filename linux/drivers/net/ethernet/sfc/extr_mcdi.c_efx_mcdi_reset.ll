; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i64, i32 }
%struct.efx_mcdi_iface = type { i32 }

@RESET_TYPE_MCDI_TIMEOUT = common dso_local global i32 0, align 4
@MCDI_MODE_POLL = common dso_local global i32 0, align 4
@RESET_TYPE_DATAPATH = common dso_local global i32 0, align 4
@RESET_TYPE_WORLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @efx_mcdi_reset(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.efx_mcdi_iface*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @RESET_TYPE_MCDI_TIMEOUT, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %11, label %32

11:                                               ; preds = %2
  %12 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pci_reset_function(i32 %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %11
  %19 = load i32, i32* %6, align 4
  store i32 %19, i32* %3, align 4
  br label %54

20:                                               ; preds = %11
  %21 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %20
  %26 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %27 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %26)
  store %struct.efx_mcdi_iface* %27, %struct.efx_mcdi_iface** %7, align 8
  %28 = load i32, i32* @MCDI_MODE_POLL, align 4
  %29 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %7, align 8
  %30 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  br label %31

31:                                               ; preds = %25, %20
  store i32 0, i32* %3, align 4
  br label %54

32:                                               ; preds = %2
  %33 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %34 = call i32 @efx_mcdi_handle_assertion(%struct.efx_nic* %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %39

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  store i32 %38, i32* %3, align 4
  br label %54

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @RESET_TYPE_DATAPATH, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %39
  store i32 0, i32* %3, align 4
  br label %54

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load i32, i32* @RESET_TYPE_WORLD, align 4
  %47 = icmp eq i32 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %50 = call i32 @efx_mcdi_reset_mc(%struct.efx_nic* %49)
  store i32 %50, i32* %3, align 4
  br label %54

51:                                               ; preds = %44
  %52 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %53 = call i32 @efx_mcdi_reset_func(%struct.efx_nic* %52)
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %51, %48, %43, %37, %31, %18
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @pci_reset_function(i32) #1

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_handle_assertion(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_reset_mc(%struct.efx_nic*) #1

declare dso_local i32 @efx_mcdi_reset_func(%struct.efx_nic*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
