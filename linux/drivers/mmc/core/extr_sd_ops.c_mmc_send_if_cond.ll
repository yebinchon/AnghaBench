; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_send_if_cond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_send_if_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32*, i32 }

@mmc_send_if_cond.test_pattern = internal constant i32 170, align 4
@SD_SEND_IF_COND = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R7 = common dso_local global i32 0, align 4
@MMC_RSP_R7 = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_if_cond(%struct.mmc_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = bitcast %struct.mmc_command* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 24, i1 false)
  %10 = load i32, i32* @SD_SEND_IF_COND, align 4
  %11 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 3
  store i32 %10, i32* %11, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 16744448
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  %16 = shl i32 %15, 8
  %17 = or i32 %16, 170
  %18 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 0
  store i32 %17, i32* %18, align 8
  %19 = load i32, i32* @MMC_RSP_SPI_R7, align 4
  %20 = load i32, i32* @MMC_RSP_R7, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @MMC_CMD_BCR, align 4
  %23 = or i32 %21, %22
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 1
  store i32 %23, i32* %24, align 4
  %25 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %26 = call i32 @mmc_wait_for_cmd(%struct.mmc_host* %25, %struct.mmc_command* %6, i32 0)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %2
  %30 = load i32, i32* %7, align 4
  store i32 %30, i32* %3, align 4
  br label %54

31:                                               ; preds = %2
  %32 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %33 = call i64 @mmc_host_is_spi(%struct.mmc_host* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, 255
  store i32 %40, i32* %8, align 4
  br label %47

41:                                               ; preds = %31
  %42 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %6, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = and i32 %45, 255
  store i32 %46, i32* %8, align 4
  br label %47

47:                                               ; preds = %41, %35
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 170
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %3, align 4
  br label %54

53:                                               ; preds = %47
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %50, %29
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @mmc_wait_for_cmd(%struct.mmc_host*, %struct.mmc_command*, i32) #2

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
