; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_prs_ai_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_prs_ai_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mvpp2_dbgfs_prs_entry* }
%struct.mvpp2_dbgfs_prs_entry = type { i32, i32 }
%struct.mvpp2_prs_entry = type { i32* }

@MVPP2_PRS_TCAM_AI_WORD = common dso_local global i64 0, align 8
@MVPP2_PRS_AI_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%02x %02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvpp2_dbgfs_prs_ai_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_prs_ai_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mvpp2_dbgfs_prs_entry*, align 8
  %6 = alloca %struct.mvpp2_prs_entry, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %10, align 8
  store %struct.mvpp2_dbgfs_prs_entry* %11, %struct.mvpp2_dbgfs_prs_entry** %5, align 8
  %12 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %5, align 8
  %13 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, %struct.mvpp2_dbgfs_prs_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mvpp2_dbgfs_prs_entry*, %struct.mvpp2_dbgfs_prs_entry** %5, align 8
  %16 = getelementptr inbounds %struct.mvpp2_dbgfs_prs_entry, %struct.mvpp2_dbgfs_prs_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mvpp2_prs_init_from_hw(i32 %14, %struct.mvpp2_prs_entry* %6, i32 %17)
  %19 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %6, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @MVPP2_PRS_TCAM_AI_WORD, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @MVPP2_PRS_AI_MASK, align 4
  %25 = and i32 %23, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %7, align 1
  %27 = getelementptr inbounds %struct.mvpp2_prs_entry, %struct.mvpp2_prs_entry* %6, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @MVPP2_PRS_TCAM_AI_WORD, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 16
  %33 = load i32, i32* @MVPP2_PRS_AI_MASK, align 4
  %34 = and i32 %32, %33
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %37 = load i8, i8* %7, align 1
  %38 = load i8, i8* %8, align 1
  %39 = call i32 @seq_printf(%struct.seq_file* %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8 zeroext %37, i8 zeroext %38)
  ret i32 0
}

declare dso_local i32 @mvpp2_prs_init_from_hw(i32, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
