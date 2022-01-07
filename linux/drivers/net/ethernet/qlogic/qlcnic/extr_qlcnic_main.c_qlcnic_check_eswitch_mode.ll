; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_check_eswitch_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_main.c_qlcnic_check_eswitch_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32, i32, i64, i32 }
%struct.TYPE_3__ = type { i32 }

@QLCNIC_ADAPTER_INITIALIZED = common dso_local global i32 0, align 4
@QLCNIC_DRV_OP_MODE = common dso_local global i32 0, align 4
@QLC_DEV_DRV_DEFAULT = common dso_local global i64 0, align 8
@QLCNIC_MGMT_FUNC = common dso_local global i64 0, align 8
@QLCNIC_ESWITCH_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"HAL Version: %d, Management function\0A\00", align 1
@QLCNIC_PRIV_FUNC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [38 x i8] c"HAL Version: %d, Privileged function\0A\00", align 1
@QLCNIC_DEFAULT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*)* @qlcnic_check_eswitch_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_check_eswitch_mode(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %8 = call i32 @qlcnic_initialize_nic(%struct.qlcnic_adapter* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = load i32, i32* %6, align 4
  store i32 %12, i32* %2, align 4
  br label %116

13:                                               ; preds = %1
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @QLCNIC_ADAPTER_INITIALIZED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %116

21:                                               ; preds = %13
  %22 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %23 = load i32, i32* @QLCNIC_DRV_OP_MODE, align 4
  %24 = call i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter* %22, i32 %23)
  store i64 %24, i64* %4, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 1
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i64 @QLC_DEV_GET_DRV(i64 %25, i32 %30)
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %4, align 8
  %33 = load i64, i64* @QLC_DEV_DRV_DEFAULT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %21
  %36 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  store i64 %36, i64* %5, align 8
  br label %45

37:                                               ; preds = %21
  %38 = load i64, i64* %4, align 8
  %39 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %40 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @QLC_DEV_GET_DRV(i64 %38, i32 %43)
  store i64 %44, i64* %5, align 8
  br label %45

45:                                               ; preds = %37, %35
  %46 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %47 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @QLCNIC_ESWITCH_ENABLED, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %103

52:                                               ; preds = %45
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %81

56:                                               ; preds = %52
  %57 = load i64, i64* @QLCNIC_MGMT_FUNC, align 8
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %59 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %58, i32 0, i32 1
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  store i64 %57, i64* %61, align 8
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %63 = call i32 @qlcnic_init_pci_info(%struct.qlcnic_adapter* %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %56
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %2, align 4
  br label %116

68:                                               ; preds = %56
  %69 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %70 = call i32 @qlcnic_set_function_modes(%struct.qlcnic_adapter* %69)
  %71 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %72 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %71, i32 0, i32 2
  %73 = load %struct.TYPE_3__*, %struct.TYPE_3__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %73, i32 0, i32 0
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %76 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %75, i32 0, i32 1
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_info(i32* %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %102

81:                                               ; preds = %52
  %82 = load i64, i64* %5, align 8
  %83 = load i64, i64* @QLCNIC_PRIV_FUNC, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %101

85:                                               ; preds = %81
  %86 = load i64, i64* @QLCNIC_PRIV_FUNC, align 8
  %87 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %88 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 2
  store i64 %86, i64* %90, align 8
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 2
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %96 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %95, i32 0, i32 1
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @dev_info(i32* %94, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  br label %101

101:                                              ; preds = %85, %81
  br label %102

102:                                              ; preds = %101, %68
  br label %109

103:                                              ; preds = %45
  %104 = load i32, i32* @QLCNIC_DEFAULT_MODE, align 4
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %106 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %105, i32 0, i32 1
  %107 = load %struct.TYPE_4__*, %struct.TYPE_4__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  br label %109

109:                                              ; preds = %103, %102
  %110 = load i32, i32* @QLCNIC_ADAPTER_INITIALIZED, align 4
  %111 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %109, %66, %20, %11
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @qlcnic_initialize_nic(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLC_SHARED_REG_RD32(%struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @QLC_DEV_GET_DRV(i64, i32) #1

declare dso_local i32 @qlcnic_init_pci_info(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_set_function_modes(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
