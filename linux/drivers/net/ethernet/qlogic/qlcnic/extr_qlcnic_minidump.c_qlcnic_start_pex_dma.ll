; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_start_pex_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qlcnic/extr_qlcnic_minidump.c_qlcnic_start_pex_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_6__*, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8* }
%struct.TYPE_4__ = type { %struct.device }
%struct.device = type { i32 }
%struct.__mem = type { i32, i32 }

@QLC_83XX_DMA_ENGINE_INDEX = common dso_local global i32 0, align 4
@QLC_DMA_CMD_BUFF_ADDR_LOW = common dso_local global i64 0, align 8
@QLC_DMA_CMD_BUFF_ADDR_HI = common dso_local global i64 0, align 8
@QLC_DMA_CMD_STATUS_CTRL = common dso_local global i64 0, align 8
@BIT_1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"PEX DMA operation timed out\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, %struct.__mem*)* @qlcnic_start_pex_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlcnic_start_pex_dma(%struct.qlcnic_adapter* %0, %struct.__mem* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.__mem*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.__mem* %1, %struct.__mem** %5, align 8
  %14 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %15 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %6, align 8
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %19 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  store i8* %23, i8** %13, align 8
  %24 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %25 = load i8*, i8** %13, align 8
  %26 = load i32, i32* @QLC_83XX_DMA_ENGINE_INDEX, align 4
  %27 = call i64 @qlcnic_get_saved_state(%struct.qlcnic_adapter* %24, i8* %25, i32 %26)
  store i64 %27, i64* %7, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i64 @QLC_DMA_REG_BASE_ADDR(i64 %28)
  store i64 %29, i64* %8, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i64, i64* @QLC_DMA_CMD_BUFF_ADDR_LOW, align 8
  %32 = add nsw i64 %30, %31
  store i64 %32, i64* %9, align 8
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %34 = load i64, i64* %9, align 8
  %35 = load %struct.__mem*, %struct.__mem** %5, align 8
  %36 = getelementptr inbounds %struct.__mem, %struct.__mem* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %33, i64 %34, i32 %37)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %2
  %42 = load i32, i32* %11, align 4
  store i32 %42, i32* %3, align 4
  br label %100

43:                                               ; preds = %2
  %44 = load i64, i64* %8, align 8
  %45 = load i64, i64* @QLC_DMA_CMD_BUFF_ADDR_HI, align 8
  %46 = add nsw i64 %44, %45
  store i64 %46, i64* %9, align 8
  %47 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %47, i64 %48, i32 0)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %43
  %53 = load i32, i32* %11, align 4
  store i32 %53, i32* %3, align 4
  br label %100

54:                                               ; preds = %43
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* @QLC_DMA_CMD_STATUS_CTRL, align 8
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %9, align 8
  %58 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.__mem*, %struct.__mem** %5, align 8
  %61 = getelementptr inbounds %struct.__mem, %struct.__mem* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @qlcnic_ind_wr(%struct.qlcnic_adapter* %58, i64 %59, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* %11, align 4
  store i32 %67, i32* %3, align 4
  br label %100

68:                                               ; preds = %54
  %69 = load i64, i64* %8, align 8
  %70 = load i64, i64* @QLC_DMA_CMD_STATUS_CTRL, align 8
  %71 = add nsw i64 %69, %70
  store i64 %71, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %72

72:                                               ; preds = %87, %68
  %73 = load i32, i32* %10, align 4
  %74 = icmp slt i32 %73, 400
  br i1 %74, label %75, label %90

75:                                               ; preds = %72
  %76 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %77 = load i64, i64* %9, align 8
  %78 = call i32 @qlcnic_ind_rd(%struct.qlcnic_adapter* %76, i64 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* @BIT_1, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = call i32 @usleep_range(i32 250, i32 500)
  br label %86

85:                                               ; preds = %75
  br label %90

86:                                               ; preds = %83
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %10, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %10, align 4
  br label %72

90:                                               ; preds = %85, %72
  %91 = load i32, i32* %10, align 4
  %92 = icmp sge i32 %91, 400
  br i1 %92, label %93, label %98

93:                                               ; preds = %90
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = call i32 @dev_info(%struct.device* %94, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %96 = load i32, i32* @EIO, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %11, align 4
  br label %98

98:                                               ; preds = %93, %90
  %99 = load i32, i32* %11, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %66, %52, %41
  %101 = load i32, i32* %3, align 4
  ret i32 %101
}

declare dso_local i64 @qlcnic_get_saved_state(%struct.qlcnic_adapter*, i8*, i32) #1

declare dso_local i64 @QLC_DMA_REG_BASE_ADDR(i64) #1

declare dso_local i32 @qlcnic_ind_wr(%struct.qlcnic_adapter*, i64, i32) #1

declare dso_local i32 @qlcnic_ind_rd(%struct.qlcnic_adapter*, i64) #1

declare dso_local i32 @usleep_range(i32, i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
