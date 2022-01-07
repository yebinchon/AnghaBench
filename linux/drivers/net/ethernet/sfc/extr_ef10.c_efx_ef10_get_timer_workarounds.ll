; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_get_timer_workarounds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_get_timer_workarounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32, i32 }

@ENOSYS = common dso_local global i32 0, align 4
@MC_CMD_GET_WORKAROUNDS_OUT_BUG61265 = common dso_local global i32 0, align 4
@MC_CMD_GET_WORKAROUNDS_OUT_BUG35388 = common dso_local global i32 0, align 4
@MC_CMD_WORKAROUND_BUG35388 = common dso_local global i32 0, align 4
@probe = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"workaround for bug 35388 is %sabled\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"dis\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"workaround for bug 61265 is %sabled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*)* @efx_ef10_get_timer_workarounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_get_timer_workarounds(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_ef10_nic_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 1
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %8, align 8
  store %struct.efx_ef10_nic_data* %9, %struct.efx_ef10_nic_data** %3, align 8
  %10 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %11 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %10, i32 0, i32 0
  store i32 0, i32* %11, align 4
  %12 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %13 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %12, i32 0, i32 1
  store i32 0, i32* %13, align 4
  %14 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %15 = call i32 @efx_mcdi_get_workarounds(%struct.efx_nic* %14, i32* %4, i32* %5)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* @ENOSYS, align 4
  %18 = sub nsw i32 0, %17
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  br label %58

21:                                               ; preds = %1
  %22 = load i32, i32* %6, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %21
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @MC_CMD_GET_WORKAROUNDS_OUT_BUG61265, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %31 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %32

32:                                               ; preds = %29, %24
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @MC_CMD_GET_WORKAROUNDS_OUT_BUG35388, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %39 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %38, i32 0, i32 0
  store i32 1, i32* %39, align 4
  br label %56

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @MC_CMD_GET_WORKAROUNDS_OUT_BUG35388, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %47 = load i32, i32* @MC_CMD_WORKAROUND_BUG35388, align 4
  %48 = call i32 @efx_mcdi_set_workaround(%struct.efx_nic* %46, i32 %47, i32 1, i32* null)
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %53 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %52, i32 0, i32 0
  store i32 1, i32* %53, align 4
  br label %54

54:                                               ; preds = %51, %45
  store i32 0, i32* %6, align 4
  br label %55

55:                                               ; preds = %54, %40
  br label %56

56:                                               ; preds = %55, %37
  br label %57

57:                                               ; preds = %56, %21
  br label %58

58:                                               ; preds = %57, %20
  %59 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %60 = load i32, i32* @probe, align 4
  %61 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %62 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %65 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %70 = call i32 @netif_dbg(%struct.efx_nic* %59, i32 %60, i32 %63, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i8* %69)
  %71 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %72 = load i32, i32* @probe, align 4
  %73 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %74 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %77 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  %80 = zext i1 %79 to i64
  %81 = select i1 %79, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0)
  %82 = call i32 @netif_dbg(%struct.efx_nic* %71, i32 %72, i32 %75, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i8* %81)
  %83 = load i32, i32* %6, align 4
  ret i32 %83
}

declare dso_local i32 @efx_mcdi_get_workarounds(%struct.efx_nic*, i32*, i32*) #1

declare dso_local i32 @efx_mcdi_set_workaround(%struct.efx_nic*, i32, i32, i32*) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
