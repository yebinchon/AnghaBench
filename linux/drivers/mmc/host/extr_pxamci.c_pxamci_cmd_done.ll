; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_pxamci.c_pxamci_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxamci_host = type { i32, i32, %struct.TYPE_2__*, i64, %struct.mmc_command* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_command = type { i32*, i32, i32, i32 }

@MMC_RES = common dso_local global i64 0, align 8
@STAT_TIME_OUT_RESPONSE = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@STAT_RES_CRC_ERR = common dso_local global i32 0, align 4
@MMC_RSP_CRC = common dso_local global i32 0, align 4
@MMC_RSP_136 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"ignoring CRC from command %d - *risky*\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@END_CMD_RES = common dso_local global i32 0, align 4
@DATA_TRAN_DONE = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pxamci_host*, i32)* @pxamci_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pxamci_cmd_done(%struct.pxamci_host* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pxamci_host*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pxamci_host* %0, %struct.pxamci_host** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %12 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %11, i32 0, i32 4
  %13 = load %struct.mmc_command*, %struct.mmc_command** %12, align 8
  store %struct.mmc_command* %13, %struct.mmc_command** %6, align 8
  %14 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %15 = icmp ne %struct.mmc_command* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %156

17:                                               ; preds = %2
  %18 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %19 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %18, i32 0, i32 4
  store %struct.mmc_command* null, %struct.mmc_command** %19, align 8
  %20 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %21 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %20, i32 0, i32 3
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MMC_RES, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @readl(i64 %24)
  %26 = and i32 %25, 65535
  store i32 %26, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %27

27:                                               ; preds = %60, %17
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 4
  br i1 %29, label %30, label %63

30:                                               ; preds = %27
  %31 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %32 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @MMC_RES, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @readl(i64 %35)
  %37 = and i32 %36, 65535
  store i32 %37, i32* %9, align 4
  %38 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %39 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MMC_RES, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @readl(i64 %42)
  %44 = and i32 %43, 65535
  store i32 %44, i32* %10, align 4
  %45 = load i32, i32* %8, align 4
  %46 = shl i32 %45, 24
  %47 = load i32, i32* %9, align 4
  %48 = shl i32 %47, 8
  %49 = or i32 %46, %48
  %50 = load i32, i32* %10, align 4
  %51 = ashr i32 %50, 8
  %52 = or i32 %49, %51
  %53 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %54 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %52, i32* %58, align 4
  %59 = load i32, i32* %10, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %30
  %61 = load i32, i32* %7, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %7, align 4
  br label %27

63:                                               ; preds = %27
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @STAT_TIME_OUT_RESPONSE, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load i32, i32* @ETIMEDOUT, align 4
  %70 = sub nsw i32 0, %69
  %71 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %72 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %71, i32 0, i32 2
  store i32 %70, i32* %72, align 4
  br label %115

73:                                               ; preds = %63
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @STAT_RES_CRC_ERR, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %114

78:                                               ; preds = %73
  %79 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %80 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @MMC_RSP_CRC, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %114

85:                                               ; preds = %78
  %86 = call i64 (...) @cpu_is_pxa27x()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %108

88:                                               ; preds = %85
  %89 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %90 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @MMC_RSP_136, align 4
  %93 = and i32 %91, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %108

95:                                               ; preds = %88
  %96 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %97 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %100, -2147483648
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %108

103:                                              ; preds = %95
  %104 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %105 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @pr_debug(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %106)
  br label %113

108:                                              ; preds = %95, %88, %85
  %109 = load i32, i32* @EILSEQ, align 4
  %110 = sub nsw i32 0, %109
  %111 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %112 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  br label %113

113:                                              ; preds = %108, %103
  br label %114

114:                                              ; preds = %113, %78, %73
  br label %115

115:                                              ; preds = %114, %68
  %116 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %117 = load i32, i32* @END_CMD_RES, align 4
  %118 = call i32 @pxamci_disable_irq(%struct.pxamci_host* %116, i32 %117)
  %119 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %120 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = icmp ne %struct.TYPE_2__* %121, null
  br i1 %122, label %123, label %149

123:                                              ; preds = %115
  %124 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %125 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %149, label %128

128:                                              ; preds = %123
  %129 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %130 = load i32, i32* @DATA_TRAN_DONE, align 4
  %131 = call i32 @pxamci_enable_irq(%struct.pxamci_host* %129, i32 %130)
  %132 = call i64 (...) @cpu_is_pxa27x()
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %134, label %148

134:                                              ; preds = %128
  %135 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %136 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %135, i32 0, i32 2
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @MMC_DATA_WRITE, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %134
  %144 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %145 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %144, i32 0, i32 1
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @dma_async_issue_pending(i32 %146)
  br label %148

148:                                              ; preds = %143, %134, %128
  br label %155

149:                                              ; preds = %123, %115
  %150 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %151 = load %struct.pxamci_host*, %struct.pxamci_host** %4, align 8
  %152 = getelementptr inbounds %struct.pxamci_host, %struct.pxamci_host* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = call i32 @pxamci_finish_request(%struct.pxamci_host* %150, i32 %153)
  br label %155

155:                                              ; preds = %149, %148
  store i32 1, i32* %3, align 4
  br label %156

156:                                              ; preds = %155, %16
  %157 = load i32, i32* %3, align 4
  ret i32 %157
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @cpu_is_pxa27x(...) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @pxamci_disable_irq(%struct.pxamci_host*, i32) #1

declare dso_local i32 @pxamci_enable_irq(%struct.pxamci_host*, i32) #1

declare dso_local i32 @dma_async_issue_pending(i32) #1

declare dso_local i32 @pxamci_finish_request(%struct.pxamci_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
