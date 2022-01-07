; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_finish_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_wbsd.c_wbsd_finish_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wbsd_host = type { i64, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i64 }

@WBSD_IDX_STATUS = common dso_local global i32 0, align 4
@WBSD_BLOCK_READ = common dso_local global i32 0, align 4
@WBSD_BLOCK_WRITE = common dso_local global i32 0, align 4
@WBSD_IDX_DMA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"%s: Incomplete DMA transfer. %d bytes left.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wbsd_host*, %struct.mmc_data*)* @wbsd_finish_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wbsd_finish_data(%struct.wbsd_host* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.wbsd_host*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.wbsd_host* %0, %struct.wbsd_host** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %8 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %9 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = icmp eq %struct.TYPE_4__* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @WARN_ON(i32 %12)
  %14 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %15 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %20 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %21 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @wbsd_send_command(%struct.wbsd_host* %19, i64 %22)
  br label %24

24:                                               ; preds = %18, %2
  br label %25

25:                                               ; preds = %29, %24
  %26 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %27 = load i32, i32* @WBSD_IDX_STATUS, align 4
  %28 = call i32 @wbsd_read_index(%struct.wbsd_host* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %25
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @WBSD_BLOCK_READ, align 4
  %32 = load i32, i32* @WBSD_BLOCK_WRITE, align 4
  %33 = or i32 %31, %32
  %34 = and i32 %30, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %25, label %36

36:                                               ; preds = %29
  %37 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %38 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp sge i64 %39, 0
  br i1 %40, label %41, label %141

41:                                               ; preds = %36
  %42 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %43 = load i32, i32* @WBSD_IDX_DMA, align 4
  %44 = call i32 @wbsd_write_index(%struct.wbsd_host* %42, i32 %43, i32 0)
  %45 = call i64 (...) @claim_dma_lock()
  store i64 %45, i64* %5, align 8
  %46 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %47 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @disable_dma(i64 %48)
  %50 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %51 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @clear_dma_ff(i64 %52)
  %54 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %55 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 @get_dma_residue(i64 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i64, i64* %5, align 8
  %59 = call i32 @release_dma_lock(i64 %58)
  %60 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %61 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %68 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %66, %73
  %75 = load i32, i32* %6, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %80 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %83 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = srem i32 %81, %84
  %86 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %87 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load i32, i32* %6, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %41
  %93 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %94 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @mmc_hostname(i32 %95)
  %97 = load i32, i32* %6, align 4
  %98 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %96, i32 %97)
  %99 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %100 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %108, label %103

103:                                              ; preds = %92
  %104 = load i32, i32* @EIO, align 4
  %105 = sub nsw i32 0, %104
  %106 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %107 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 8
  br label %108

108:                                              ; preds = %103, %92
  br label %121

109:                                              ; preds = %41
  %110 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %111 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MMC_DATA_READ, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %109
  %117 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %118 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %119 = call i32 @wbsd_dma_to_sg(%struct.wbsd_host* %117, %struct.mmc_data* %118)
  br label %120

120:                                              ; preds = %116, %109
  br label %121

121:                                              ; preds = %120, %108
  %122 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %123 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 8
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %140

126:                                              ; preds = %121
  %127 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %128 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %126
  %132 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %133 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %136 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = sub nsw i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %139

139:                                              ; preds = %131, %126
  br label %140

140:                                              ; preds = %139, %121
  br label %141

141:                                              ; preds = %140, %36
  %142 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %143 = load %struct.wbsd_host*, %struct.wbsd_host** %3, align 8
  %144 = getelementptr inbounds %struct.wbsd_host, %struct.wbsd_host* %143, i32 0, i32 1
  %145 = load %struct.TYPE_4__*, %struct.TYPE_4__** %144, align 8
  %146 = call i32 @wbsd_request_end(%struct.wbsd_host* %142, %struct.TYPE_4__* %145)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @wbsd_send_command(%struct.wbsd_host*, i64) #1

declare dso_local i32 @wbsd_read_index(%struct.wbsd_host*, i32) #1

declare dso_local i32 @wbsd_write_index(%struct.wbsd_host*, i32, i32) #1

declare dso_local i64 @claim_dma_lock(...) #1

declare dso_local i32 @disable_dma(i64) #1

declare dso_local i32 @clear_dma_ff(i64) #1

declare dso_local i32 @get_dma_residue(i64) #1

declare dso_local i32 @release_dma_lock(i64) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @mmc_hostname(i32) #1

declare dso_local i32 @wbsd_dma_to_sg(%struct.wbsd_host*, %struct.mmc_data*) #1

declare dso_local i32 @wbsd_request_end(%struct.wbsd_host*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
