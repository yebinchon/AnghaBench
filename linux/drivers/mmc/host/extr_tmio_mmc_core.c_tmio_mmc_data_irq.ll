; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_data_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_data_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, i64, %struct.TYPE_2__*, %struct.mmc_data* }
%struct.TYPE_2__ = type { i32 }
%struct.mmc_data = type { i32, i32 }

@TMIO_STAT_CRCFAIL = common dso_local global i32 0, align 4
@TMIO_STAT_STOPBIT_ERR = common dso_local global i32 0, align 4
@TMIO_STAT_TXUNDERRUN = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@MMC_DATA_WRITE = common dso_local global i32 0, align 4
@CTL_STATUS = common dso_local global i32 0, align 4
@TMIO_MMC_HAS_IDLE_WAIT = common dso_local global i32 0, align 4
@TMIO_STAT_SCLKDIVEN = common dso_local global i32 0, align 4
@TMIO_STAT_CMD_BUSY = common dso_local global i32 0, align 4
@TMIO_STAT_DATAEND = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@TMIO_MASK_READOP = common dso_local global i32 0, align 4
@TMIO_MASK_WRITEOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tmio_mmc_host*, i32)* @tmio_mmc_data_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tmio_mmc_data_irq(%struct.tmio_mmc_host* %0, i32 %1) #0 {
  %3 = alloca %struct.tmio_mmc_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mmc_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %12 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %11, i32 0, i32 3
  %13 = load %struct.mmc_data*, %struct.mmc_data** %12, align 8
  store %struct.mmc_data* %13, %struct.mmc_data** %5, align 8
  %14 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %15 = icmp ne %struct.mmc_data* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %113

17:                                               ; preds = %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @TMIO_STAT_CRCFAIL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %32, label %22

22:                                               ; preds = %17
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @TMIO_STAT_STOPBIT_ERR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %32, label %27

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @TMIO_STAT_TXUNDERRUN, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27, %22, %17
  %33 = load i32, i32* @EILSEQ, align 4
  %34 = sub nsw i32 0, %33
  %35 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %36 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %39 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %85

42:                                               ; preds = %37
  %43 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %44 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @MMC_DATA_WRITE, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %85

49:                                               ; preds = %42
  %50 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %51 = load i32, i32* @CTL_STATUS, align 4
  %52 = call i32 @sd_ctrl_read16_and_16_as_32(%struct.tmio_mmc_host* %50, i32 %51)
  store i32 %52, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %53 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %54 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @TMIO_MMC_HAS_IDLE_WAIT, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %68

61:                                               ; preds = %49
  %62 = load i32, i32* %6, align 4
  %63 = load i32, i32* @TMIO_STAT_SCLKDIVEN, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %61
  store i32 1, i32* %7, align 4
  br label %67

67:                                               ; preds = %66, %61
  br label %75

68:                                               ; preds = %49
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @TMIO_STAT_CMD_BUSY, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %74, label %73

73:                                               ; preds = %68
  store i32 1, i32* %7, align 4
  br label %74

74:                                               ; preds = %73, %68
  br label %75

75:                                               ; preds = %74, %67
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %75
  %79 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %80 = load i32, i32* @TMIO_STAT_DATAEND, align 4
  %81 = call i32 @tmio_mmc_disable_mmc_irqs(%struct.tmio_mmc_host* %79, i32 %80)
  %82 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %83 = call i32 @tmio_mmc_dataend_dma(%struct.tmio_mmc_host* %82)
  br label %84

84:                                               ; preds = %78, %75
  br label %112

85:                                               ; preds = %42, %37
  %86 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %87 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %103

90:                                               ; preds = %85
  %91 = load %struct.mmc_data*, %struct.mmc_data** %5, align 8
  %92 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* @MMC_DATA_READ, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %103

97:                                               ; preds = %90
  %98 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %99 = load i32, i32* @TMIO_STAT_DATAEND, align 4
  %100 = call i32 @tmio_mmc_disable_mmc_irqs(%struct.tmio_mmc_host* %98, i32 %99)
  %101 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %102 = call i32 @tmio_mmc_dataend_dma(%struct.tmio_mmc_host* %101)
  br label %111

103:                                              ; preds = %90, %85
  %104 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %105 = call i32 @tmio_mmc_do_data_irq(%struct.tmio_mmc_host* %104)
  %106 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %107 = load i32, i32* @TMIO_MASK_READOP, align 4
  %108 = load i32, i32* @TMIO_MASK_WRITEOP, align 4
  %109 = or i32 %107, %108
  %110 = call i32 @tmio_mmc_disable_mmc_irqs(%struct.tmio_mmc_host* %106, i32 %109)
  br label %111

111:                                              ; preds = %103, %97
  br label %112

112:                                              ; preds = %111, %84
  br label %113

113:                                              ; preds = %112, %16
  %114 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %3, align 8
  %115 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock(i32* %115)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @sd_ctrl_read16_and_16_as_32(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_disable_mmc_irqs(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @tmio_mmc_dataend_dma(%struct.tmio_mmc_host*) #1

declare dso_local i32 @tmio_mmc_do_data_irq(%struct.tmio_mmc_host*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
