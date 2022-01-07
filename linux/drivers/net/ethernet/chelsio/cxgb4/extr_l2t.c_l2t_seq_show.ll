; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_l2t_seq_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_l2t_seq_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.l2t_data* }
%struct.l2t_data = type { i64 }
%struct.l2t_entry = type { i64, i32, i32, %struct.TYPE_4__*, i32, i32, i32, i64, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8* }

@SEQ_START_TOKEN = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [77 x i8] c" Idx IP address                Ethernet address  VLAN/P LP State Users Port\0A\00", align 1
@L2T_STATE_SWITCHING = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI6c\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"%pI4\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"%4u %-25s %17pM %4d %u %2u   %c   %5u %s\0A\00", align 1
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @l2t_seq_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2t_seq_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca [60 x i8], align 16
  %6 = alloca %struct.l2t_data*, align 8
  %7 = alloca %struct.l2t_entry*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = load i8*, i8** @SEQ_START_TOKEN, align 8
  %10 = icmp eq i8* %8, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %13 = call i32 @seq_puts(%struct.seq_file* %12, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0))
  br label %89

14:                                               ; preds = %2
  %15 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %16 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %15, i32 0, i32 0
  %17 = load %struct.l2t_data*, %struct.l2t_data** %16, align 8
  store %struct.l2t_data* %17, %struct.l2t_data** %6, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.l2t_entry*
  store %struct.l2t_entry* %19, %struct.l2t_entry** %7, align 8
  %20 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %21 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %20, i32 0, i32 2
  %22 = call i32 @spin_lock_bh(i32* %21)
  %23 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %24 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @L2T_STATE_SWITCHING, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %14
  %29 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %29, align 16
  br label %42

30:                                               ; preds = %14
  %31 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  %32 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %33 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %32, i32 0, i32 8
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %38 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %39 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %38, i32 0, i32 9
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @sprintf(i8* %31, i8* %37, i32 %40)
  br label %42

42:                                               ; preds = %30, %28
  %43 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %44 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %45 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.l2t_data*, %struct.l2t_data** %6, align 8
  %48 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = getelementptr inbounds [60 x i8], [60 x i8]* %5, i64 0, i64 0
  %52 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %53 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %52, i32 0, i32 6
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %56 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @VLAN_VID_MASK, align 4
  %59 = and i32 %57, %58
  %60 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %61 = call i32 @vlan_prio(%struct.l2t_entry* %60)
  %62 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %63 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %62, i32 0, i32 5
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %66 = call i32 @l2e_state(%struct.l2t_entry* %65)
  %67 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %68 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %67, i32 0, i32 4
  %69 = call i32 @atomic_read(i32* %68)
  %70 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %71 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = icmp ne %struct.TYPE_4__* %72, null
  br i1 %73, label %74, label %82

74:                                               ; preds = %42
  %75 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %76 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %75, i32 0, i32 3
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load i8*, i8** %80, align 8
  br label %83

82:                                               ; preds = %42
  br label %83

83:                                               ; preds = %82, %74
  %84 = phi i8* [ %81, %74 ], [ getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i64 0, i64 0), %82 ]
  %85 = call i32 @seq_printf(%struct.seq_file* %43, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i64 %50, i8* %51, i32 %54, i32 %59, i32 %61, i32 %64, i32 %66, i32 %69, i8* %84)
  %86 = load %struct.l2t_entry*, %struct.l2t_entry** %7, align 8
  %87 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %86, i32 0, i32 2
  %88 = call i32 @spin_unlock_bh(i32* %87)
  br label %89

89:                                               ; preds = %83, %11
  ret i32 0
}

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64, i8*, i32, i32, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @vlan_prio(%struct.l2t_entry*) #1

declare dso_local i32 @l2e_state(%struct.l2t_entry*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
