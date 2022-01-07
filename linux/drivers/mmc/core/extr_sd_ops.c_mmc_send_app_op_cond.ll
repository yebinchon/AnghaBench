; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_send_app_op_cond.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/core/extr_sd_ops.c_mmc_send_app_op_cond.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_command = type { i32, i32, i32*, i32 }

@SD_APP_OP_COND = common dso_local global i32 0, align 4
@MMC_RSP_SPI_R1 = common dso_local global i32 0, align 4
@MMC_RSP_R3 = common dso_local global i32 0, align 4
@MMC_CMD_BCR = common dso_local global i32 0, align 4
@R1_SPI_IDLE = common dso_local global i32 0, align 4
@MMC_CARD_BUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"%s: card never left busy state\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mmc_send_app_op_cond(%struct.mmc_host* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.mmc_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.mmc_command, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %10 = bitcast %struct.mmc_command* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 24, i1 false)
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @SD_APP_OP_COND, align 4
  %12 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 3
  store i32 %11, i32* %12, align 8
  %13 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %14 = call i64 @mmc_host_is_spi(%struct.mmc_host* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 1073741824
  %19 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %5, align 4
  %22 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* @MMC_RSP_SPI_R1, align 4
  %25 = load i32, i32* @MMC_RSP_R3, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @MMC_CMD_BCR, align 4
  %28 = or i32 %26, %27
  %29 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 1
  store i32 %28, i32* %29, align 4
  store i32 100, i32* %8, align 4
  br label %30

30:                                               ; preds = %71, %23
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %74

33:                                               ; preds = %30
  %34 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %35 = call i32 @mmc_wait_for_app_cmd(%struct.mmc_host* %34, i32* null, %struct.mmc_command* %7)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %74

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %39
  br label %74

43:                                               ; preds = %39
  %44 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %45 = call i64 @mmc_host_is_spi(%struct.mmc_host* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @R1_SPI_IDLE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %47
  br label %74

56:                                               ; preds = %47
  br label %67

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @MMC_CARD_BUSY, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  br label %74

66:                                               ; preds = %57
  br label %67

67:                                               ; preds = %66, %56
  %68 = load i32, i32* @ETIMEDOUT, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %9, align 4
  %70 = call i32 @mmc_delay(i32 10)
  br label %71

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = add nsw i32 %72, -1
  store i32 %73, i32* %8, align 4
  br label %30

74:                                               ; preds = %65, %55, %42, %38, %30
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %74
  %78 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %79 = call i32 @mmc_hostname(%struct.mmc_host* %78)
  %80 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %81

81:                                               ; preds = %77, %74
  %82 = load i32*, i32** %6, align 8
  %83 = icmp ne i32* %82, null
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = load %struct.mmc_host*, %struct.mmc_host** %4, align 8
  %86 = call i64 @mmc_host_is_spi(%struct.mmc_host* %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %84
  %89 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %7, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32*, i32** %6, align 8
  store i32 %92, i32* %93, align 4
  br label %94

94:                                               ; preds = %88, %84, %81
  %95 = load i32, i32* %9, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @mmc_host_is_spi(%struct.mmc_host*) #2

declare dso_local i32 @mmc_wait_for_app_cmd(%struct.mmc_host*, i32*, %struct.mmc_command*) #2

declare dso_local i32 @mmc_delay(i32) #2

declare dso_local i32 @pr_err(i8*, i32) #2

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
