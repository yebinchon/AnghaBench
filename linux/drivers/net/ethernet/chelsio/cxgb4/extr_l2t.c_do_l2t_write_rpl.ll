; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_do_l2t_write_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_l2t.c_do_l2t_write_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.l2t_data* }
%struct.l2t_data = type { i32, %struct.l2t_entry* }
%struct.l2t_entry = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cpl_l2t_write_rpl = type { i64 }

@L2T_SIZE = common dso_local global i32 0, align 4
@CPL_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unexpected L2T_WRITE_RPL status %u for entry %u\0A\00", align 1
@SYNC_WR_F = common dso_local global i32 0, align 4
@L2T_STATE_SWITCHING = common dso_local global i64 0, align 8
@NUD_STALE = common dso_local global i32 0, align 4
@L2T_STATE_STALE = common dso_local global i64 0, align 8
@L2T_STATE_VALID = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_l2t_write_rpl(%struct.adapter* %0, %struct.cpl_l2t_write_rpl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cpl_l2t_write_rpl*, align 8
  %5 = alloca %struct.l2t_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.l2t_entry*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cpl_l2t_write_rpl* %1, %struct.cpl_l2t_write_rpl** %4, align 8
  %9 = load %struct.adapter*, %struct.adapter** %3, align 8
  %10 = getelementptr inbounds %struct.adapter, %struct.adapter* %9, i32 0, i32 1
  %11 = load %struct.l2t_data*, %struct.l2t_data** %10, align 8
  store %struct.l2t_data* %11, %struct.l2t_data** %5, align 8
  %12 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %4, align 8
  %13 = call i32 @GET_TID(%struct.cpl_l2t_write_rpl* %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @L2T_SIZE, align 4
  %16 = urem i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %4, align 8
  %18 = getelementptr inbounds %struct.cpl_l2t_write_rpl, %struct.cpl_l2t_write_rpl* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @CPL_ERR_NONE, align 8
  %21 = icmp ne i64 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %2
  %26 = load %struct.adapter*, %struct.adapter** %3, align 8
  %27 = getelementptr inbounds %struct.adapter, %struct.adapter* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.cpl_l2t_write_rpl*, %struct.cpl_l2t_write_rpl** %4, align 8
  %30 = getelementptr inbounds %struct.cpl_l2t_write_rpl, %struct.cpl_l2t_write_rpl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %31, i32 %32)
  br label %82

34:                                               ; preds = %2
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @SYNC_WR_F, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %82

39:                                               ; preds = %34
  %40 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %41 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %40, i32 0, i32 1
  %42 = load %struct.l2t_entry*, %struct.l2t_entry** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = load %struct.l2t_data*, %struct.l2t_data** %5, align 8
  %45 = getelementptr inbounds %struct.l2t_data, %struct.l2t_data* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub i32 %43, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %42, i64 %48
  store %struct.l2t_entry* %49, %struct.l2t_entry** %8, align 8
  %50 = load %struct.l2t_entry*, %struct.l2t_entry** %8, align 8
  %51 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %50, i32 0, i32 1
  %52 = call i32 @spin_lock(i32* %51)
  %53 = load %struct.l2t_entry*, %struct.l2t_entry** %8, align 8
  %54 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @L2T_STATE_SWITCHING, align 8
  %57 = icmp ne i64 %55, %56
  br i1 %57, label %58, label %78

58:                                               ; preds = %39
  %59 = load %struct.adapter*, %struct.adapter** %3, align 8
  %60 = load %struct.l2t_entry*, %struct.l2t_entry** %8, align 8
  %61 = call i32 @send_pending(%struct.adapter* %59, %struct.l2t_entry* %60)
  %62 = load %struct.l2t_entry*, %struct.l2t_entry** %8, align 8
  %63 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %62, i32 0, i32 2
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @NUD_STALE, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %58
  %71 = load i64, i64* @L2T_STATE_STALE, align 8
  br label %74

72:                                               ; preds = %58
  %73 = load i64, i64* @L2T_STATE_VALID, align 8
  br label %74

74:                                               ; preds = %72, %70
  %75 = phi i64 [ %71, %70 ], [ %73, %72 ]
  %76 = load %struct.l2t_entry*, %struct.l2t_entry** %8, align 8
  %77 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %78

78:                                               ; preds = %74, %39
  %79 = load %struct.l2t_entry*, %struct.l2t_entry** %8, align 8
  %80 = getelementptr inbounds %struct.l2t_entry, %struct.l2t_entry* %79, i32 0, i32 1
  %81 = call i32 @spin_unlock(i32* %80)
  br label %82

82:                                               ; preds = %25, %78, %34
  ret void
}

declare dso_local i32 @GET_TID(%struct.cpl_l2t_write_rpl*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @send_pending(%struct.adapter*, %struct.l2t_entry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
