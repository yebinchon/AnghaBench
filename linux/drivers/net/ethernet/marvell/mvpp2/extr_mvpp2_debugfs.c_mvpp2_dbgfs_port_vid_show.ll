; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_port_vid_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_port_vid_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mvpp2_port* }
%struct.mvpp2_port = type { i32, %struct.mvpp2* }
%struct.mvpp2 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.mvpp2_prs_entry = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvpp2_dbgfs_port_vid_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_port_vid_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mvpp2_port*, align 8
  %6 = alloca [2 x i8], align 1
  %7 = alloca [2 x i8], align 1
  %8 = alloca %struct.mvpp2*, align 8
  %9 = alloca %struct.mvpp2_prs_entry, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %13 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %14 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %13, i32 0, i32 0
  %15 = load %struct.mvpp2_port*, %struct.mvpp2_port** %14, align 8
  store %struct.mvpp2_port* %15, %struct.mvpp2_port** %5, align 8
  %16 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %17 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %16, i32 0, i32 1
  %18 = load %struct.mvpp2*, %struct.mvpp2** %17, align 8
  store %struct.mvpp2* %18, %struct.mvpp2** %8, align 8
  %19 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %20 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @MVPP2_PRS_VID_PORT_FIRST(i32 %21)
  store i32 %22, i32* %12, align 4
  br label %23

23:                                               ; preds = %72, %2
  %24 = load i32, i32* %12, align 4
  %25 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %26 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @MVPP2_PRS_VID_PORT_LAST(i32 %27)
  %29 = icmp sle i32 %24, %28
  br i1 %29, label %30, label %75

30:                                               ; preds = %23
  %31 = load %struct.mvpp2*, %struct.mvpp2** %8, align 8
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @mvpp2_prs_init_from_hw(%struct.mvpp2* %31, %struct.mvpp2_prs_entry* %9, i32 %32)
  %34 = call i64 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry* %9)
  store i64 %34, i64* %10, align 8
  %35 = load %struct.mvpp2*, %struct.mvpp2** %8, align 8
  %36 = getelementptr inbounds %struct.mvpp2, %struct.mvpp2* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %12, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %30
  br label %72

45:                                               ; preds = %30
  %46 = load %struct.mvpp2_port*, %struct.mvpp2_port** %5, align 8
  %47 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @test_bit(i32 %48, i64* %10)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %45
  br label %72

52:                                               ; preds = %45
  %53 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %54 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 0
  %55 = call i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry* %9, i32 2, i8* %53, i8* %54)
  %56 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %57 = getelementptr inbounds [2 x i8], [2 x i8]* %7, i64 0, i64 1
  %58 = call i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry* %9, i32 3, i8* %56, i8* %57)
  %59 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = and i32 %61, 15
  %63 = shl i32 %62, 8
  %64 = getelementptr inbounds [2 x i8], [2 x i8]* %6, i64 0, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = add nsw i32 %63, %66
  %68 = trunc i32 %67 to i8
  store i8 %68, i8* %11, align 1
  %69 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %70 = load i8, i8* %11, align 1
  %71 = call i32 @seq_printf(%struct.seq_file* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8 zeroext %70)
  br label %72

72:                                               ; preds = %52, %51, %44
  %73 = load i32, i32* %12, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %12, align 4
  br label %23

75:                                               ; preds = %23
  ret i32 0
}

declare dso_local i32 @MVPP2_PRS_VID_PORT_FIRST(i32) #1

declare dso_local i32 @MVPP2_PRS_VID_PORT_LAST(i32) #1

declare dso_local i32 @mvpp2_prs_init_from_hw(%struct.mvpp2*, %struct.mvpp2_prs_entry*, i32) #1

declare dso_local i64 @mvpp2_prs_tcam_port_map_get(%struct.mvpp2_prs_entry*) #1

declare dso_local i32 @test_bit(i32, i64*) #1

declare dso_local i32 @mvpp2_prs_tcam_data_byte_get(%struct.mvpp2_prs_entry*, i32, i8*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
