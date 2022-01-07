; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_show_fcoe_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_show_fcoe_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.tp_fcoe_stats = type { i32 }

@NCHAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"fcoe_octets_ddp\00", align 1
@octets_ddp = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"fcoe_frames_ddp\00", align 1
@frames_ddp = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"fcoe_frames_drop\00", align 1
@frames_drop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*)* @show_fcoe_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @show_fcoe_stats(%struct.seq_file* %0) #0 {
  %2 = alloca %struct.seq_file*, align 8
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.seq_file* %0, %struct.seq_file** %2, align 8
  %7 = load %struct.seq_file*, %struct.seq_file** %2, align 8
  %8 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %7, i32 0, i32 0
  %9 = load %struct.adapter*, %struct.adapter** %8, align 8
  store %struct.adapter* %9, %struct.adapter** %3, align 8
  %10 = load i32, i32* @NCHAN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %4, align 8
  %13 = alloca %struct.tp_fcoe_stats, i64 %11, align 16
  store i64 %11, i64* %5, align 8
  %14 = load %struct.adapter*, %struct.adapter** %3, align 8
  %15 = getelementptr inbounds %struct.adapter, %struct.adapter* %14, i32 0, i32 0
  %16 = call i32 @spin_lock(i32* %15)
  store i64 0, i64* %6, align 8
  br label %17

17:                                               ; preds = %31, %1
  %18 = load i64, i64* %6, align 8
  %19 = load %struct.adapter*, %struct.adapter** %3, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ult i64 %18, %23
  br i1 %24, label %25, label %34

25:                                               ; preds = %17
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %6, align 8
  %29 = getelementptr inbounds %struct.tp_fcoe_stats, %struct.tp_fcoe_stats* %13, i64 %28
  %30 = call i32 @t4_get_fcoe_stats(%struct.adapter* %26, i64 %27, %struct.tp_fcoe_stats* %29, i32 0)
  br label %31

31:                                               ; preds = %25
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %6, align 8
  br label %17

34:                                               ; preds = %17
  %35 = load %struct.adapter*, %struct.adapter** %3, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = call i32 @spin_unlock(i32* %36)
  %38 = load i32, i32* @octets_ddp, align 4
  %39 = call i32 @PRINT_CH_STATS2(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @frames_ddp, align 4
  %41 = call i32 @PRINT_CH_STATS2(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @frames_drop, align 4
  %43 = call i32 @PRINT_CH_STATS2(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %44)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spin_lock(i32*) #2

declare dso_local i32 @t4_get_fcoe_stats(%struct.adapter*, i64, %struct.tp_fcoe_stats*, i32) #2

declare dso_local i32 @spin_unlock(i32*) #2

declare dso_local i32 @PRINT_CH_STATS2(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
