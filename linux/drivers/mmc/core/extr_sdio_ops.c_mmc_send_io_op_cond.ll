; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_ops.c_mmc_send_io_op_cond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sdio_ops.c_mmc_send_io_op_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32*, i64, i32 }

@SD_IO_SEND_OP_COND = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R4 = common dso_local global i32 0, align 4
@MMC_RSP_R4 = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i32 0, align 4
@MMC_CMD_RETRIES = common dso_local global i32 0, align 4
@MMC_CARD_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_io_op_cond(%struct.mmc_host* %0, i64 %1, i64* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.mmc_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64* %2, i64** %6, align 8
  %10 = bitcast %struct.mmc_command* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 32, i1 false)
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @SD_IO_SEND_OP_COND, align 4
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = load i64, i64* %5, align 8
  %14 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  store i64 %13, i64* %14, align 8
  %15 = load i32, i32* @MMC_RSP_SPI_R4, align 4
  %16 = load i32, i32* @MMC_RSP_R4, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @MMC_CMD_BCR, align 4
  %19 = or i32 %17, %18
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %19, i32* %20, align 8
  store i32 100, i32* %8, align 4
  br label %21

21:                                               ; preds = %63, %3
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %66

24:                                               ; preds = %21
  %25 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %26 = load i32, i32* @MMC_CMD_RETRIES, align 4
  %27 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %25, %struct.mmc_command* %7, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %66

31:                                               ; preds = %24
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  br label %66

35:                                               ; preds = %31
  %36 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %37 = call i64 @mmc_host_is_spi(%struct.mmc_host* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %35
  %40 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MMC_CARD_BUSY, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %66

48:                                               ; preds = %39
  br label %59

49:                                               ; preds = %35
  %50 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @MMC_CARD_BUSY, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %66

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %48
  %60 = load i32, i32* @ETIMEDOUT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %9, align 4
  %62 = call i32 @mmc_delay(i32 10)
  br label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %8, align 4
  %65 = add nsw i32 %64, -1
  store i32 %65, i32* %8, align 4
  br label %21

66:                                               ; preds = %57, %47, %34, %30, %21
  %67 = load i64*, i64** %6, align 8
  %68 = icmp ne i64* %67, null
  br i1 %68, label %69, label %82

69:                                               ; preds = %66
  %70 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %73 = call i64 @mmc_host_is_spi(%struct.mmc_host* %72)
  %74 = icmp ne i64 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 1, i32 0
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %71, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i64*, i64** %6, align 8
  store i64 %80, i64* %81, align 8
  br label %82

82:                                               ; preds = %69, %66
  %83 = load i32, i32* %9, align 4
  ret i32 %83
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #2

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #2

declare dso_local i32 @mmc_delay(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
