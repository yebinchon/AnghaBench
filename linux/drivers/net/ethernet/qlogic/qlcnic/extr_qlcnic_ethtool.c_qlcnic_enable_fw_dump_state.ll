; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_enable_fw_dump_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_ethtool.c_qlcnic_enable_fw_dump_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_4__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { %struct.qlcnic_fw_dump }
%struct.qlcnic_fw_dump = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@QLC_83XX_IDC_CTRL = common dso_local global i32 0, align 4
@QLC_83XX_IDC_DISABLE_FW_DUMP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"FW dump enabled\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_enable_fw_dump_state(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_fw_dump*, align 8
  %5 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  %6 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %7 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %6, i32 0, i32 1
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.qlcnic_fw_dump* %9, %struct.qlcnic_fw_dump** %4, align 8
  %10 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %11 = call i64 @qlcnic_84xx_check(%struct.qlcnic_adapter* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %1
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %15 = call i64 @qlcnic_83xx_lock_driver(%struct.qlcnic_adapter* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %13
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %47

20:                                               ; preds = %13
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %21, i32 0, i32 1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = load i32, i32* @QLC_83XX_IDC_CTRL, align 4
  %25 = call i32 @QLCRDX(%struct.TYPE_5__* %23, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @QLC_83XX_IDC_DISABLE_FW_DUMP, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %5, align 4
  %30 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %30, i32 0, i32 1
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = load i32, i32* @QLC_83XX_IDC_CTRL, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @QLCWRX(%struct.TYPE_5__* %32, i32 %33, i32 %34)
  %36 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %37 = call i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter* %36)
  br label %41

38:                                               ; preds = %1
  %39 = load %struct.qlcnic_fw_dump*, %struct.qlcnic_fw_dump** %4, align 8
  %40 = getelementptr inbounds %struct.qlcnic_fw_dump, %struct.qlcnic_fw_dump* %39, i32 0, i32 0
  store i32 1, i32* %40, align 4
  br label %41

41:                                               ; preds = %38, %20
  %42 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %43 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %42, i32 0, i32 0
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = call i32 @dev_info(i32* %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %47

47:                                               ; preds = %41, %17
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i64 @qlcnic_84xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_83xx_lock_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @QLCRDX(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @QLCWRX(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @qlcnic_83xx_unlock_driver(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
