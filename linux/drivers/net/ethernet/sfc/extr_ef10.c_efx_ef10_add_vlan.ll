; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_add_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_add_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, i64, i32, %struct.efx_ef10_nic_data* }
%struct.efx_ef10_nic_data = type { i32, i32 }
%struct.efx_ef10_vlan = type { i32, i64 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VLAN %u already added\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i64)* @efx_ef10_add_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_add_vlan(%struct.efx_nic* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.efx_ef10_nic_data*, align 8
  %7 = alloca %struct.efx_ef10_vlan*, align 8
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 4
  %11 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %10, align 8
  store %struct.efx_ef10_nic_data* %11, %struct.efx_ef10_nic_data** %6, align 8
  %12 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %13 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call %struct.efx_ef10_vlan* @efx_ef10_find_vlan(%struct.efx_nic* %15, i64 %16)
  store %struct.efx_ef10_vlan* %17, %struct.efx_ef10_vlan** %7, align 8
  %18 = load %struct.efx_ef10_vlan*, %struct.efx_ef10_vlan** %7, align 8
  %19 = icmp ne %struct.efx_ef10_vlan* %18, null
  br i1 %19, label %20, label %34

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %78

24:                                               ; preds = %20
  %25 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %26 = load i32, i32* @drv, align 4
  %27 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %28 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load i64, i64* %5, align 8
  %31 = call i32 @netif_warn(%struct.efx_nic* %25, i32 %26, i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i64 %30)
  %32 = load i32, i32* @EALREADY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %8, align 4
  br label %89

34:                                               ; preds = %2
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.efx_ef10_vlan* @kzalloc(i32 16, i32 %37)
  store %struct.efx_ef10_vlan* %38, %struct.efx_ef10_vlan** %7, align 8
  %39 = load %struct.efx_ef10_vlan*, %struct.efx_ef10_vlan** %7, align 8
  %40 = icmp ne %struct.efx_ef10_vlan* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %88

42:                                               ; preds = %34
  %43 = load i64, i64* %5, align 8
  %44 = load %struct.efx_ef10_vlan*, %struct.efx_ef10_vlan** %7, align 8
  %45 = getelementptr inbounds %struct.efx_ef10_vlan, %struct.efx_ef10_vlan* %44, i32 0, i32 1
  store i64 %43, i64* %45, align 8
  %46 = load %struct.efx_ef10_vlan*, %struct.efx_ef10_vlan** %7, align 8
  %47 = getelementptr inbounds %struct.efx_ef10_vlan, %struct.efx_ef10_vlan* %46, i32 0, i32 0
  %48 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %49 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %48, i32 0, i32 1
  %50 = call i32 @list_add_tail(i32* %47, i32* %49)
  %51 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %52 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %77

55:                                               ; preds = %42
  %56 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %57 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %56, i32 0, i32 0
  %58 = call i32 @mutex_lock(i32* %57)
  %59 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %60 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %59, i32 0, i32 1
  %61 = call i32 @down_write(i32* %60)
  %62 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %63 = load %struct.efx_ef10_vlan*, %struct.efx_ef10_vlan** %7, align 8
  %64 = getelementptr inbounds %struct.efx_ef10_vlan, %struct.efx_ef10_vlan* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = call i32 @efx_ef10_filter_add_vlan(%struct.efx_nic* %62, i64 %65)
  store i32 %66, i32* %8, align 4
  %67 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %68 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %67, i32 0, i32 1
  %69 = call i32 @up_write(i32* %68)
  %70 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %71 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %70, i32 0, i32 0
  %72 = call i32 @mutex_unlock(i32* %71)
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %55
  br label %82

76:                                               ; preds = %55
  br label %77

77:                                               ; preds = %76, %42
  br label %78

78:                                               ; preds = %77, %23
  %79 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %80 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %79, i32 0, i32 0
  %81 = call i32 @mutex_unlock(i32* %80)
  store i32 0, i32* %3, align 4
  br label %94

82:                                               ; preds = %75
  %83 = load %struct.efx_ef10_vlan*, %struct.efx_ef10_vlan** %7, align 8
  %84 = getelementptr inbounds %struct.efx_ef10_vlan, %struct.efx_ef10_vlan* %83, i32 0, i32 0
  %85 = call i32 @list_del(i32* %84)
  %86 = load %struct.efx_ef10_vlan*, %struct.efx_ef10_vlan** %7, align 8
  %87 = call i32 @kfree(%struct.efx_ef10_vlan* %86)
  br label %88

88:                                               ; preds = %82, %41
  br label %89

89:                                               ; preds = %88, %24
  %90 = load %struct.efx_ef10_nic_data*, %struct.efx_ef10_nic_data** %6, align 8
  %91 = getelementptr inbounds %struct.efx_ef10_nic_data, %struct.efx_ef10_nic_data* %90, i32 0, i32 0
  %92 = call i32 @mutex_unlock(i32* %91)
  %93 = load i32, i32* %8, align 4
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %89, %78
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.efx_ef10_vlan* @efx_ef10_find_vlan(%struct.efx_nic*, i64) #1

declare dso_local i32 @netif_warn(%struct.efx_nic*, i32, i32, i8*, i64) #1

declare dso_local %struct.efx_ef10_vlan* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @efx_ef10_filter_add_vlan(%struct.efx_nic*, i64) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.efx_ef10_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
