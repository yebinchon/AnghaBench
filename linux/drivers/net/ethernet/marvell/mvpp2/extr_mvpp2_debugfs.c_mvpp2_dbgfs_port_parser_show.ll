; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_port_parser_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_port_parser_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mvpp2_port* }
%struct.mvpp2_port = type { i32, %struct.mvpp2* }
%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.mvpp2_prs_entry = type { i32 }

@MVPP2_PRS_TCAM_SRAM_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%03d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvpp2_dbgfs_port_parser_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_port_parser_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca %struct.mvpp2*, align 8
  %7 = alloca %struct.mvpp2_prs_entry, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %11 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %10, i32 0, i32 0
  %12 = load %struct.mvpp2_port*, %struct.mvpp2_port** %11, align 8
  store %struct.mvpp2_port* %12, %struct.mvpp2_port** %5, align 8
  %13 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %14 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %13, i32 0, i32 1
  %15 = load %struct.mvpp2*, %struct.mvpp2** %14, align 8
  store %struct.mvpp2* %15, %struct.mvpp2** %6, align 8
  store i32 0, i32* %9, align 4
  br label %16

16:                                               ; preds = %47, %2
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @MVPP2_PRS_TCAM_SRAM_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %50

20:                                               ; preds = %16
  %21 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %22 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %21, i32 0, i32 1
  %23 = load %struct.mvpp2*, %struct.mvpp2** %22, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %23, %struct.mvpp2_prs_entry* %7, i32 %24)
  %26 = call i64 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry* %7)
  store i64 %26, i64* %8, align 8
  %27 = load %struct.mvpp2*, %struct.mvpp2** %6, align 8
  %28 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %20
  %37 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %38 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @test_bit(i32 %39, i64* %8)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %36
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %44)
  br label %46

46:                                               ; preds = %42, %36, %20
  br label %47

47:                                               ; preds = %46
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %16

50:                                               ; preds = %16
  ret i32 0
}

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i64 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry*) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
