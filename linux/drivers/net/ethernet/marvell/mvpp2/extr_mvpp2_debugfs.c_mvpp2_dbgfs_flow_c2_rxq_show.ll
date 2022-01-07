; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_c2_rxq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_c2_rxq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mvpp2_dbgfs_c2_entry* }
%struct.mvpp2_dbgfs_c2_entry = type { i32, i32 }
%struct.mvpp2_cls_c2_entry = type { i32* }

@MVPP22_CLS_C2_ATTR0_QHIGH_OFFS = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0_QHIGH_MASK = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0_QLOW_OFFS = common dso_local global i32 0, align 4
@MVPP22_CLS_C2_ATTR0_QLOW_MASK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvpp2_dbgfs_flow_c2_rxq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_flow_c2_rxq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mvpp2_dbgfs_c2_entry*, align 8
  %6 = alloca %struct.mvpp2_cls_c2_entry, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.mvpp2_dbgfs_c2_entry*, %struct.mvpp2_dbgfs_c2_entry** %10, align 8
  store %struct.mvpp2_dbgfs_c2_entry* %11, %struct.mvpp2_dbgfs_c2_entry** %5, align 8
  %12 = load %struct.mvpp2_dbgfs_c2_entry*, %struct.mvpp2_dbgfs_c2_entry** %5, align 8
  %13 = getelementptr inbounds %struct.mvpp2_dbgfs_c2_entry, %struct.mvpp2_dbgfs_c2_entry* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.mvpp2_dbgfs_c2_entry*, %struct.mvpp2_dbgfs_c2_entry** %5, align 8
  %16 = getelementptr inbounds %struct.mvpp2_dbgfs_c2_entry, %struct.mvpp2_dbgfs_c2_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @mvpp2_cls_c2_read(i32 %14, i32 %17, %struct.mvpp2_cls_c2_entry* %6)
  %19 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %6, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QHIGH_OFFS, align 4
  %24 = ashr i32 %22, %23
  %25 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QHIGH_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %7, align 4
  %27 = getelementptr inbounds %struct.mvpp2_cls_c2_entry, %struct.mvpp2_cls_c2_entry* %6, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QLOW_OFFS, align 4
  %32 = ashr i32 %30, %31
  %33 = load i32, i32* @MVPP22_CLS_C2_ATTR0_QLOW_MASK, align 4
  %34 = and i32 %32, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %36 = load i32, i32* %7, align 4
  %37 = shl i32 %36, 3
  %38 = load i32, i32* %8, align 4
  %39 = or i32 %37, %38
  %40 = call i32 @seq_printf(%struct.seq_file* %35, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %39)
  ret i32 0
}

declare dso_local i32 @mvpp2_cls_c2_read(i32, i32, %struct.mvpp2_cls_c2_entry*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
