; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz_mmc_irq_worker.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_jz4740_mmc.c_jz_mmc_irq_worker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jz4740_mmc_host = type { i32, i32, %struct.mmc_request* }
%struct.mmc_request = type { i32, %struct.mmc_command* }
%struct.mmc_command = type { i32, i64, %struct.mmc_data* }
%struct.mmc_data = type { i32, i32, i32, i32 }

@MMC_RSP_PRESENT = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@JZ_MMC_IRQ_DATA_TRAN_DONE = common dso_local global i32 0, align 4
@MMC_RSP_BUSY = common dso_local global i32 0, align 4
@JZ_MMC_IRQ_PRG_DONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @jz_mmc_irq_worker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jz_mmc_irq_worker(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.jz4740_mmc_host*, align 8
  %6 = alloca %struct.mmc_command*, align 8
  %7 = alloca %struct.mmc_request*, align 8
  %8 = alloca %struct.mmc_data*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.jz4740_mmc_host*
  store %struct.jz4740_mmc_host* %11, %struct.jz4740_mmc_host** %5, align 8
  %12 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %13 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %12, i32 0, i32 2
  %14 = load %struct.mmc_request*, %struct.mmc_request** %13, align 8
  %15 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %14, i32 0, i32 1
  %16 = load %struct.mmc_command*, %struct.mmc_command** %15, align 8
  store %struct.mmc_command* %16, %struct.mmc_command** %6, align 8
  %17 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %18 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %17, i32 0, i32 2
  %19 = load %struct.mmc_request*, %struct.mmc_request** %18, align 8
  store %struct.mmc_request* %19, %struct.mmc_request** %7, align 8
  %20 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %21 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %20, i32 0, i32 2
  %22 = load %struct.mmc_data*, %struct.mmc_data** %21, align 8
  store %struct.mmc_data* %22, %struct.mmc_data** %8, align 8
  store i32 0, i32* %9, align 4
  %23 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %24 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %29 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %28, i32 0, i32 0
  store i32 131, i32* %29, align 8
  br label %30

30:                                               ; preds = %27, %2
  %31 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %32 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %141 [
    i32 130, label %34
    i32 128, label %52
    i32 129, label %110
    i32 131, label %140
  ]

34:                                               ; preds = %30
  %35 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %36 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @MMC_RSP_PRESENT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %43 = load %struct.mmc_command*, %struct.mmc_command** %6, align 8
  %44 = call i32 @jz4740_mmc_read_response(%struct.jz4740_mmc_host* %42, %struct.mmc_command* %43)
  br label %45

45:                                               ; preds = %41, %34
  %46 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %47 = icmp ne %struct.mmc_data* %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  br label %141

49:                                               ; preds = %45
  %50 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %51 = call i32 @jz_mmc_prepare_data_transfer(%struct.jz4740_mmc_host* %50)
  br label %52

52:                                               ; preds = %30, %49
  %53 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %54 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %70

57:                                               ; preds = %52
  %58 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %59 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %60 = call i32 @jz4740_mmc_start_dma_transfer(%struct.jz4740_mmc_host* %58, %struct.mmc_data* %59)
  store i32 %60, i32* %9, align 4
  %61 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %62 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %63, %66
  %68 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %69 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %86

70:                                               ; preds = %52
  %71 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %72 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @MMC_DATA_READ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %70
  %78 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %79 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %80 = call i32 @jz4740_mmc_read_data(%struct.jz4740_mmc_host* %78, %struct.mmc_data* %79)
  store i32 %80, i32* %9, align 4
  br label %85

81:                                               ; preds = %70
  %82 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %83 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %84 = call i32 @jz4740_mmc_write_data(%struct.jz4740_mmc_host* %82, %struct.mmc_data* %83)
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %57
  %87 = load i32, i32* %9, align 4
  %88 = call i32 @unlikely(i32 %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %86
  %91 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %92 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %91, i32 0, i32 0
  store i32 128, i32* %92, align 8
  br label %141

93:                                               ; preds = %86
  %94 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %95 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  %96 = call i32 @jz4740_mmc_transfer_check_state(%struct.jz4740_mmc_host* %94, %struct.mmc_data* %95)
  %97 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %98 = load i32, i32* @JZ_MMC_IRQ_DATA_TRAN_DONE, align 4
  %99 = call i32 @jz4740_mmc_poll_irq(%struct.jz4740_mmc_host* %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = call i32 @unlikely(i32 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %93
  %104 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %105 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %104, i32 0, i32 0
  store i32 129, i32* %105, align 8
  br label %141

106:                                              ; preds = %93
  %107 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %108 = load i32, i32* @JZ_MMC_IRQ_DATA_TRAN_DONE, align 4
  %109 = call i32 @jz4740_mmc_write_irq_reg(%struct.jz4740_mmc_host* %107, i32 %108)
  br label %110

110:                                              ; preds = %30, %106
  %111 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %112 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %116, label %115

115:                                              ; preds = %110
  br label %141

116:                                              ; preds = %110
  %117 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %118 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %119 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @jz4740_mmc_send_command(%struct.jz4740_mmc_host* %117, i32 %120)
  %122 = load %struct.mmc_request*, %struct.mmc_request** %7, align 8
  %123 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @mmc_resp_type(i32 %124)
  %126 = load i32, i32* @MMC_RSP_BUSY, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %139

129:                                              ; preds = %116
  %130 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %131 = load i32, i32* @JZ_MMC_IRQ_PRG_DONE, align 4
  %132 = call i32 @jz4740_mmc_poll_irq(%struct.jz4740_mmc_host* %130, i32 %131)
  store i32 %132, i32* %9, align 4
  %133 = load i32, i32* %9, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %129
  %136 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %137 = getelementptr inbounds %struct.jz4740_mmc_host, %struct.jz4740_mmc_host* %136, i32 0, i32 0
  store i32 131, i32* %137, align 8
  br label %141

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %116
  br label %140

140:                                              ; preds = %30, %139
  br label %141

141:                                              ; preds = %30, %140, %135, %115, %103, %90, %48
  %142 = load i32, i32* %9, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %147, label %144

144:                                              ; preds = %141
  %145 = load %struct.jz4740_mmc_host*, %struct.jz4740_mmc_host** %5, align 8
  %146 = call i32 @jz4740_mmc_request_done(%struct.jz4740_mmc_host* %145)
  br label %147

147:                                              ; preds = %144, %141
  %148 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %148
}

declare dso_local i32 @jz4740_mmc_read_response(%struct.jz4740_mmc_host*, %struct.mmc_command*) #1

declare dso_local i32 @jz_mmc_prepare_data_transfer(%struct.jz4740_mmc_host*) #1

declare dso_local i32 @jz4740_mmc_start_dma_transfer(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @jz4740_mmc_read_data(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @jz4740_mmc_write_data(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @unlikely(i32) #1

declare dso_local i32 @jz4740_mmc_transfer_check_state(%struct.jz4740_mmc_host*, %struct.mmc_data*) #1

declare dso_local i32 @jz4740_mmc_poll_irq(%struct.jz4740_mmc_host*, i32) #1

declare dso_local i32 @jz4740_mmc_write_irq_reg(%struct.jz4740_mmc_host*, i32) #1

declare dso_local i32 @jz4740_mmc_send_command(%struct.jz4740_mmc_host*, i32) #1

declare dso_local i32 @mmc_resp_type(i32) #1

declare dso_local i32 @jz4740_mmc_request_done(%struct.jz4740_mmc_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
