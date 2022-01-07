; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_db_recovery_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/qlogic/qed/extr_qed_dev.c_qed_db_recovery_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qed_hwfn = type { i32 }
%struct.qed_db_recovery_entry = type { i64, i64, i32 }

@DB_REC_WIDTH_32B = common dso_local global i64 0, align 8
@QED_MSG_SPQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"ringing doorbell address %p data %x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"ringing doorbell address %p data %llx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qed_hwfn*, %struct.qed_db_recovery_entry*)* @qed_db_recovery_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qed_db_recovery_ring(%struct.qed_hwfn* %0, %struct.qed_db_recovery_entry* %1) #0 {
  %3 = alloca %struct.qed_hwfn*, align 8
  %4 = alloca %struct.qed_db_recovery_entry*, align 8
  store %struct.qed_hwfn* %0, %struct.qed_hwfn** %3, align 8
  store %struct.qed_db_recovery_entry* %1, %struct.qed_db_recovery_entry** %4, align 8
  %5 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %6 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @DB_REC_WIDTH_32B, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %22

10:                                               ; preds = %2
  %11 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %12 = load i32, i32* @QED_MSG_SPQ, align 4
  %13 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %14 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %17 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i32*
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %11, i32 %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %20)
  br label %34

22:                                               ; preds = %2
  %23 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %24 = load i32, i32* @QED_MSG_SPQ, align 4
  %25 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %26 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %29 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i32*
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @DP_VERBOSE(%struct.qed_hwfn* %23, i32 %24, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %27, i32 %32)
  br label %34

34:                                               ; preds = %22, %10
  %35 = load %struct.qed_hwfn*, %struct.qed_hwfn** %3, align 8
  %36 = getelementptr inbounds %struct.qed_hwfn, %struct.qed_hwfn* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %39 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %42 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %45 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @qed_db_rec_sanity(i32 %37, i32 %40, i64 %43, i64 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %34
  br label %79

50:                                               ; preds = %34
  %51 = call i32 (...) @wmb()
  %52 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %53 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DB_REC_WIDTH_32B, align 8
  %56 = icmp eq i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %50
  %58 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %59 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %62 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @DIRECT_REG_WR(i32 %60, i32 %65)
  br label %77

67:                                               ; preds = %50
  %68 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %69 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.qed_db_recovery_entry*, %struct.qed_db_recovery_entry** %4, align 8
  %72 = getelementptr inbounds %struct.qed_db_recovery_entry, %struct.qed_db_recovery_entry* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @DIRECT_REG_WR64(i32 %70, i32 %75)
  br label %77

77:                                               ; preds = %67, %57
  %78 = call i32 (...) @wmb()
  br label %79

79:                                               ; preds = %77, %49
  ret void
}

declare dso_local i32 @DP_VERBOSE(%struct.qed_hwfn*, i32, i8*, i32, i32) #1

declare dso_local i32 @qed_db_rec_sanity(i32, i32, i64, i64) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @DIRECT_REG_WR(i32, i32) #1

declare dso_local i32 @DIRECT_REG_WR64(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
