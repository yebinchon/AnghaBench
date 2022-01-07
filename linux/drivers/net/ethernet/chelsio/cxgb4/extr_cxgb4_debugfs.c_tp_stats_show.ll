; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tp_stats_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_tp_stats_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"\0A--------Adapter Stats--------\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"\0A-------- Channel Stats --------\0A\00", align 1
@NCHAN = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"%-25s %-20s %-20s %-20s %-20s\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"channel 0\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"channel 1\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"channel 2\00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"channel 3\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"%-25s %-20s %-20s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @tp_stats_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tp_stats_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.adapter*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %7 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %6, i32 0, i32 0
  %8 = load %struct.adapter*, %struct.adapter** %7, align 8
  store %struct.adapter* %8, %struct.adapter** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = call i32 @seq_puts(%struct.seq_file* %9, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = call i32 @show_tcp_stats(%struct.seq_file* %11)
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = call i32 @show_ddp_stats(%struct.seq_file* %13)
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = call i32 @show_rdma_stats(%struct.seq_file* %15)
  %17 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %18 = call i32 @show_tp_err_adapter_stats(%struct.seq_file* %17)
  %19 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %20 = call i32 @seq_puts(%struct.seq_file* %19, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.adapter*, %struct.adapter** %5, align 8
  %22 = getelementptr inbounds %struct.adapter, %struct.adapter* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @NCHAN, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %2
  %29 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %30 = call i32 (%struct.seq_file*, i8*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %29, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.7, i64 0, i64 0))
  br label %34

31:                                               ; preds = %2
  %32 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %33 = call i32 (%struct.seq_file*, i8*, i8*, i8*, i8*, ...) @seq_printf(%struct.seq_file* %32, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  br label %34

34:                                               ; preds = %31, %28
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = call i32 @show_cpl_stats(%struct.seq_file* %35)
  %37 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %38 = call i32 @show_tp_err_channel_stats(%struct.seq_file* %37)
  %39 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %40 = call i32 @show_fcoe_stats(%struct.seq_file* %39)
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @show_tcp_stats(%struct.seq_file*) #1

declare dso_local i32 @show_ddp_stats(%struct.seq_file*) #1

declare dso_local i32 @show_rdma_stats(%struct.seq_file*) #1

declare dso_local i32 @show_tp_err_adapter_stats(%struct.seq_file*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*, i8*, i8*, ...) #1

declare dso_local i32 @show_cpl_stats(%struct.seq_file*) #1

declare dso_local i32 @show_tp_err_channel_stats(%struct.seq_file*) #1

declare dso_local i32 @show_fcoe_stats(%struct.seq_file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
