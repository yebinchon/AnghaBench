; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_add_vlan.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/extr_ef10.c_efx_ef10_filter_add_vlan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.efx_nic = type { i32, i32, %struct.efx_ef10_filter_table* }
%struct.efx_ef10_filter_table = type { i32 }
%struct.efx_ef10_filter_vlan = type { i32, i8**, i8**, i8**, i32 }

@EINVAL = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"VLAN %u already added\0A\00", align 1
@EALREADY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EFX_EF10_FILTER_ID_INVALID = common dso_local global i8* null, align 8
@EFX_EF10_NUM_DEFAULT_FILTERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.efx_nic*, i32)* @efx_ef10_filter_add_vlan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @efx_ef10_filter_add_vlan(%struct.efx_nic* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.efx_nic*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.efx_ef10_filter_table*, align 8
  %7 = alloca %struct.efx_ef10_filter_vlan*, align 8
  %8 = alloca i32, align 4
  store %struct.efx_nic* %0, %struct.efx_nic** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %10 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %9, i32 0, i32 2
  %11 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %10, align 8
  store %struct.efx_ef10_filter_table* %11, %struct.efx_ef10_filter_table** %6, align 8
  %12 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %13 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %12, i32 0, i32 1
  %14 = call i32 @efx_rwsem_assert_write_locked(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %115

19:                                               ; preds = %2
  %20 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call %struct.efx_ef10_filter_vlan* @efx_ef10_filter_find_vlan(%struct.efx_nic* %20, i32 %21)
  store %struct.efx_ef10_filter_vlan* %22, %struct.efx_ef10_filter_vlan** %7, align 8
  %23 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %24 = call i64 @WARN_ON(%struct.efx_ef10_filter_vlan* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %28 = load i32, i32* @drv, align 4
  %29 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %30 = getelementptr inbounds %struct.efx_nic, %struct.efx_nic* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* %5, align 4
  %33 = call i32 @netif_err(%struct.efx_nic* %27, i32 %28, i32 %31, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @EALREADY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  br label %115

36:                                               ; preds = %19
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call %struct.efx_ef10_filter_vlan* @kzalloc(i32 40, i32 %37)
  store %struct.efx_ef10_filter_vlan* %38, %struct.efx_ef10_filter_vlan** %7, align 8
  %39 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %40 = icmp ne %struct.efx_ef10_filter_vlan* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %115

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %47 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %46, i32 0, i32 4
  store i32 %45, i32* %47, align 8
  store i32 0, i32* %8, align 4
  br label %48

48:                                               ; preds = %63, %44
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %51 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %50, i32 0, i32 3
  %52 = load i8**, i8*** %51, align 8
  %53 = call i32 @ARRAY_SIZE(i8** %52)
  %54 = icmp ult i32 %49, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %48
  %56 = load i8*, i8** @EFX_EF10_FILTER_ID_INVALID, align 8
  %57 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %58 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %57, i32 0, i32 3
  %59 = load i8**, i8*** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8*, i8** %59, i64 %61
  store i8* %56, i8** %62, align 8
  br label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %8, align 4
  br label %48

66:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %67

67:                                               ; preds = %82, %66
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %70 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %69, i32 0, i32 2
  %71 = load i8**, i8*** %70, align 8
  %72 = call i32 @ARRAY_SIZE(i8** %71)
  %73 = icmp ult i32 %68, %72
  br i1 %73, label %74, label %85

74:                                               ; preds = %67
  %75 = load i8*, i8** @EFX_EF10_FILTER_ID_INVALID, align 8
  %76 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %77 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %76, i32 0, i32 2
  %78 = load i8**, i8*** %77, align 8
  %79 = load i32, i32* %8, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds i8*, i8** %78, i64 %80
  store i8* %75, i8** %81, align 8
  br label %82

82:                                               ; preds = %74
  %83 = load i32, i32* %8, align 4
  %84 = add i32 %83, 1
  store i32 %84, i32* %8, align 4
  br label %67

85:                                               ; preds = %67
  store i32 0, i32* %8, align 4
  br label %86

86:                                               ; preds = %98, %85
  %87 = load i32, i32* %8, align 4
  %88 = load i32, i32* @EFX_EF10_NUM_DEFAULT_FILTERS, align 4
  %89 = icmp ult i32 %87, %88
  br i1 %89, label %90, label %101

90:                                               ; preds = %86
  %91 = load i8*, i8** @EFX_EF10_FILTER_ID_INVALID, align 8
  %92 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %93 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %92, i32 0, i32 1
  %94 = load i8**, i8*** %93, align 8
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i8*, i8** %94, i64 %96
  store i8* %91, i8** %97, align 8
  br label %98

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %8, align 4
  br label %86

101:                                              ; preds = %86
  %102 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %103 = getelementptr inbounds %struct.efx_ef10_filter_vlan, %struct.efx_ef10_filter_vlan* %102, i32 0, i32 0
  %104 = load %struct.efx_ef10_filter_table*, %struct.efx_ef10_filter_table** %6, align 8
  %105 = getelementptr inbounds %struct.efx_ef10_filter_table, %struct.efx_ef10_filter_table* %104, i32 0, i32 0
  %106 = call i32 @list_add_tail(i32* %103, i32* %105)
  %107 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %108 = call i64 @efx_dev_registered(%struct.efx_nic* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %101
  %111 = load %struct.efx_nic*, %struct.efx_nic** %4, align 8
  %112 = load %struct.efx_ef10_filter_vlan*, %struct.efx_ef10_filter_vlan** %7, align 8
  %113 = call i32 @efx_ef10_filter_vlan_sync_rx_mode(%struct.efx_nic* %111, %struct.efx_ef10_filter_vlan* %112)
  br label %114

114:                                              ; preds = %110, %101
  store i32 0, i32* %3, align 4
  br label %115

115:                                              ; preds = %114, %41, %26, %16
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @efx_rwsem_assert_write_locked(i32*) #1

declare dso_local %struct.efx_ef10_filter_vlan* @efx_ef10_filter_find_vlan(%struct.efx_nic*, i32) #1

declare dso_local i64 @WARN_ON(%struct.efx_ef10_filter_vlan*) #1

declare dso_local i32 @netif_err(%struct.efx_nic*, i32, i32, i8*, i32) #1

declare dso_local %struct.efx_ef10_filter_vlan* @kzalloc(i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i64 @efx_dev_registered(%struct.efx_nic*) #1

declare dso_local i32 @efx_ef10_filter_vlan_sync_rx_mode(%struct.efx_nic*, %struct.efx_ef10_filter_vlan*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
