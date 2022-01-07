; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_rx_buff_mgmt_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_rx_buff_mgmt_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.wil6210_priv* }
%struct.wil6210_priv = type { %struct.wil_rx_buff_mgmt }
%struct.wil_rx_buff_mgmt = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"  size = %zu\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"  free_list_empty_cnt = %lu\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"  Active list:\0A\00", align 1
@.str.3 = private unnamed_addr constant [15 x i8] c"\0A  Free list:\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"  Total number of buffers: %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @rx_buff_mgmt_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rx_buff_mgmt_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.wil6210_priv*, align 8
  %7 = alloca %struct.wil_rx_buff_mgmt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.wil6210_priv*, %struct.wil6210_priv** %11, align 8
  store %struct.wil6210_priv* %12, %struct.wil6210_priv** %6, align 8
  %13 = load %struct.wil6210_priv*, %struct.wil6210_priv** %6, align 8
  %14 = getelementptr inbounds %struct.wil6210_priv, %struct.wil6210_priv* %13, i32 0, i32 0
  store %struct.wil_rx_buff_mgmt* %14, %struct.wil_rx_buff_mgmt** %7, align 8
  %15 = load %struct.wil_rx_buff_mgmt*, %struct.wil_rx_buff_mgmt** %7, align 8
  %16 = getelementptr inbounds %struct.wil_rx_buff_mgmt, %struct.wil_rx_buff_mgmt* %15, i32 0, i32 4
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %50

22:                                               ; preds = %2
  %23 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %24 = load %struct.wil_rx_buff_mgmt*, %struct.wil_rx_buff_mgmt** %7, align 8
  %25 = getelementptr inbounds %struct.wil_rx_buff_mgmt, %struct.wil_rx_buff_mgmt* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @seq_printf(%struct.seq_file* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %29 = load %struct.wil_rx_buff_mgmt*, %struct.wil_rx_buff_mgmt** %7, align 8
  %30 = getelementptr inbounds %struct.wil_rx_buff_mgmt, %struct.wil_rx_buff_mgmt* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @seq_printf(%struct.seq_file* %28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = call i32 @seq_puts(%struct.seq_file* %33, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = load %struct.wil_rx_buff_mgmt*, %struct.wil_rx_buff_mgmt** %7, align 8
  %37 = getelementptr inbounds %struct.wil_rx_buff_mgmt, %struct.wil_rx_buff_mgmt* %36, i32 0, i32 3
  %38 = call i32 @wil_print_rx_buff(%struct.seq_file* %35, i32* %37)
  store i32 %38, i32* %8, align 4
  %39 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %40 = call i32 @seq_puts(%struct.seq_file* %39, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0))
  %41 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %42 = load %struct.wil_rx_buff_mgmt*, %struct.wil_rx_buff_mgmt** %7, align 8
  %43 = getelementptr inbounds %struct.wil_rx_buff_mgmt, %struct.wil_rx_buff_mgmt* %42, i32 0, i32 2
  %44 = call i32 @wil_print_rx_buff(%struct.seq_file* %41, i32* %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = add nsw i32 %46, %47
  %49 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %22, %19
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @wil_print_rx_buff(%struct.seq_file*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
