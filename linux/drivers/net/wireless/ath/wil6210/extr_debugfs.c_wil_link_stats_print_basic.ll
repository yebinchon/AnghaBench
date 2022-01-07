; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_link_stats_print_basic.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/wil6210/extr_debugfs.c_wil_link_stats_print_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wil6210_vif = type { i32 }
%struct.seq_file = type { i32 }
%struct.wmi_link_stats_basic = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.wil_link_stats_print_basic.per = private unnamed_addr constant [5 x i8] c"?\00\00\00\00", align 1
@.str = private unnamed_addr constant [5 x i8] c"%d%%\00", align 1
@.str.1 = private unnamed_addr constant [159 x i8] c"CID %d {\0A\09TxMCS %d TxTpt %d\0A\09Goodput(rx:tx) %d:%d\0A\09RxBcastFrames %d\0A\09RSSI %d SQI %d SNR %d PER %s\0A\09Rx RFC %d Ant num %d\0A\09Sectors(rx:tx) my %d:%d peer %d:%d\0A}\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wil6210_vif*, %struct.seq_file*, %struct.wmi_link_stats_basic*)* @wil_link_stats_print_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wil_link_stats_print_basic(%struct.wil6210_vif* %0, %struct.seq_file* %1, %struct.wmi_link_stats_basic* %2) #0 {
  %4 = alloca %struct.wil6210_vif*, align 8
  %5 = alloca %struct.seq_file*, align 8
  %6 = alloca %struct.wmi_link_stats_basic*, align 8
  %7 = alloca [5 x i8], align 1
  store %struct.wil6210_vif* %0, %struct.wil6210_vif** %4, align 8
  store %struct.seq_file* %1, %struct.seq_file** %5, align 8
  store %struct.wmi_link_stats_basic* %2, %struct.wmi_link_stats_basic** %6, align 8
  %8 = bitcast [5 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %8, i8* align 1 getelementptr inbounds ([5 x i8], [5 x i8]* @__const.wil_link_stats_print_basic.per, i32 0, i32 0), i64 5, i1 false)
  %9 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %10 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 255
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %15 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %16 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @snprintf(i8* %14, i32 5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %17)
  br label %19

19:                                               ; preds = %13, %3
  %20 = load %struct.seq_file*, %struct.seq_file** %5, align 8
  %21 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %22 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %21, i32 0, i32 15
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %25 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %24, i32 0, i32 14
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %28 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %27, i32 0, i32 13
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %32 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %31, i32 0, i32 12
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %36 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %35, i32 0, i32 11
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @le32_to_cpu(i32 %37)
  %39 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %40 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %39, i32 0, i32 10
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @le32_to_cpu(i32 %41)
  %43 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %44 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %43, i32 0, i32 9
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %47 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %46, i32 0, i32 8
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %50 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %49, i32 0, i32 7
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %53 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %54 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %53, i32 0, i32 6
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %57 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %60 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %63 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %66 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.wmi_link_stats_basic*, %struct.wmi_link_stats_basic** %6, align 8
  %69 = getelementptr inbounds %struct.wmi_link_stats_basic, %struct.wmi_link_stats_basic* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @seq_printf(%struct.seq_file* %20, i8* getelementptr inbounds ([159 x i8], [159 x i8]* @.str.1, i64 0, i64 0), i32 %23, i32 %26, i32 %30, i32 %34, i32 %38, i32 %42, i32 %45, i32 %48, i32 %51, i8* %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67, i32 %70)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i32, i32, i32, i32) #2

declare dso_local i32 @le32_to_cpu(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
