; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c___mmc_send_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_mmc_ops.c___mmc_send_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_card = type { i32, i32 }
%struct.mmc_command = type { i32, i32, i32*, i32 }

@MMC_SEND_STATUS = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R2 = common dso_local global i32 0, align 4
@MMC_RSP_R1 = common dso_local global i32 0, align 4
@MMC_CMD_AC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__mmc_send_status(%struct.mmc_card* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_card*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mmc_command, align 8
  store %struct.mmc_card* %0, %struct.mmc_card** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = bitcast %struct.mmc_command* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  %11 = load i32, i32* @MMC_SEND_STATUS, align 4
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %14 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @mmc_host_is_spi(i32 %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %3
  %19 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 16
  %23 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 0
  store i32 %22, i32* %23, align 8
  br label %24

24:                                               ; preds = %18, %3
  %25 = load i32, i32* @MMC_RSP_SPI_R2, align 4
  %26 = load i32, i32* @MMC_RSP_R1, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @MMC_CMD_AC, align 4
  %29 = or i32 %27, %28
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 1
  store i32 %29, i32* %30, align 4
  %31 = load %struct.mmc_card*, %struct.mmc_card** %5, align 8
  %32 = getelementptr inbounds %struct.mmc_card, %struct.mmc_card* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @mmc_wait_for_cmd(i32 %33, %struct.mmc_command* %9, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %24
  %39 = load i32, i32* %8, align 4
  store i32 %39, i32* %4, align 4
  br label %50

40:                                               ; preds = %24
  %41 = load i32*, i32** %6, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %49

43:                                               ; preds = %40
  %44 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %9, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32*, i32** %6, align 8
  store i32 %47, i32* %48, align 4
  br label %49

49:                                               ; preds = %43, %40
  store i32 0, i32* %4, align 4
  br label %50

50:                                               ; preds = %49, %38
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_host_is_spi(i32) #2

declare dso_local i32 @mmc_wait_for_cmd(i32, %struct.mmc_command*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
