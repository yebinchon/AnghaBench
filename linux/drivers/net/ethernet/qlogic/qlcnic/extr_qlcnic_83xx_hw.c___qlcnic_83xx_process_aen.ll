; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c___qlcnic_83xx_process_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_83xx_hw.c___qlcnic_83xx_process_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__*, i32, i32, i32, %struct.qlcnic_hardware_context* }
%struct.TYPE_2__ = type { i32 }
%struct.qlcnic_hardware_context = type { i32*, i32 }

@QLC_83XX_MBX_AEN_CNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"SFP+ Insert AEN:0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"SFP Removed AEN:0x%x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Unsupported AEN:0x%x.\0A\00", align 1
@QLCNIC_FW_MBX_CTRL = common dso_local global i32 0, align 4
@QLCNIC_CLR_OWNER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*)* @__qlcnic_83xx_process_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qlcnic_83xx_process_aen(%struct.qlcnic_adapter* %0) #0 {
  %2 = alloca %struct.qlcnic_adapter*, align 8
  %3 = alloca %struct.qlcnic_hardware_context*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %2, align 8
  %7 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %8 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %7, i32 0, i32 4
  %9 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %8, align 8
  store %struct.qlcnic_hardware_context* %9, %struct.qlcnic_hardware_context** %3, align 8
  %10 = load i32, i32* @QLC_83XX_MBX_AEN_CNT, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %26, %1
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* @QLC_83XX_MBX_AEN_CNT, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %29

18:                                               ; preds = %14
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context* %19, i32 %20)
  %22 = call i32 @readl(i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %13, i64 %24
  store i32 %22, i32* %25, align 4
  br label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %14

29:                                               ; preds = %14
  %30 = getelementptr inbounds i32, i32* %13, i64 0
  %31 = load i32, i32* %30, align 16
  %32 = call i32 @QLCNIC_MBX_RSP(i32 %31)
  switch i32 %32, label %105 [
    i32 132, label %33
    i32 134, label %36
    i32 131, label %39
    i32 128, label %68
    i32 135, label %75
    i32 130, label %80
    i32 129, label %89
    i32 133, label %98
  ]

33:                                               ; preds = %29
  %34 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %35 = call i32 @qlcnic_83xx_handle_link_aen(%struct.qlcnic_adapter* %34, i32* %13)
  br label %114

36:                                               ; preds = %29
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %38 = call i32 @qlcnic_83xx_handle_idc_comp_aen(%struct.qlcnic_adapter* %37, i32* %13)
  br label %114

39:                                               ; preds = %29
  store i32 0, i32* %6, align 4
  br label %40

40:                                               ; preds = %58, %39
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @QLC_83XX_MBX_AEN_CNT, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %13, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @QLCNIC_MBX_RSP(i32 %48)
  %50 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %51 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %50, i32 0, i32 4
  %52 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %51, align 8
  %53 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %6, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  store i32 %49, i32* %57, align 4
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %6, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %6, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 2
  %67 = call i32 @queue_delayed_work(i32 %64, i32* %66, i32 0)
  br label %114

68:                                               ; preds = %29
  %69 = getelementptr inbounds i32, i32* %13, i64 1
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 8
  %72 = and i32 %71, 15
  %73 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %74 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  br label %114

75:                                               ; preds = %29
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %77 = getelementptr inbounds i32, i32* %13, i64 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @qlcnic_sriov_handle_bc_event(%struct.qlcnic_adapter* %76, i32 %78)
  br label %114

80:                                               ; preds = %29
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 0
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = getelementptr inbounds i32, i32* %13, i64 0
  %86 = load i32, i32* %85, align 16
  %87 = call i32 @QLCNIC_MBX_RSP(i32 %86)
  %88 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %87)
  br label %114

89:                                               ; preds = %29
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %91 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = getelementptr inbounds i32, i32* %13, i64 0
  %95 = load i32, i32* %94, align 16
  %96 = call i32 @QLCNIC_MBX_RSP(i32 %95)
  %97 = call i32 @dev_info(i32* %93, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %114

98:                                               ; preds = %29
  %99 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %100 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = getelementptr inbounds i32, i32* %13, i64 1
  %103 = bitcast i32* %102 to i8*
  %104 = call i32 @qlcnic_dcb_aen_handler(i32 %101, i8* %103)
  br label %114

105:                                              ; preds = %29
  %106 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %2, align 8
  %107 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %106, i32 0, i32 0
  %108 = load %struct.TYPE_2__*, %struct.TYPE_2__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = getelementptr inbounds i32, i32* %13, i64 0
  %111 = load i32, i32* %110, align 16
  %112 = call i32 @QLCNIC_MBX_RSP(i32 %111)
  %113 = call i32 @dev_dbg(i32* %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i32 %112)
  br label %114

114:                                              ; preds = %105, %98, %89, %80, %75, %68, %61, %36, %33
  %115 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %3, align 8
  %116 = load i32, i32* @QLCNIC_FW_MBX_CTRL, align 4
  %117 = load i32, i32* @QLCNIC_CLR_OWNER, align 4
  %118 = call i32 @QLCWRX(%struct.qlcnic_hardware_context* %115, i32 %116, i32 %117)
  %119 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %119)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @readl(i32) #2

declare dso_local i32 @QLCNIC_MBX_FW(%struct.qlcnic_hardware_context*, i32) #2

declare dso_local i32 @QLCNIC_MBX_RSP(i32) #2

declare dso_local i32 @qlcnic_83xx_handle_link_aen(%struct.qlcnic_adapter*, i32*) #2

declare dso_local i32 @qlcnic_83xx_handle_idc_comp_aen(%struct.qlcnic_adapter*, i32*) #2

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #2

declare dso_local i32 @qlcnic_sriov_handle_bc_event(%struct.qlcnic_adapter*, i32) #2

declare dso_local i32 @dev_info(i32*, i8*, i32) #2

declare dso_local i32 @qlcnic_dcb_aen_handler(i32, i8*) #2

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #2

declare dso_local i32 @QLCWRX(%struct.qlcnic_hardware_context*, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
