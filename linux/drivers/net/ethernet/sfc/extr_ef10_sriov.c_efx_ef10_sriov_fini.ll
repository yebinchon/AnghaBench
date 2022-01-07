; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10_sriov.c_efx_ef10_sriov_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.TYPE_9__*, %struct.efx_ef10_nic_data* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)* }
%struct.efx_ef10_nic_data = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.efx_nic* }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Disabling SRIOV was not successful rc=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"SRIOV disabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @efx_ef10_sriov_fini(%struct.efx_nic* %0) #0 {
  %2 = alloca %struct.efx_nic*, align 8
  %3 = alloca %struct.efx_ef10_nic_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_nic*, align 8
  store %struct.efx_nic* %0, %struct.efx_nic** %2, align 8
  %7 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %8 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %7, i32 0, i32 3
  %9 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %8, align 8
  store %struct.efx_ef10_nic_data* %9, %struct.efx_ef10_nic_data** %3, align 8
  %10 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %11 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = icmp ne %struct.TYPE_7__* %12, null
  br i1 %13, label %32, label %14

14:                                               ; preds = %1
  %15 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %16 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %15, i32 0, i32 2
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %18 = call i64 @pci_num_vf(%struct.TYPE_9__* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %14
  %21 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %22 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %21, i32 0, i32 2
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %22, align 8
  %24 = call i32 @pci_vfs_assigned(%struct.TYPE_9__* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %20
  %27 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  %30 = call i32 @pci_disable_sriov(%struct.TYPE_9__* %29)
  br label %31

31:                                               ; preds = %26, %20, %14
  br label %86

32:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %63, %32
  %34 = load i32, i32* %4, align 4
  %35 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %36 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ult i32 %34, %37
  br i1 %38, label %39, label %66

39:                                               ; preds = %33
  %40 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %3, align 8
  %41 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %45, i32 0, i32 0
  %47 = load %struct.efx_nic*, %struct.efx_nic** %46, align 8
  store %struct.efx_nic* %47, %struct.efx_nic** %6, align 8
  %48 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %49 = icmp ne %struct.efx_nic* %48, null
  br i1 %49, label %50, label %62

50:                                               ; preds = %39
  %51 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 2
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %56, align 8
  %58 = load %struct.efx_nic*, %struct.efx_nic** %6, align 8
  %59 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %58, i32 0, i32 2
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = call i32 %57(%struct.TYPE_9__* %60)
  br label %62

62:                                               ; preds = %50, %39
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %33

66:                                               ; preds = %33
  %67 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %68 = call i32 @efx_ef10_pci_sriov_disable(%struct.efx_nic* %67, i32 1)
  store i32 %68, i32* %5, align 4
  %69 = load i32, i32* %5, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %66
  %72 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %73 = load i32, i32* @drv, align 4
  %74 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %75 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* %5, align 4
  %78 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %72, i32 %73, i32 %76, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %77)
  br label %86

79:                                               ; preds = %66
  %80 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %81 = load i32, i32* @drv, align 4
  %82 = load %struct.efx_nic*, %struct.efx_nic** %2, align 8
  %83 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 (%struct.efx_nic*, i32, i32, i8*, ...) @netif_dbg(%struct.efx_nic* %80, i32 %81, i32 %84, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %86

86:                                               ; preds = %31, %79, %71
  ret void
}

declare dso_local i64 @pci_num_vf(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_vfs_assigned(%struct.TYPE_9__*) #1

declare dso_local i32 @pci_disable_sriov(%struct.TYPE_9__*) #1

declare dso_local i32 @efx_ef10_pci_sriov_disable(%struct.efx_nic*, i32) #1

declare dso_local i32 @netif_dbg(%struct.efx_nic*, i32, i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
