; ModuleID = '/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_do_data_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mmc/host/extr_tmio_mmc_core.c_tmio_mmc_do_data_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmio_mmc_host = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__*, i64, %struct.mmc_data* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.mmc_data = type { i32, i32, i32, i32, i32, %struct.mmc_command* }
%struct.mmc_command = type { i64, i32*, i64 }

@.str = private unnamed_addr constant [23 x i8] c"Spurious data end IRQ\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"Completed data request\0A\00", align 1
@MMC_DATA_READ = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [24 x i8] c"Complete Rx request %p\0A\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"Complete Tx request %p\0A\00", align 1
@MMC_STOP_TRANSMISSION = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [46 x i8] c"unsupported stop: CMD%u,0x%x. We did CMD12,0\0A\00", align 1
@CTL_RESPONSE = common dso_local global i32 0, align 4
@CTL_STOP_INTERNAL_ACTION = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tmio_mmc_do_data_irq(%struct.tmio_mmc_host* %0) #0 {
  %2 = alloca %struct.tmio_mmc_host*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca %struct.mmc_command*, align 8
  store %struct.tmio_mmc_host* %0, %struct.tmio_mmc_host** %2, align 8
  %5 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %6 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %5, i32 0, i32 4
  %7 = load %struct.mmc_data*, %struct.mmc_data** %6, align 8
  store %struct.mmc_data* %7, %struct.mmc_data** %3, align 8
  %8 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %9 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %8, i32 0, i32 4
  store %struct.mmc_data* null, %struct.mmc_data** %9, align 8
  %10 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %11 = icmp ne %struct.mmc_data* %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %1
  %13 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %14 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = call i32 @dev_warn(i32* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  br label %121

18:                                               ; preds = %1
  %19 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %20 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %19, i32 0, i32 5
  %21 = load %struct.mmc_command*, %struct.mmc_command** %20, align 8
  store %struct.mmc_command* %21, %struct.mmc_command** %4, align 8
  %22 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %23 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %36, label %26

26:                                               ; preds = %18
  %27 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %28 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %31 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 8
  %33 = mul nsw i32 %29, %32
  %34 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  br label %39

36:                                               ; preds = %18
  %37 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %38 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %37, i32 0, i32 0
  store i32 0, i32* %38, align 8
  br label %39

39:                                               ; preds = %36, %26
  %40 = call i32 @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %41 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MMC_DATA_READ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %64

47:                                               ; preds = %39
  %48 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %49 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %48, i32 0, i32 3
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %54 = call i32 @tmio_mmc_check_bounce_buffer(%struct.tmio_mmc_host* %53)
  br label %55

55:                                               ; preds = %52, %47
  %56 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %57 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %61 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %60, i32 0, i32 2
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), %struct.TYPE_4__* %62)
  br label %73

64:                                               ; preds = %39
  %65 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %66 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %65, i32 0, i32 1
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 0
  %69 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %70 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %69, i32 0, i32 2
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = call i32 @dev_dbg(i32* %68, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0), %struct.TYPE_4__* %71)
  br label %73

73:                                               ; preds = %64, %55
  %74 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %75 = icmp ne %struct.mmc_command* %74, null
  br i1 %75, label %76, label %117

76:                                               ; preds = %73
  %77 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %78 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %77, i32 0, i32 2
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %117, label %83

83:                                               ; preds = %76
  %84 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %85 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @MMC_STOP_TRANSMISSION, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %94, label %89

89:                                               ; preds = %83
  %90 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %91 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %90, i32 0, i32 2
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %106

94:                                               ; preds = %89, %83
  %95 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %96 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %95, i32 0, i32 1
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %100 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %103 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.4, i64 0, i64 0), i64 %101, i64 %104)
  br label %106

106:                                              ; preds = %94, %89
  %107 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %108 = load i32, i32* @CTL_RESPONSE, align 4
  %109 = call i32 @sd_ctrl_read16_and_16_as_32(%struct.tmio_mmc_host* %107, i32 %108)
  %110 = load %struct.mmc_command*, %struct.mmc_command** %4, align 8
  %111 = getelementptr inbounds %struct.mmc_command, %struct.mmc_command* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  store i32 %109, i32* %113, align 4
  %114 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %115 = load i32, i32* @CTL_STOP_INTERNAL_ACTION, align 4
  %116 = call i32 @sd_ctrl_write16(%struct.tmio_mmc_host* %114, i32 %115, i32 0)
  br label %117

117:                                              ; preds = %106, %76, %73
  %118 = load %struct.tmio_mmc_host*, %struct.tmio_mmc_host** %2, align 8
  %119 = getelementptr inbounds %struct.tmio_mmc_host, %struct.tmio_mmc_host* %118, i32 0, i32 0
  %120 = call i32 @schedule_work(i32* %119)
  br label %121

121:                                              ; preds = %117, %12
  ret void
}

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @tmio_mmc_check_bounce_buffer(%struct.tmio_mmc_host*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64, i64) #1

declare dso_local i32 @sd_ctrl_read16_and_16_as_32(%struct.tmio_mmc_host*, i32) #1

declare dso_local i32 @sd_ctrl_write16(%struct.tmio_mmc_host*, i32, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
