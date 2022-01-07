; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_prepare_rwe_seqs_default.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_st_spi_fsm.c_stfsm_prepare_rwe_seqs_default.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stfsm = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@default_read_configs = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"failed to prep READ sequence with flags [0x%08x]\0A\00", align 1
@default_write_configs = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"failed to prep WRITE sequence with flags [0x%08x]\0A\00", align 1
@stfsm_seq_erase_sector = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.stfsm*)* @stfsm_prepare_rwe_seqs_default to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stfsm_prepare_rwe_seqs_default(%struct.stfsm* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stfsm*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stfsm* %0, %struct.stfsm** %3, align 8
  %6 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %7 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %6, i32 0, i32 3
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %4, align 4
  %11 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %12 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %13 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %12, i32 0, i32 2
  %14 = load i32, i32* @default_read_configs, align 4
  %15 = call i32 @stfsm_search_prepare_rw_seq(%struct.stfsm* %11, i32* %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %1
  %19 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %20 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %43

25:                                               ; preds = %1
  %26 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %27 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %28 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %27, i32 0, i32 1
  %29 = load i32, i32* @default_write_configs, align 4
  %30 = call i32 @stfsm_search_prepare_rw_seq(%struct.stfsm* %26, i32* %28, i32 %29)
  store i32 %30, i32* %5, align 4
  %31 = load i32, i32* %5, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %40

33:                                               ; preds = %25
  %34 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %35 = getelementptr inbounds %struct.stfsm, %struct.stfsm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* %5, align 4
  store i32 %39, i32* %2, align 4
  br label %43

40:                                               ; preds = %25
  %41 = load %struct.stfsm*, %struct.stfsm** %3, align 8
  %42 = call i32 @stfsm_prepare_erasesec_seq(%struct.stfsm* %41, i32* @stfsm_seq_erase_sector)
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %33, %18
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @stfsm_search_prepare_rw_seq(%struct.stfsm*, i32*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @stfsm_prepare_erasesec_seq(%struct.stfsm*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
