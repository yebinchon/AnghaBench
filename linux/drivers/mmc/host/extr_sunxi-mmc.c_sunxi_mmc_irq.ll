; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_sunxi-mmc.c_sunxi_mmc_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sunxi_mmc_host = type { i32, i32, i32, i32, i32, %struct.mmc_request* }
%struct.mmc_request = type { i32 }

@IRQ_HANDLED = common dso_local global i64 0, align 8
@REG_IDST = common dso_local global i32 0, align 4
@REG_MISTA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"irq: rq %p mi %08x idi %08x\0A\00", align 1
@SDXC_IDMAC_RECEIVE_INTERRUPT = common dso_local global i32 0, align 4
@SDXC_RESP_TIMEOUT = common dso_local global i32 0, align 4
@SDXC_COMMAND_DONE = common dso_local global i32 0, align 4
@REG_IMASK = common dso_local global i32 0, align 4
@SDXC_INTERRUPT_ERROR_BIT = common dso_local global i32 0, align 4
@SDXC_INTERRUPT_DONE_BIT = common dso_local global i32 0, align 4
@SDXC_SDIO_INTERRUPT = common dso_local global i32 0, align 4
@REG_RINTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, i8*)* @sunxi_mmc_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @sunxi_mmc_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sunxi_mmc_host*, align 8
  %6 = alloca %struct.mmc_request*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.sunxi_mmc_host*
  store %struct.sunxi_mmc_host* %13, %struct.sunxi_mmc_host** %5, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %14 = load i64, i64* @IRQ_HANDLED, align 8
  store i64 %14, i64* %11, align 8
  %15 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %16 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %15, i32 0, i32 4
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %19 = load i32, i32* @REG_IDST, align 4
  %20 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %18, i32 %19)
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %22 = load i32, i32* @REG_MISTA, align 4
  %23 = call i32 @mmc_readl(%struct.sunxi_mmc_host* %21, i32 %22)
  store i32 %23, i32* %7, align 4
  %24 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %25 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @mmc_dev(i32 %26)
  %28 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %29 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %28, i32 0, i32 5
  %30 = load %struct.mmc_request*, %struct.mmc_request** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @dev_dbg(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.mmc_request* %30, i32 %31, i32 %32)
  %34 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %35 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %34, i32 0, i32 5
  %36 = load %struct.mmc_request*, %struct.mmc_request** %35, align 8
  store %struct.mmc_request* %36, %struct.mmc_request** %6, align 8
  %37 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %38 = icmp ne %struct.mmc_request* %37, null
  br i1 %38, label %39, label %99

39:                                               ; preds = %2
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @SDXC_IDMAC_RECEIVE_INTERRUPT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %46 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  br label %47

47:                                               ; preds = %44, %39
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %50 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = or i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %54 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @SDXC_RESP_TIMEOUT, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %47
  %60 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %61 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SDXC_COMMAND_DONE, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %75, label %66

66:                                               ; preds = %59
  %67 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %68 = load i32, i32* @REG_IMASK, align 4
  %69 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %70 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SDXC_COMMAND_DONE, align 4
  %73 = or i32 %71, %72
  %74 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %67, i32 %68, i32 %73)
  br label %98

75:                                               ; preds = %59, %47
  %76 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %77 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @SDXC_INTERRUPT_ERROR_BIT, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %75
  store i32 1, i32* %9, align 4
  br label %97

83:                                               ; preds = %75
  %84 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %85 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @SDXC_INTERRUPT_DONE_BIT, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %83
  %91 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %92 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %90
  store i32 1, i32* %9, align 4
  br label %96

96:                                               ; preds = %95, %90, %83
  br label %97

97:                                               ; preds = %96, %82
  br label %98

98:                                               ; preds = %97, %66
  br label %99

99:                                               ; preds = %98, %2
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @SDXC_SDIO_INTERRUPT, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %99
  store i32 1, i32* %10, align 4
  br label %105

105:                                              ; preds = %104, %99
  %106 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %107 = load i32, i32* @REG_RINTR, align 4
  %108 = load i32, i32* %7, align 4
  %109 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %106, i32 %107, i32 %108)
  %110 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %111 = load i32, i32* @REG_IDST, align 4
  %112 = load i32, i32* %8, align 4
  %113 = call i32 @mmc_writel(%struct.sunxi_mmc_host* %110, i32 %111, i32 %112)
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %119

116:                                              ; preds = %105
  %117 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %118 = call i64 @sunxi_mmc_finalize_request(%struct.sunxi_mmc_host* %117)
  store i64 %118, i64* %11, align 8
  br label %119

119:                                              ; preds = %116, %105
  %120 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %121 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %120, i32 0, i32 4
  %122 = call i32 @spin_unlock(i32* %121)
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %135

125:                                              ; preds = %119
  %126 = load i64, i64* %11, align 8
  %127 = load i64, i64* @IRQ_HANDLED, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %135

129:                                              ; preds = %125
  %130 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %131 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %130, i32 0, i32 3
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.mmc_request*, %struct.mmc_request** %6, align 8
  %134 = call i32 @mmc_request_done(i32 %132, %struct.mmc_request* %133)
  br label %135

135:                                              ; preds = %129, %125, %119
  %136 = load i32, i32* %10, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %143

138:                                              ; preds = %135
  %139 = load %struct.sunxi_mmc_host*, %struct.sunxi_mmc_host** %5, align 8
  %140 = getelementptr inbounds %struct.sunxi_mmc_host, %struct.sunxi_mmc_host* %139, i32 0, i32 3
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @mmc_signal_sdio_irq(i32 %141)
  br label %143

143:                                              ; preds = %138, %135
  %144 = load i64, i64* %11, align 8
  ret i64 %144
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @mmc_readl(%struct.sunxi_mmc_host*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.mmc_request*, i32, i32) #1

declare dso_local i32 @mmc_dev(i32) #1

declare dso_local i32 @mmc_writel(%struct.sunxi_mmc_host*, i32, i32) #1

declare dso_local i64 @sunxi_mmc_finalize_request(%struct.sunxi_mmc_host*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mmc_request_done(i32, %struct.mmc_request*) #1

declare dso_local i32 @mmc_signal_sdio_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
