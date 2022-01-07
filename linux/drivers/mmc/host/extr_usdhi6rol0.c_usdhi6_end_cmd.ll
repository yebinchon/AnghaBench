; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_end_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_usdhi6rol0.c_usdhi6_end_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usdhi6_host = type { i32, i64, i64, %struct.mmc_request* }
%struct.mmc_request = type { %struct.TYPE_2__*, i32, %struct.mmc_command* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mmc_command = type { i64, i32 }

@USDHI6_WAIT_FOR_DMA = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@MMC_READ_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@SD_IO_RW_EXTENDED = common dso_local global i64 0, align 8
@USDHI6_WAIT_FOR_MREAD = common dso_local global i32 0, align 4
@USDHI6_WAIT_FOR_READ = common dso_local global i32 0, align 4
@MMC_WRITE_MULTIPLE_BLOCK = common dso_local global i64 0, align 8
@USDHI6_WAIT_FOR_MWRITE = common dso_local global i32 0, align 4
@USDHI6_WAIT_FOR_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usdhi6_host*)* @usdhi6_end_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usdhi6_end_cmd(%struct.usdhi6_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usdhi6_host*, align 8
  %4 = alloca %struct.mmc_request*, align 8
  %5 = alloca %struct.mmc_command*, align 8
  store %struct.usdhi6_host* %0, %struct.usdhi6_host** %3, align 8
  %6 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %7 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %6, i32 0, i32 3
  %8 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  store %struct.mmc_request* %8, %struct.mmc_request** %4, align 8
  %9 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %10 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %9, i32 0, i32 2
  %11 = load %struct.mmc_command*, %struct.mmc_command** %10, align 8
  store %struct.mmc_command* %11, %struct.mmc_command** %5, align 8
  %12 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %13 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %18 = call i32 @usdhi6_error_code(%struct.usdhi6_host* %17)
  %19 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %20 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  store i32 0, i32* %2, align 4
  br label %119

21:                                               ; preds = %1
  %22 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %23 = call i32 @usdhi6_resp_read(%struct.usdhi6_host* %22)
  %24 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = icmp ne %struct.TYPE_2__* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %119

29:                                               ; preds = %21
  %30 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %31 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %36 = call i32 @usdhi6_dma_kick(%struct.usdhi6_host* %35)
  %37 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %38 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %34
  %42 = load i32, i32* @USDHI6_WAIT_FOR_DMA, align 4
  %43 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %44 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %51

45:                                               ; preds = %34
  %46 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %47 = call i64 @usdhi6_stop_cmd(%struct.usdhi6_host* %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  store i32 0, i32* %2, align 4
  br label %119

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %41
  br label %118

52:                                               ; preds = %29
  %53 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %54 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @MMC_DATA_READ, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %89

61:                                               ; preds = %52
  %62 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %63 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @MMC_READ_MULTIPLE_BLOCK, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %80, label %67

67:                                               ; preds = %61
  %68 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %69 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SD_IO_RW_EXTENDED, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %67
  %74 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %75 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %74, i32 0, i32 0
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %84

80:                                               ; preds = %73, %61
  %81 = load i32, i32* @USDHI6_WAIT_FOR_MREAD, align 4
  %82 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %83 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %88

84:                                               ; preds = %73, %67
  %85 = load i32, i32* @USDHI6_WAIT_FOR_READ, align 4
  %86 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %87 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %86, i32 0, i32 0
  store i32 %85, i32* %87, align 8
  br label %88

88:                                               ; preds = %84, %80
  br label %117

89:                                               ; preds = %52
  %90 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %91 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* @MMC_WRITE_MULTIPLE_BLOCK, align 8
  %94 = icmp eq i64 %92, %93
  br i1 %94, label %108, label %95

95:                                               ; preds = %89
  %96 = load %struct.mmc_command*, %struct.mmc_command** %5, align 8
  %97 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @SD_IO_RW_EXTENDED, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %112

101:                                              ; preds = %95
  %102 = load %struct.mmc_request*, %struct.mmc_request** %4, align 8
  %103 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = icmp sgt i32 %106, 1
  br i1 %107, label %108, label %112

108:                                              ; preds = %101, %89
  %109 = load i32, i32* @USDHI6_WAIT_FOR_MWRITE, align 4
  %110 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %111 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %110, i32 0, i32 0
  store i32 %109, i32* %111, align 8
  br label %116

112:                                              ; preds = %101, %95
  %113 = load i32, i32* @USDHI6_WAIT_FOR_WRITE, align 4
  %114 = load %struct.usdhi6_host*, %struct.usdhi6_host** %3, align 8
  %115 = getelementptr inbounds %struct.usdhi6_host, %struct.usdhi6_host* %114, i32 0, i32 0
  store i32 %113, i32* %115, align 8
  br label %116

116:                                              ; preds = %112, %108
  br label %117

117:                                              ; preds = %116, %88
  br label %118

118:                                              ; preds = %117, %51
  store i32 1, i32* %2, align 4
  br label %119

119:                                              ; preds = %118, %49, %28, %16
  %120 = load i32, i32* %2, align 4
  ret i32 %120
}

declare dso_local i32 @usdhi6_error_code(%struct.usdhi6_host*) #1

declare dso_local i32 @usdhi6_resp_read(%struct.usdhi6_host*) #1

declare dso_local i32 @usdhi6_dma_kick(%struct.usdhi6_host*) #1

declare dso_local i64 @usdhi6_stop_cmd(%struct.usdhi6_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
