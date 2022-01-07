; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_process_timer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_process_timer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i32 }

@GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_STEP_NS = common dso_local global i32 0, align 4
@GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_MAX_NS = common dso_local global i32 0, align 4
@GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_NS_PER_COUNT = common dso_local global i32 0, align 4
@GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_MAX_COUNT = common dso_local global i32 0, align 4
@GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_NS_PER_COUNT = common dso_local global i32 0, align 4
@GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_MAX_COUNT = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c"got timer properties from MC: quantum %u ns; max %u ns\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.efx_nic*, i32*)* @efx_ef10_process_timer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @efx_ef10_process_timer_config(%struct.efx_nic* %0, i32* %1) #0 {
  %3 = alloca %struct.efx_nic*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %7 = call i64 @EFX_EF10_WORKAROUND_61265(%struct.efx_nic* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %22

9:                                                ; preds = %2
  %10 = load i32*, i32** %4, align 8
  %11 = load i32, i32* @GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_STEP_NS, align 4
  %12 = call i8* @MCDI_DWORD(i32* %10, i32 %11)
  %13 = ptrtoint i8* %12 to i32
  %14 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %15 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @GET_EVQ_TMR_PROPERTIES_OUT_MCDI_TMR_MAX_NS, align 4
  %18 = call i8* @MCDI_DWORD(i32* %16, i32 %17)
  %19 = ptrtoint i8* %18 to i32
  %20 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %21 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  br label %63

22:                                               ; preds = %2
  %23 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %24 = call i64 @EFX_EF10_WORKAROUND_35388(%struct.efx_nic* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %22
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_NS_PER_COUNT, align 4
  %29 = call i8* @MCDI_DWORD(i32* %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  %31 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %32 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %4, align 8
  %34 = load i32, i32* @GET_EVQ_TMR_PROPERTIES_OUT_BUG35388_TMR_MAX_COUNT, align 4
  %35 = call i8* @MCDI_DWORD(i32* %33, i32 %34)
  %36 = ptrtoint i8* %35 to i32
  store i32 %36, i32* %5, align 4
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %39 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = mul i32 %37, %40
  %42 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %43 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  br label %62

44:                                               ; preds = %22
  %45 = load i32*, i32** %4, align 8
  %46 = load i32, i32* @GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_NS_PER_COUNT, align 4
  %47 = call i8* @MCDI_DWORD(i32* %45, i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %50 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @GET_EVQ_TMR_PROPERTIES_OUT_TMR_REG_MAX_COUNT, align 4
  %53 = call i8* @MCDI_DWORD(i32* %51, i32 %52)
  %54 = ptrtoint i8* %53 to i32
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = mul i32 %55, %58
  %60 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %61 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  br label %62

62:                                               ; preds = %44, %26
  br label %63

63:                                               ; preds = %62, %9
  %64 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %65 = load i32, i32* @probe, align 4
  %66 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %67 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %70 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.efx_nic*, %struct.efx_nic** %3, align 8
  %73 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @netif_dbg(%struct.efx_nic* %64, i32 %65, i32 %68, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  ret void
}

declare dso_local i64 @EFX_EF10_WORKAROUND_61265(%struct.efx_nic*) #1

declare dso_local i8* @MCDI_DWORD(i32*, i32) #1

declare dso_local i64 @EFX_EF10_WORKAROUND_35388(%struct.efx_nic*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
