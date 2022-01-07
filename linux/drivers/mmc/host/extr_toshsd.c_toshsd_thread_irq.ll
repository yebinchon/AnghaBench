; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_thread_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_toshsd.c_toshsd_thread_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.toshsd_host = type { i32, i64, %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.sg_mapping_iter, %struct.mmc_data* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sg_mapping_iter = type { i16*, i32, i32 }
%struct.mmc_data = type { i32, i32 }

@.str = private unnamed_addr constant [19 x i8] c"Spurious Data IRQ\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"count: %08x, flags %08x\0A\00", align 1
@MMC_DATA_READ = common dso_local global i32 0, align 4
@SD_DATAPORT = common dso_local global i64 0, align 8
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @toshsd_thread_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @toshsd_thread_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.toshsd_host*, align 8
  %7 = alloca %struct.mmc_data*, align 8
  %8 = alloca %struct.sg_mapping_iter*, align 8
  %9 = alloca i16*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.toshsd_host*
  store %struct.toshsd_host* %13, %struct.toshsd_host** %6, align 8
  %14 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %15 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %14, i32 0, i32 5
  %16 = load %struct.mmc_data*, %struct.mmc_data** %15, align 8
  store %struct.mmc_data* %16, %struct.mmc_data** %7, align 8
  %17 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %18 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %17, i32 0, i32 4
  store %struct.sg_mapping_iter* %18, %struct.sg_mapping_iter** %8, align 8
  %19 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %20 = icmp ne %struct.mmc_data* %19, null
  br i1 %20, label %42, label %21

21:                                               ; preds = %2
  %22 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %23 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %22, i32 0, i32 2
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = call i32 @dev_warn(i32* %25, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %27 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %28 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %27, i32 0, i32 3
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %40

31:                                               ; preds = %21
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  %34 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %35 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %34, i32 0, i32 3
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %39 = call i32 @toshsd_finish_request(%struct.toshsd_host* %38)
  br label %40

40:                                               ; preds = %31, %21
  %41 = load i32, i32* @IRQ_NONE, align 4
  store i32 %41, i32* %3, align 4
  br label %115

42:                                               ; preds = %2
  %43 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %44 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %43, i32 0, i32 0
  %45 = load i64, i64* %11, align 8
  %46 = call i32 @spin_lock_irqsave(i32* %44, i64 %45)
  %47 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %8, align 8
  %48 = call i32 @sg_miter_next(%struct.sg_mapping_iter* %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %109

51:                                               ; preds = %42
  %52 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %8, align 8
  %53 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %52, i32 0, i32 0
  %54 = load i16*, i16** %53, align 8
  store i16* %54, i16** %9, align 8
  %55 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %8, align 8
  %56 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %10, align 4
  %59 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %60 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp sgt i32 %58, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %51
  %64 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %65 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %63, %51
  %68 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %69 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %68, i32 0, i32 2
  %70 = load %struct.TYPE_4__*, %struct.TYPE_4__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %10, align 4
  %73 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %74 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %75)
  %77 = load %struct.mmc_data*, %struct.mmc_data** %7, align 8
  %78 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MMC_DATA_READ, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %67
  %84 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %85 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @SD_DATAPORT, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i16*, i16** %9, align 8
  %90 = load i32, i32* %10, align 4
  %91 = ashr i32 %90, 2
  %92 = call i32 @ioread32_rep(i64 %88, i16* %89, i32 %91)
  br label %103

93:                                               ; preds = %67
  %94 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %95 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @SD_DATAPORT, align 8
  %98 = add nsw i64 %96, %97
  %99 = load i16*, i16** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = ashr i32 %100, 2
  %102 = call i32 @iowrite32_rep(i64 %98, i16* %99, i32 %101)
  br label %103

103:                                              ; preds = %93, %83
  %104 = load i32, i32* %10, align 4
  %105 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %8, align 8
  %106 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 4
  %107 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %8, align 8
  %108 = call i32 @sg_miter_stop(%struct.sg_mapping_iter* %107)
  br label %109

109:                                              ; preds = %103, %50
  %110 = load %struct.toshsd_host*, %struct.toshsd_host** %6, align 8
  %111 = getelementptr inbounds %struct.toshsd_host, %struct.toshsd_host* %110, i32 0, i32 0
  %112 = load i64, i64* %11, align 8
  %113 = call i32 @spin_unlock_irqrestore(i32* %111, i64 %112)
  %114 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %109, %40
  %116 = load i32, i32* %3, align 4
  ret i32 %116
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @toshsd_finish_request(%struct.toshsd_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @sg_miter_next(%struct.sg_mapping_iter*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

declare dso_local i32 @ioread32_rep(i64, i16*, i32) #1

declare dso_local i32 @iowrite32_rep(i64, i16*, i32) #1

declare dso_local i32 @sg_miter_stop(%struct.sg_mapping_iter*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
