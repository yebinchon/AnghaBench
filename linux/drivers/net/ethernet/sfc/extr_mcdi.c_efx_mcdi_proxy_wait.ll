; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_proxy_wait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_mcdi.c_efx_mcdi_proxy_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32 }
%struct.efx_mcdi_iface = type { i64, i32, i32 }

@EINTR = common dso_local global i32 0, align 4
@MCDI_RPC_TIMEOUT = common dso_local global i32 0, align 4
@hw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"MCDI proxy timeout %d\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"MCDI proxy unexpected handle %d (expected %d)\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i64, i32)* @efx_mcdi_proxy_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_mcdi_proxy_wait(%struct.efx_nic* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.efx_nic*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.efx_mcdi_iface*, align 8
  %9 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %11 = call %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic* %10)
  store %struct.efx_mcdi_iface* %11, %struct.efx_mcdi_iface** %8, align 8
  %12 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %8, align 8
  %13 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %8, align 8
  %16 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %8, align 8
  %21 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @EINTR, align 4
  %24 = sub nsw i32 0, %23
  %25 = icmp eq i32 %22, %24
  br label %26

26:                                               ; preds = %19, %3
  %27 = phi i1 [ true, %3 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  %29 = load i32, i32* @MCDI_RPC_TIMEOUT, align 4
  %30 = call i32 @wait_event_timeout(i32 %14, i32 %28, i32 %29)
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp sle i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %26
  %34 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %35 = load i32, i32* @hw, align 4
  %36 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %37 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @netif_dbg(%struct.efx_nic* %34, i32 %35, i32 %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load i32, i32* @ETIMEDOUT, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %4, align 4
  br label %67

43:                                               ; preds = %26
  %44 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %8, align 8
  %45 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %6, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %43
  %50 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %51 = load i32, i32* @hw, align 4
  %52 = load %struct.efx_nic*, %struct.efx_nic** %5, align 8
  %53 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %8, align 8
  %56 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* %6, align 8
  %59 = call i32 @netif_warn(%struct.efx_nic* %50, i32 %51, i32 %54, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %57, i64 %58)
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %4, align 4
  br label %67

62:                                               ; preds = %43
  br label %63

63:                                               ; preds = %62
  %64 = load %struct.efx_mcdi_iface*, %struct.efx_mcdi_iface** %8, align 8
  %65 = getelementptr inbounds %struct.efx_mcdi_iface, %struct.efx_mcdi_iface* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  store i32 %66, i32* %4, align 4
  br label %67

67:                                               ; preds = %63, %49, %33
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.efx_mcdi_iface* @efx_mcdi(%struct.efx_nic*) #1

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i64) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
