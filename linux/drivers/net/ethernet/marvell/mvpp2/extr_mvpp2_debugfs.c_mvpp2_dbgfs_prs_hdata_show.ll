; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_prs_hdata_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_prs_hdata_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mvpp2_dbgfs_prs_entry* }
%struct.mvpp2_dbgfs_prs_entry = type { i32, i32 }
%struct.mvpp2_prs_entry = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"%*phN %*phN\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvpp2_dbgfs_prs_hdata_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_prs_hdata_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mvpp2_dbgfs_prs_entry*, align 8
  %6 = alloca %struct.mvpp2_prs_entry, align 4
  %7 = alloca [8 x i8], align 1
  %8 = alloca [8 x i8], align 1
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %11, align 8
  store %struct.mvpp2_dbgfs_prs_entry* %12, %struct.mvpp2_dbgfs_prs_entry** %5, align 8
  %13 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %5, align 8
  %14 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, %struct.mvpp2_dbgfs_prs_entry* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %5, align 8
  %17 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, %struct.mvpp2_dbgfs_prs_entry* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @mvpp2_prs_init_from_hw(i32 %15, %struct.mvpp2_prs_entry* %6, i32 %18)
  store i32 0, i32* %9, align 4
  br label %20

20:                                               ; preds = %32, %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %21, 8
  br i1 %22, label %23, label %35

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 %26
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 %29
  %31 = call i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry* %6, i32 %24, i8* %27, i8* %30)
  br label %32

32:                                               ; preds = %23
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %9, align 4
  br label %20

35:                                               ; preds = %20
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = getelementptr inbounds [8 x i8], [8 x i8]* %7, i64 0, i64 0
  %38 = getelementptr inbounds [8 x i8], [8 x i8]* %8, i64 0, i64 0
  %39 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 8, i8* %37, i32 8, i8* %38)
  ret i32 0
}

declare dso_local i32 @mvpp2_prs_init_from_hw(i32, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry*, i32, i8*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32, i8*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
