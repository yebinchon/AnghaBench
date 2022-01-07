; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_type_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/marvell/mvpp2/extr_mvpp2_debugfs.c_mvpp2_dbgfs_flow_type_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.mvpp2_dbgfs_flow_entry* }
%struct.mvpp2_dbgfs_flow_entry = type { i32 }
%struct.mvpp2_cls_flow = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ipv4\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"ipv6\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"tcp4\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"tcp6\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"udp4\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"udp6\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"other\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @mvpp2_dbgfs_flow_type_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvpp2_dbgfs_flow_type_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.mvpp2_dbgfs_flow_entry*, align 8
  %7 = alloca %struct.mvpp2_cls_flow*, align 8
  %8 = alloca i8*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %10, align 8
  store %struct.mvpp2_dbgfs_flow_entry* %11, %struct.mvpp2_dbgfs_flow_entry** %6, align 8
  %12 = load %struct.mvpp2_dbgfs_flow_entry*, %struct.mvpp2_dbgfs_flow_entry** %6, align 8
  %13 = getelementptr inbounds %struct.mvpp2_dbgfs_flow_entry, %struct.mvpp2_dbgfs_flow_entry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.mvpp2_cls_flow* @mvpp2_cls_flow_get(i32 %14)
  store %struct.mvpp2_cls_flow* %15, %struct.mvpp2_cls_flow** %7, align 8
  %16 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %7, align 8
  %17 = icmp ne %struct.mvpp2_cls_flow* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.mvpp2_cls_flow*, %struct.mvpp2_cls_flow** %7, align 8
  %23 = getelementptr inbounds %struct.mvpp2_cls_flow, %struct.mvpp2_cls_flow* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %31 [
    i32 133, label %25
    i32 132, label %26
    i32 131, label %27
    i32 130, label %28
    i32 129, label %29
    i32 128, label %30
  ]

25:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %8, align 8
  br label %32

26:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  br label %32

27:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8** %8, align 8
  br label %32

28:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8** %8, align 8
  br label %32

29:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %8, align 8
  br label %32

30:                                               ; preds = %21
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8** %8, align 8
  br label %32

31:                                               ; preds = %21
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8** %8, align 8
  br label %32

32:                                               ; preds = %31, %30, %29, %28, %27, %26, %25
  %33 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @seq_printf(%struct.seq_file* %33, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i64 0, i64 0), i8* %34)
  store i32 0, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %18
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local %struct.mvpp2_cls_flow* @mvpp2_cls_flow_get(i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
