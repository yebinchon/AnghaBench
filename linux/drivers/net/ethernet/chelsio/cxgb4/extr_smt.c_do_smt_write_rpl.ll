; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_smt.c_do_smt_write_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_smt.c_do_smt_write_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.smt_data* }
%struct.smt_data = type { %struct.smt_entry* }
%struct.smt_entry = type { i32, i32 }
%struct.cpl_smt_write_rpl = type { i64 }

@CPL_ERR_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unexpected SMT_WRITE_RPL status %u for entry %u\0A\00", align 1
@SMT_STATE_ERROR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_smt_write_rpl(%struct.adapter* %0, %struct.cpl_smt_write_rpl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cpl_smt_write_rpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.smt_data*, align 8
  %7 = alloca %struct.smt_entry*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cpl_smt_write_rpl* %1, %struct.cpl_smt_write_rpl** %4, align 8
  %8 = load %struct.cpl_smt_write_rpl*, %struct.cpl_smt_write_rpl** %4, align 8
  %9 = call i32 @GET_TID(%struct.cpl_smt_write_rpl* %8)
  %10 = call i32 @TID_TID_G(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = load %struct.smt_data*, %struct.smt_data** %12, align 8
  store %struct.smt_data* %13, %struct.smt_data** %6, align 8
  %14 = load %struct.cpl_smt_write_rpl*, %struct.cpl_smt_write_rpl** %4, align 8
  %15 = getelementptr inbounds %struct.cpl_smt_write_rpl, %struct.cpl_smt_write_rpl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CPL_ERR_NONE, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %46

22:                                               ; preds = %2
  %23 = load %struct.smt_data*, %struct.smt_data** %6, align 8
  %24 = getelementptr inbounds %struct.smt_data, %struct.smt_data* %23, i32 0, i32 0
  %25 = load %struct.smt_entry*, %struct.smt_entry** %24, align 8
  %26 = load i32, i32* %5, align 4
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %25, i64 %27
  store %struct.smt_entry* %28, %struct.smt_entry** %7, align 8
  %29 = load %struct.adapter*, %struct.adapter** %3, align 8
  %30 = getelementptr inbounds %struct.adapter, %struct.adapter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.cpl_smt_write_rpl*, %struct.cpl_smt_write_rpl** %4, align 8
  %33 = getelementptr inbounds %struct.cpl_smt_write_rpl, %struct.cpl_smt_write_rpl* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %5, align 4
  %36 = call i32 @dev_err(i32 %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %34, i32 %35)
  %37 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %38 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %37, i32 0, i32 0
  %39 = call i32 @spin_lock(i32* %38)
  %40 = load i32, i32* @SMT_STATE_ERROR, align 4
  %41 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %42 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 4
  %43 = load %struct.smt_entry*, %struct.smt_entry** %7, align 8
  %44 = getelementptr inbounds %struct.smt_entry, %struct.smt_entry* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %46

46:                                               ; preds = %22, %2
  ret void
}

declare dso_local i32 @TID_TID_G(i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_smt_write_rpl*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
