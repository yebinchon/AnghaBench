; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_srq.c_do_srq_table_rpl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_srq.c_do_srq_table_rpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, %struct.srq_data* }
%struct.srq_data = type { i32, %struct.srq_entry* }
%struct.srq_entry = type { i32, i32, i8*, i8*, i32, i32, i32 }
%struct.cpl_srq_table_rpl = type { i64, i32, i32, i32, i32 }

@CPL_CONTAINS_READ_RPL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [49 x i8] c"Unexpected SRQ_TABLE_RPL status %u for entry %u\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @do_srq_table_rpl(%struct.adapter* %0, %struct.cpl_srq_table_rpl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.cpl_srq_table_rpl*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.srq_data*, align 8
  %7 = alloca %struct.srq_entry*, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.cpl_srq_table_rpl* %1, %struct.cpl_srq_table_rpl** %4, align 8
  %8 = load %struct.cpl_srq_table_rpl*, %struct.cpl_srq_table_rpl** %4, align 8
  %9 = call i32 @GET_TID(%struct.cpl_srq_table_rpl* %8)
  %10 = call i32 @TID_TID_G(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.adapter*, %struct.adapter** %3, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 1
  %13 = load %struct.srq_data*, %struct.srq_data** %12, align 8
  store %struct.srq_data* %13, %struct.srq_data** %6, align 8
  %14 = load %struct.cpl_srq_table_rpl*, %struct.cpl_srq_table_rpl** %4, align 8
  %15 = getelementptr inbounds %struct.cpl_srq_table_rpl, %struct.cpl_srq_table_rpl* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @CPL_CONTAINS_READ_RPL, align 8
  %18 = icmp ne i64 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %2
  %23 = load %struct.adapter*, %struct.adapter** %3, align 8
  %24 = getelementptr inbounds %struct.adapter, %struct.adapter* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.cpl_srq_table_rpl*, %struct.cpl_srq_table_rpl** %4, align 8
  %27 = getelementptr inbounds %struct.cpl_srq_table_rpl, %struct.cpl_srq_table_rpl* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %28, i32 %29)
  br label %73

31:                                               ; preds = %2
  %32 = load %struct.srq_data*, %struct.srq_data** %6, align 8
  %33 = getelementptr inbounds %struct.srq_data, %struct.srq_data* %32, i32 0, i32 1
  %34 = load %struct.srq_entry*, %struct.srq_entry** %33, align 8
  store %struct.srq_entry* %34, %struct.srq_entry** %7, align 8
  %35 = load %struct.srq_entry*, %struct.srq_entry** %7, align 8
  %36 = getelementptr inbounds %struct.srq_entry, %struct.srq_entry* %35, i32 0, i32 0
  store i32 1, i32* %36, align 8
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.srq_entry*, %struct.srq_entry** %7, align 8
  %39 = getelementptr inbounds %struct.srq_entry, %struct.srq_entry* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.cpl_srq_table_rpl*, %struct.cpl_srq_table_rpl** %4, align 8
  %41 = getelementptr inbounds %struct.cpl_srq_table_rpl, %struct.cpl_srq_table_rpl* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @be64_to_cpu(i32 %42)
  %44 = call i32 @SRQT_PDID_G(i32 %43)
  %45 = load %struct.srq_entry*, %struct.srq_entry** %7, align 8
  %46 = getelementptr inbounds %struct.srq_entry, %struct.srq_entry* %45, i32 0, i32 6
  store i32 %44, i32* %46, align 8
  %47 = load %struct.cpl_srq_table_rpl*, %struct.cpl_srq_table_rpl** %4, align 8
  %48 = getelementptr inbounds %struct.cpl_srq_table_rpl, %struct.cpl_srq_table_rpl* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @be32_to_cpu(i32 %49)
  %51 = call i32 @SRQT_QLEN_G(i32 %50)
  %52 = load %struct.srq_entry*, %struct.srq_entry** %7, align 8
  %53 = getelementptr inbounds %struct.srq_entry, %struct.srq_entry* %52, i32 0, i32 5
  store i32 %51, i32* %53, align 4
  %54 = load %struct.cpl_srq_table_rpl*, %struct.cpl_srq_table_rpl** %4, align 8
  %55 = getelementptr inbounds %struct.cpl_srq_table_rpl, %struct.cpl_srq_table_rpl* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @be32_to_cpu(i32 %56)
  %58 = call i32 @SRQT_QBASE_G(i32 %57)
  %59 = load %struct.srq_entry*, %struct.srq_entry** %7, align 8
  %60 = getelementptr inbounds %struct.srq_entry, %struct.srq_entry* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cpl_srq_table_rpl*, %struct.cpl_srq_table_rpl** %4, align 8
  %62 = getelementptr inbounds %struct.cpl_srq_table_rpl, %struct.cpl_srq_table_rpl* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i8* @be16_to_cpu(i32 %63)
  %65 = load %struct.srq_entry*, %struct.srq_entry** %7, align 8
  %66 = getelementptr inbounds %struct.srq_entry, %struct.srq_entry* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load %struct.cpl_srq_table_rpl*, %struct.cpl_srq_table_rpl** %4, align 8
  %68 = getelementptr inbounds %struct.cpl_srq_table_rpl, %struct.cpl_srq_table_rpl* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i8* @be16_to_cpu(i32 %69)
  %71 = load %struct.srq_entry*, %struct.srq_entry** %7, align 8
  %72 = getelementptr inbounds %struct.srq_entry, %struct.srq_entry* %71, i32 0, i32 2
  store i8* %70, i8** %72, align 8
  br label %73

73:                                               ; preds = %31, %22
  %74 = load %struct.srq_data*, %struct.srq_data** %6, align 8
  %75 = getelementptr inbounds %struct.srq_data, %struct.srq_data* %74, i32 0, i32 0
  %76 = call i32 @complete(i32* %75)
  ret void
}

declare dso_local i32 @TID_TID_G(i32) #1

declare dso_local i32 @GET_TID(%struct.cpl_srq_table_rpl*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64, i32) #1

declare dso_local i32 @SRQT_PDID_G(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @SRQT_QLEN_G(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @SRQT_QBASE_G(i32) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
