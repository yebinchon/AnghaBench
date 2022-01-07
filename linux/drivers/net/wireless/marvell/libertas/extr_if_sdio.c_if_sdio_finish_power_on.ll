; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_finish_power_on.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/libertas/extr_if_sdio.c_if_sdio_finish_power_on.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_sdio_card = type { i64, i32, i32, i64, %struct.sdio_func*, %struct.lbs_private* }
%struct.sdio_func = type { i32 }
%struct.lbs_private = type { i32, i32 }
%struct.cmd_header = type { i32 }

@IF_SDIO_BLOCK_SIZE = common dso_local global i32 0, align 4
@MODEL_8385 = common dso_local global i64 0, align 8
@MODEL_8686 = common dso_local global i64 0, align 8
@if_sdio_interrupt = common dso_local global i32 0, align 4
@IF_SDIO_H_INT_MASK = common dso_local global i32 0, align 4
@MODEL_8688 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [28 x i8] c"send function INIT command\0A\00", align 1
@CMD_FUNC_INIT = common dso_local global i32 0, align 4
@lbs_cmd_copyback = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"CMD_FUNC_INIT cmd failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_sdio_card*)* @if_sdio_finish_power_on to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @if_sdio_finish_power_on(%struct.if_sdio_card* %0) #0 {
  %2 = alloca %struct.if_sdio_card*, align 8
  %3 = alloca %struct.sdio_func*, align 8
  %4 = alloca %struct.lbs_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.cmd_header, align 4
  store %struct.if_sdio_card* %0, %struct.if_sdio_card** %2, align 8
  %7 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %8 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %7, i32 0, i32 4
  %9 = load %struct.sdio_func*, %struct.sdio_func** %8, align 8
  store %struct.sdio_func* %9, %struct.sdio_func** %3, align 8
  %10 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %11 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %10, i32 0, i32 5
  %12 = load %struct.lbs_private*, %struct.lbs_private** %11, align 8
  store %struct.lbs_private* %12, %struct.lbs_private** %4, align 8
  %13 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %14 = call i32 @sdio_claim_host(%struct.sdio_func* %13)
  %15 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %16 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %15, i32 0, i32 4
  %17 = load %struct.sdio_func*, %struct.sdio_func** %16, align 8
  %18 = load i32, i32* @IF_SDIO_BLOCK_SIZE, align 4
  %19 = call i32 @sdio_set_block_size(%struct.sdio_func* %17, i32 %18)
  %20 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %21 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MODEL_8385, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %36

25:                                               ; preds = %1
  %26 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %27 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MODEL_8686, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %25
  %32 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %33 = call i64 @if_sdio_read_rx_unit(%struct.if_sdio_card* %32)
  %34 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %35 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %34, i32 0, i32 3
  store i64 %33, i64* %35, align 8
  br label %39

36:                                               ; preds = %25, %1
  %37 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %38 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  br label %39

39:                                               ; preds = %36, %31
  %40 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %41 = load i32, i32* @if_sdio_interrupt, align 4
  %42 = call i32 @sdio_claim_irq(%struct.sdio_func* %40, i32 %41)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %104

46:                                               ; preds = %39
  %47 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %48 = load i32, i32* @IF_SDIO_H_INT_MASK, align 4
  %49 = call i32 @sdio_writeb(%struct.sdio_func* %47, i32 15, i32 %48, i32* %5)
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  br label %101

53:                                               ; preds = %46
  %54 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %55 = call i32 @sdio_release_host(%struct.sdio_func* %54)
  %56 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %57 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %56, i32 0, i32 0
  store i32 1, i32* %57, align 4
  %58 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %59 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MODEL_8688, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %78

63:                                               ; preds = %53
  %64 = call i32 @memset(%struct.cmd_header* %6, i32 0, i32 4)
  %65 = call i32 @lbs_deb_sdio(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %66 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %67 = load i32, i32* @CMD_FUNC_INIT, align 4
  %68 = load i32, i32* @lbs_cmd_copyback, align 4
  %69 = ptrtoint %struct.cmd_header* %6 to i64
  %70 = call i64 @__lbs_cmd(%struct.lbs_private* %66, i32 %67, %struct.cmd_header* %6, i32 4, i32 %68, i64 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %77

72:                                               ; preds = %63
  %73 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %74 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @netdev_alert(i32 %75, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %77

77:                                               ; preds = %72, %63
  br label %78

78:                                               ; preds = %77, %53
  %79 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %80 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %79, i32 0, i32 2
  %81 = call i32 @wake_up(i32* %80)
  %82 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %83 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %100, label %86

86:                                               ; preds = %78
  %87 = load %struct.lbs_private*, %struct.lbs_private** %4, align 8
  %88 = call i32 @lbs_start_card(%struct.lbs_private* %87)
  store i32 %88, i32* %5, align 4
  %89 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %90 = call i32 @if_sdio_power_off(%struct.if_sdio_card* %89)
  %91 = load i32, i32* %5, align 4
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.if_sdio_card*, %struct.if_sdio_card** %2, align 8
  %95 = getelementptr inbounds %struct.if_sdio_card, %struct.if_sdio_card* %94, i32 0, i32 1
  store i32 1, i32* %95, align 8
  %96 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %97 = getelementptr inbounds %struct.sdio_func, %struct.sdio_func* %96, i32 0, i32 0
  %98 = call i32 @pm_runtime_put(i32* %97)
  br label %99

99:                                               ; preds = %93, %86
  br label %100

100:                                              ; preds = %99, %78
  br label %107

101:                                              ; preds = %52
  %102 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %103 = call i32 @sdio_release_irq(%struct.sdio_func* %102)
  br label %104

104:                                              ; preds = %101, %45
  %105 = load %struct.sdio_func*, %struct.sdio_func** %3, align 8
  %106 = call i32 @sdio_release_host(%struct.sdio_func* %105)
  br label %107

107:                                              ; preds = %104, %100
  ret void
}

declare dso_local i32 @sdio_claim_host(%struct.sdio_func*) #1

declare dso_local i32 @sdio_set_block_size(%struct.sdio_func*, i32) #1

declare dso_local i64 @if_sdio_read_rx_unit(%struct.if_sdio_card*) #1

declare dso_local i32 @sdio_claim_irq(%struct.sdio_func*, i32) #1

declare dso_local i32 @sdio_writeb(%struct.sdio_func*, i32, i32, i32*) #1

declare dso_local i32 @sdio_release_host(%struct.sdio_func*) #1

declare dso_local i32 @memset(%struct.cmd_header*, i32, i32) #1

declare dso_local i32 @lbs_deb_sdio(i8*) #1

declare dso_local i64 @__lbs_cmd(%struct.lbs_private*, i32, %struct.cmd_header*, i32, i32, i64) #1

declare dso_local i32 @netdev_alert(i32, i8*) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @lbs_start_card(%struct.lbs_private*) #1

declare dso_local i32 @if_sdio_power_off(%struct.if_sdio_card*) #1

declare dso_local i32 @pm_runtime_put(i32*) #1

declare dso_local i32 @sdio_release_irq(%struct.sdio_func*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
