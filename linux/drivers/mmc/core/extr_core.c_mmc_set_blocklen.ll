; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_blocklen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_core.c_mmc_set_blocklen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32 }
%struct.mmc_command = type { i32, i32, i32 }

@MMC_SET_BLOCKLEN = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_set_blocklen(%struct.mmc_card* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_card*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command, align 4
  store %struct.mmc_card* %0, %struct.mmc_card** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = bitcast %struct.mmc_command* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 12, i1 false)
  %8 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %9 = call i64 @mmc_card_blockaddr(%struct.mmc_card* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %2
  %12 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %13 = call i64 @mmc_card_ddr52(%struct.mmc_card* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %23, label %15

15:                                               ; preds = %11
  %16 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %17 = call i64 @mmc_card_hs400(%struct.mmc_card* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %21 = call i64 @mmc_card_hs400es(%struct.mmc_card* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19, %15, %11, %2
  store i32 0, i32* %3, align 4
  br label %39

24:                                               ; preds = %19
  %25 = load i32, i32* @MMC_SET_BLOCKLEN, align 4
  %26 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %5, align 4
  %28 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %30 = load i32, i32* @MMC_RSP_R1, align 4
  %31 = or i32 %29, %30
  %32 = load i32, i32* @MMC_CMD_AC, align 4
  %33 = or i32 %31, %32
  %34 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  store i32 %33, i32* %34, align 4
  %35 = load %struct.mmc_card*, %struct.mmc_card** %4, align 8
  %36 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @mmc_wait_for_cmd(i32 %37, %struct.mmc_command* %6, i32 5)
  store i32 %38, i32* %3, align 4
  br label %39

39:                                               ; preds = %24, %23
  %40 = load i32, i32* %3, align 4
  ret i32 %40
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mmc_card_blockaddr(%struct.mmc_card*) #2

declare dso_local i64 @mmc_card_ddr52(%struct.mmc_card*) #2

declare dso_local i64 @mmc_card_hs400(%struct.mmc_card*) #2

declare dso_local i64 @mmc_card_hs400es(%struct.mmc_card*) #2

declare dso_local i32 @mmc_wait_for_cmd(i32, %struct.mmc_command*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
