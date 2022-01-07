; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_app_set_bus_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_app_set_bus_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_command = type { i32, i32, i32 }

@SD_APP_SET_BUS_WIDTH = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_1 = common dso_local global i32 0, align 4
@SD_BUS_WIDTH_4 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_app_set_bus_width(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = bitcast %struct.mmc_command* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load i32, i32* @SD_APP_SET_BUS_WIDTH, align 4
  %9 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  store i32 %8, i32* %9, align 4
  %10 = load i32, i32* @MMC_RSP_R1, align 4
  %11 = load i32, i32* @MMC_CMD_AC, align 4
  %12 = or i32 %10, %11
  %13 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 128, label %18
  ]

15:                                               ; preds = %2
  %16 = load i32, i32* @SD_BUS_WIDTH_1, align 4
  %17 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load i32, i32* @SD_BUS_WIDTH_4, align 4
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %30

24:                                               ; preds = %18, %15
  %25 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %26 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %29 = call i32 @mmc_wait_for_app_cmd(i32 %27, %struct.mmc_card* %28, %struct.mmc_command* %6)
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %24, %21
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_wait_for_app_cmd(i32, %struct.mmc_card*, %struct.mmc_command*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
