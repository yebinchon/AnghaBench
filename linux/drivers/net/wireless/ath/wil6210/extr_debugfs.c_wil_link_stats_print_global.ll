; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_link_stats_print_global.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_link_stats_print_global.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_priv = type { i32 }
%struct.seq_file = type { i32 }
%struct.wmi_link_stats_global = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [103 x i8] c"Frames(rx:tx) %d:%d\0ABA Frames(rx:tx) %d:%d\0ABeacons %d\0ARx Errors (MIC:CRC) %d:%d\0ATx Errors (no ack) %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_priv*, %struct.seq_file*, %struct.wmi_link_stats_global*)* @wil_link_stats_print_global to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_link_stats_print_global(%struct.wil6210_priv* %0, %struct.seq_file* %1, %struct.wmi_link_stats_global* %2) #0 {
  %4 = alloca %struct.wil6210_priv*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.wmi_link_stats_global*, align 8
  store %struct.wil6210_priv* %0, %struct.wil6210_priv** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store %struct.wmi_link_stats_global* %2, %struct.wmi_link_stats_global** %6, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %8 = load %struct.wmi_link_stats_global*, %struct.wmi_link_stats_global** %6, align 8
  %9 = getelementptr inbounds %struct.wmi_link_stats_global, %struct.wmi_link_stats_global* %8, i32 0, i32 7
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @le32_to_cpu(i32 %10)
  %12 = load %struct.wmi_link_stats_global*, %struct.wmi_link_stats_global** %6, align 8
  %13 = getelementptr inbounds %struct.wmi_link_stats_global, %struct.wmi_link_stats_global* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = load %struct.wmi_link_stats_global*, %struct.wmi_link_stats_global** %6, align 8
  %17 = getelementptr inbounds %struct.wmi_link_stats_global, %struct.wmi_link_stats_global* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @le32_to_cpu(i32 %18)
  %20 = load %struct.wmi_link_stats_global*, %struct.wmi_link_stats_global** %6, align 8
  %21 = getelementptr inbounds %struct.wmi_link_stats_global, %struct.wmi_link_stats_global* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = load %struct.wmi_link_stats_global*, %struct.wmi_link_stats_global** %6, align 8
  %25 = getelementptr inbounds %struct.wmi_link_stats_global, %struct.wmi_link_stats_global* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load %struct.wmi_link_stats_global*, %struct.wmi_link_stats_global** %6, align 8
  %29 = getelementptr inbounds %struct.wmi_link_stats_global, %struct.wmi_link_stats_global* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load %struct.wmi_link_stats_global*, %struct.wmi_link_stats_global** %6, align 8
  %33 = getelementptr inbounds %struct.wmi_link_stats_global, %struct.wmi_link_stats_global* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @le32_to_cpu(i32 %34)
  %36 = load %struct.wmi_link_stats_global*, %struct.wmi_link_stats_global** %6, align 8
  %37 = getelementptr inbounds %struct.wmi_link_stats_global, %struct.wmi_link_stats_global* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le32_to_cpu(i32 %38)
  %40 = call i32 @seq_printf(%struct.seq_file* %7, i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %15, i32 %19, i32 %23, i32 %27, i32 %31, i32 %35, i32 %39)
  ret void
}

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
