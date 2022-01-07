; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_clk_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_clk_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TP_TIMER_RESOLUTION_A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Core clock period: %s ns\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"TP timer tick: %s us\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"TCP timestamp tick: %s us\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"DACK tick: %s us\0A\00", align 1
@.str.4 = private unnamed_addr constant [19 x i8] c"DACK timer: %u us\0A\00", align 1
@TP_DACK_TIMER_A = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [25 x i8] c"Retransmit min: %llu us\0A\00", align 1
@TP_RXT_MIN_A = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [25 x i8] c"Retransmit max: %llu us\0A\00", align 1
@TP_RXT_MAX_A = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [28 x i8] c"Persist timer min: %llu us\0A\00", align 1
@TP_PERS_MIN_A = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [28 x i8] c"Persist timer max: %llu us\0A\00", align 1
@TP_PERS_MAX_A = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [31 x i8] c"Keepalive idle timer: %llu us\0A\00", align 1
@TP_KEEP_IDLE_A = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [29 x i8] c"Keepalive interval: %llu us\0A\00", align 1
@TP_KEEP_INTVL_A = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [23 x i8] c"Initial SRTT: %llu us\0A\00", align 1
@TP_INIT_SRTT_A = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [25 x i8] c"FINWAIT2 timer: %llu us\0A\00", align 1
@TP_FINWAIT2_TIMER_A = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @clk_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @clk_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [32 x i8], align 16
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %6, align 8
  %15 = load %struct.adapter*, %struct.adapter** %6, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sdiv i32 1000000000, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.adapter*, %struct.adapter** %6, align 8
  %22 = load i32, i32* @TP_TIMER_RESOLUTION_A, align 4
  %23 = call i64 @t4_read_reg(%struct.adapter* %21, i32 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i32 @TIMERRESOLUTION_G(i64 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i64, i64* %8, align 8
  %27 = call i32 @DELAYEDACKRESOLUTION_G(i64 %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %28, %29
  %31 = udiv i32 %30, 1000000
  %32 = zext i32 %31 to i64
  store i64 %32, i64* %11, align 8
  %33 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %34 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %35 = load i32, i32* %7, align 4
  %36 = call i64 @unit_conv(i8* %34, i32 32, i32 %35, i32 1000)
  %37 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %36)
  %38 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %39 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %9, align 4
  %42 = shl i32 %40, %41
  %43 = call i64 @unit_conv(i8* %39, i32 32, i32 %42, i32 1000000)
  %44 = call i32 @seq_printf(%struct.seq_file* %38, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %43)
  %45 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %46 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %47 = load i32, i32* %7, align 4
  %48 = load i64, i64* %8, align 8
  %49 = call i32 @TIMESTAMPRESOLUTION_G(i64 %48)
  %50 = shl i32 %47, %49
  %51 = call i64 @unit_conv(i8* %46, i32 32, i32 %50, i32 1000000)
  %52 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i64 %51)
  %53 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %54 = getelementptr inbounds [32 x i8], [32 x i8]* %5, i64 0, i64 0
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %10, align 4
  %57 = shl i32 %55, %56
  %58 = call i64 @unit_conv(i8* %54, i32 32, i32 %57, i32 1000000)
  %59 = call i32 @seq_printf(%struct.seq_file* %53, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i64 %58)
  %60 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %10, align 4
  %63 = shl i32 %61, %62
  %64 = udiv i32 %63, 1000000
  %65 = zext i32 %64 to i64
  %66 = load %struct.adapter*, %struct.adapter** %6, align 8
  %67 = load i32, i32* @TP_DACK_TIMER_A, align 4
  %68 = call i64 @t4_read_reg(%struct.adapter* %66, i32 %67)
  %69 = mul i64 %65, %68
  %70 = call i32 @seq_printf(%struct.seq_file* %60, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.4, i64 0, i64 0), i64 %69)
  %71 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load %struct.adapter*, %struct.adapter** %6, align 8
  %74 = load i32, i32* @TP_RXT_MIN_A, align 4
  %75 = call i64 @t4_read_reg(%struct.adapter* %73, i32 %74)
  %76 = mul i64 %72, %75
  %77 = call i32 @seq_printf(%struct.seq_file* %71, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0), i64 %76)
  %78 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %79 = load i64, i64* %11, align 8
  %80 = load %struct.adapter*, %struct.adapter** %6, align 8
  %81 = load i32, i32* @TP_RXT_MAX_A, align 4
  %82 = call i64 @t4_read_reg(%struct.adapter* %80, i32 %81)
  %83 = mul i64 %79, %82
  %84 = call i32 @seq_printf(%struct.seq_file* %78, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.6, i64 0, i64 0), i64 %83)
  %85 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %86 = load i64, i64* %11, align 8
  %87 = load %struct.adapter*, %struct.adapter** %6, align 8
  %88 = load i32, i32* @TP_PERS_MIN_A, align 4
  %89 = call i64 @t4_read_reg(%struct.adapter* %87, i32 %88)
  %90 = mul i64 %86, %89
  %91 = call i32 @seq_printf(%struct.seq_file* %85, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i64 %90)
  %92 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load %struct.adapter*, %struct.adapter** %6, align 8
  %95 = load i32, i32* @TP_PERS_MAX_A, align 4
  %96 = call i64 @t4_read_reg(%struct.adapter* %94, i32 %95)
  %97 = mul i64 %93, %96
  %98 = call i32 @seq_printf(%struct.seq_file* %92, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.8, i64 0, i64 0), i64 %97)
  %99 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %100 = load i64, i64* %11, align 8
  %101 = load %struct.adapter*, %struct.adapter** %6, align 8
  %102 = load i32, i32* @TP_KEEP_IDLE_A, align 4
  %103 = call i64 @t4_read_reg(%struct.adapter* %101, i32 %102)
  %104 = mul i64 %100, %103
  %105 = call i32 @seq_printf(%struct.seq_file* %99, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.9, i64 0, i64 0), i64 %104)
  %106 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %107 = load i64, i64* %11, align 8
  %108 = load %struct.adapter*, %struct.adapter** %6, align 8
  %109 = load i32, i32* @TP_KEEP_INTVL_A, align 4
  %110 = call i64 @t4_read_reg(%struct.adapter* %108, i32 %109)
  %111 = mul i64 %107, %110
  %112 = call i32 @seq_printf(%struct.seq_file* %106, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i64 0, i64 0), i64 %111)
  %113 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %114 = load i64, i64* %11, align 8
  %115 = load %struct.adapter*, %struct.adapter** %6, align 8
  %116 = load i32, i32* @TP_INIT_SRTT_A, align 4
  %117 = call i64 @t4_read_reg(%struct.adapter* %115, i32 %116)
  %118 = call i64 @INITSRTT_G(i64 %117)
  %119 = mul i64 %114, %118
  %120 = call i32 @seq_printf(%struct.seq_file* %113, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0), i64 %119)
  %121 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load %struct.adapter*, %struct.adapter** %6, align 8
  %124 = load i32, i32* @TP_FINWAIT2_TIMER_A, align 4
  %125 = call i64 @t4_read_reg(%struct.adapter* %123, i32 %124)
  %126 = mul i64 %122, %125
  %127 = call i32 @seq_printf(%struct.seq_file* %121, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i64 %126)
  ret i32 0
}

declare dso_local i64 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @TIMERRESOLUTION_G(i64) #1

declare dso_local i32 @DELAYEDACKRESOLUTION_G(i64) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

declare dso_local i64 @unit_conv(i8*, i32, i32, i32) #1

declare dso_local i32 @TIMESTAMPRESOLUTION_G(i64) #1

declare dso_local i64 @INITSRTT_G(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
