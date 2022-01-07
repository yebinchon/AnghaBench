; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_read_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_mxcmmc.c_mxcmci_read_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mxcmci_host = type { i32, %struct.mmc_command* }
%struct.mmc_command = type { i32, i32*, i32 }

@STATUS_TIME_OUT_RESP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"CMD TIMEOUT\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@STATUS_RESP_CRC_ERR = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"cmd crc error\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@MMC_REG_RES_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mxcmci_host*, i32)* @mxcmci_read_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mxcmci_read_response(%struct.mxcmci_host* %0, i32 %1) #0 {
  %3 = alloca %struct.mxcmci_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_command*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mxcmci_host* %0, %struct.mxcmci_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %11 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %10, i32 0, i32 1
  %12 = load %struct.mmc_command*, %struct.mmc_command** %11, align 8
  store %struct.mmc_command* %12, %struct.mmc_command** %5, align 8
  %13 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %14 = icmp ne %struct.mmc_command* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %116

16:                                               ; preds = %2
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @STATUS_TIME_OUT_RESP, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  %22 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %23 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @mmc_dev(i32 %24)
  %26 = call i32 @dev_dbg(i32 %25, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @ETIMEDOUT, align 4
  %28 = sub nsw i32 0, %27
  %29 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %30 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 8
  br label %54

31:                                               ; preds = %16
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @STATUS_RESP_CRC_ERR, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %53

36:                                               ; preds = %31
  %37 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %38 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @MMC_RSP_CRC, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %53

43:                                               ; preds = %36
  %44 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %45 = getelementptr inbounds %struct.mxcmci_host, %struct.mxcmci_host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @mmc_dev(i32 %46)
  %48 = call i32 @dev_dbg(i32 %47, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EILSEQ, align 4
  %50 = sub nsw i32 0, %49
  %51 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %52 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %51, i32 0, i32 2
  store i32 %50, i32* %52, align 8
  br label %53

53:                                               ; preds = %43, %36, %31
  br label %54

54:                                               ; preds = %53, %21
  %55 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %56 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %116

61:                                               ; preds = %54
  %62 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MMC_RSP_136, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %93

68:                                               ; preds = %61
  store i32 0, i32* %6, align 4
  br label %69

69:                                               ; preds = %89, %68
  %70 = load i32, i32* %6, align 4
  %71 = icmp slt i32 %70, 4
  br i1 %71, label %72, label %92

72:                                               ; preds = %69
  %73 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %74 = load i32, i32* @MMC_REG_RES_FIFO, align 4
  %75 = call i32 @mxcmci_readw(%struct.mxcmci_host* %73, i32 %74)
  store i32 %75, i32* %7, align 4
  %76 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %77 = load i32, i32* @MMC_REG_RES_FIFO, align 4
  %78 = call i32 @mxcmci_readw(%struct.mxcmci_host* %76, i32 %77)
  store i32 %78, i32* %8, align 4
  %79 = load i32, i32* %7, align 4
  %80 = shl i32 %79, 16
  %81 = load i32, i32* %8, align 4
  %82 = or i32 %80, %81
  %83 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %84 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %83, i32 0, i32 1
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %82, i32* %88, align 4
  br label %89

89:                                               ; preds = %72
  %90 = load i32, i32* %6, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %6, align 4
  br label %69

92:                                               ; preds = %69
  br label %115

93:                                               ; preds = %61
  %94 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %95 = load i32, i32* @MMC_REG_RES_FIFO, align 4
  %96 = call i32 @mxcmci_readw(%struct.mxcmci_host* %94, i32 %95)
  store i32 %96, i32* %7, align 4
  %97 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %98 = load i32, i32* @MMC_REG_RES_FIFO, align 4
  %99 = call i32 @mxcmci_readw(%struct.mxcmci_host* %97, i32 %98)
  store i32 %99, i32* %8, align 4
  %100 = load %struct.mxcmci_host*, %struct.mxcmci_host** %3, align 8
  %101 = load i32, i32* @MMC_REG_RES_FIFO, align 4
  %102 = call i32 @mxcmci_readw(%struct.mxcmci_host* %100, i32 %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %7, align 4
  %104 = shl i32 %103, 24
  %105 = load i32, i32* %8, align 4
  %106 = shl i32 %105, 8
  %107 = or i32 %104, %106
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 8
  %110 = or i32 %107, %109
  %111 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %112 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %111, i32 0, i32 1
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  store i32 %110, i32* %114, align 4
  br label %115

115:                                              ; preds = %93, %92
  br label %116

116:                                              ; preds = %15, %115, %54
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mxcmci_readw(%struct.mxcmci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
