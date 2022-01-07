; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_port_flow_hash_opt_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_port_flow_hash_opt_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mvpp2_dbgfs_port_flow_entry* }
%struct.mvpp2_dbgfs_port_flow_entry = type { %struct.mvpp2_port*, %struct.TYPE_2__* }
%struct.mvpp2_port = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mvpp2_cls_flow_entry = type { i32 }
%struct.mvpp2_cls_flow = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"0x%04x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvpp2_dbgfs_port_flow_hash_opt_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_port_flow_hash_opt_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mvpp2_dbgfs_port_flow_entry*, align 8
  %7 = alloca %struct.mvpp2_port*, align 8
  %8 = alloca %struct.mvpp2_cls_flow_entry, align 4
  %9 = alloca %struct.mvpp2_cls_flow*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %13 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %12, i32 0, i32 0
  %14 = load %struct.mvpp2_dbgfs_port_flow_entry*, %struct.mvpp2_dbgfs_port_flow_entry** %13, align 8
  store %struct.mvpp2_dbgfs_port_flow_entry* %14, %struct.mvpp2_dbgfs_port_flow_entry** %6, align 8
  %15 = load %struct.mvpp2_dbgfs_port_flow_entry*, %struct.mvpp2_dbgfs_port_flow_entry** %6, align 8
  %16 = getelementptr inbounds %struct.mvpp2_dbgfs_port_flow_entry, %struct.mvpp2_dbgfs_port_flow_entry* %15, i32 0, i32 0
  %17 = load %struct.mvpp2_port*, %struct.mvpp2_port** %16, align 8
  store %struct.mvpp2_port* %17, %struct.mvpp2_port** %7, align 8
  %18 = load %struct.mvpp2_dbgfs_port_flow_entry*, %struct.mvpp2_dbgfs_port_flow_entry** %6, align 8
  %19 = getelementptr inbounds %struct.mvpp2_dbgfs_port_flow_entry, %struct.mvpp2_dbgfs_port_flow_entry* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.mvpp2_cls_flow* @mvpp2_cls_flow_get(i32 %22)
  store %struct.mvpp2_cls_flow* %23, %struct.mvpp2_cls_flow** %9, align 8
  %24 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %9, align 8
  %25 = icmp ne %struct.mvpp2_cls_flow* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %48

29:                                               ; preds = %2
  %30 = load %struct.mvpp2_dbgfs_port_flow_entry*, %struct.mvpp2_dbgfs_port_flow_entry** %6, align 8
  %31 = getelementptr inbounds %struct.mvpp2_dbgfs_port_flow_entry, %struct.mvpp2_dbgfs_port_flow_entry* %30, i32 0, i32 0
  %32 = load %struct.mvpp2_port*, %struct.mvpp2_port** %31, align 8
  %33 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %9, align 8
  %36 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @MVPP2_CLS_FLT_HASH_ENTRY(i32 %34, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.mvpp2_port*, %struct.mvpp2_port** %7, align 8
  %40 = getelementptr inbounds %struct.mvpp2_port, %struct.mvpp2_port* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @mvpp2_cls_flow_read(i32 %41, i32 %42, %struct.mvpp2_cls_flow_entry* %8)
  %44 = call i32 @mvpp2_flow_get_hek_fields(%struct.mvpp2_cls_flow_entry* %8)
  store i32 %44, i32* %11, align 4
  %45 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @seq_printf(%struct.seq_file* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %46)
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %29, %26
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.mvpp2_cls_flow* @mvpp2_cls_flow_get(i32) #1

declare dso_local i32 @MVPP2_CLS_FLT_HASH_ENTRY(i32, i32) #1

declare dso_local i32 @mvpp2_cls_flow_read(i32, i32, %struct.mvpp2_cls_flow_entry*) #1

declare dso_local i32 @mvpp2_flow_get_hek_fields(%struct.mvpp2_cls_flow_entry*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
