; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_sge_intr_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_t4_hw.c_sge_intr_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intr_info = type { i32, i8*, i32, i32, i32 }
%struct.adapter = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@sge_intr_handler.sge_intr_info = internal constant [13 x %struct.intr_info] [%struct.intr_info { i32 138, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i32 0, i32 0), i32 -1, i32 1, i32 0 }, %struct.intr_info { i32 131, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 137, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 144, i8* null, i32 -1, i32 0, i32 128 }, %struct.intr_info { i32 143, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 140, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 141, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 142, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 132, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.8, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 130, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.9, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info { i32 143, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.10, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info zeroinitializer], align 16
@.str = private unnamed_addr constant [36 x i8] c"SGE received CPL exceeding IQE size\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"SGE GTS CIDX increment too large\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"SGE received 0-length CPL\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"SGE IQID > 1023 received CPL for FL\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"SGE DBP 3 pidx increment too large\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"SGE DBP 2 pidx increment too large\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"SGE DBP 1 pidx increment too large\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"SGE DBP 0 pidx increment too large\00", align 1
@.str.8 = private unnamed_addr constant [39 x i8] c"SGE too many priority ingress contexts\00", align 1
@.str.9 = private unnamed_addr constant [24 x i8] c"SGE illegal ingress QID\00", align 1
@.str.10 = private unnamed_addr constant [23 x i8] c"SGE illegal egress QID\00", align 1
@sge_intr_handler.t4t5_sge_intr_info = internal global [4 x %struct.intr_info] [%struct.intr_info { i32 134, i8* null, i32 -1, i32 0, i32 129 }, %struct.intr_info { i32 145, i8* null, i32 -1, i32 0, i32 128 }, %struct.intr_info { i32 133, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.11, i32 0, i32 0), i32 -1, i32 0, i32 0 }, %struct.intr_info zeroinitializer], align 16
@.str.11 = private unnamed_addr constant [38 x i8] c"SGE too many priority egress contexts\00", align 1
@SGE_INT_CAUSE1_A = common dso_local global i32 0, align 4
@SGE_INT_CAUSE2_A = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [26 x i8] c"SGE parity error (%#llx)\0A\00", align 1
@SGE_INT_CAUSE3_A = common dso_local global i32 0, align 4
@CHELSIO_T5 = common dso_local global i64 0, align 8
@SGE_ERROR_STATS_A = common dso_local global i32 0, align 4
@ERROR_QID_VALID_F = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [24 x i8] c"SGE error for queue %u\0A\00", align 1
@UNCAPTURED_ERROR_F = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [37 x i8] c"SGE UNCAPTURED_ERROR set (clearing)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*)* @sge_intr_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sge_intr_handler(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %5 = load %struct.adapter*, %struct.adapter** %2, align 8
  %6 = load i32, i32* @SGE_INT_CAUSE1_A, align 4
  %7 = call i32 @t4_read_reg(%struct.adapter* %5, i32 %6)
  %8 = load %struct.adapter*, %struct.adapter** %2, align 8
  %9 = load i32, i32* @SGE_INT_CAUSE2_A, align 4
  %10 = call i32 @t4_read_reg(%struct.adapter* %8, i32 %9)
  %11 = shl i32 %10, 32
  %12 = or i32 %7, %11
  store i32 %12, i32* %3, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %1
  %16 = load %struct.adapter*, %struct.adapter** %2, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = call i32 @dev_alert(i32 %18, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i64 %20)
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = load i32, i32* @SGE_INT_CAUSE1_A, align 4
  %24 = load i32, i32* %3, align 4
  %25 = call i32 @t4_write_reg(%struct.adapter* %22, i32 %23, i32 %24)
  %26 = load %struct.adapter*, %struct.adapter** %2, align 8
  %27 = load i32, i32* @SGE_INT_CAUSE2_A, align 4
  %28 = load i32, i32* %3, align 4
  %29 = ashr i32 %28, 32
  %30 = call i32 @t4_write_reg(%struct.adapter* %26, i32 %27, i32 %29)
  br label %31

31:                                               ; preds = %15, %1
  %32 = load %struct.adapter*, %struct.adapter** %2, align 8
  %33 = load i32, i32* @SGE_INT_CAUSE3_A, align 4
  %34 = call i32 @t4_handle_intr_status(%struct.adapter* %32, i32 %33, %struct.intr_info* getelementptr inbounds ([13 x %struct.intr_info], [13 x %struct.intr_info]* @sge_intr_handler.sge_intr_info, i64 0, i64 0))
  %35 = load i32, i32* %3, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %3, align 4
  %37 = load %struct.adapter*, %struct.adapter** %2, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @CHELSIO_CHIP_VERSION(i32 %40)
  %42 = load i64, i64* @CHELSIO_T5, align 8
  %43 = icmp sle i64 %41, %42
  br i1 %43, label %44, label %50

44:                                               ; preds = %31
  %45 = load %struct.adapter*, %struct.adapter** %2, align 8
  %46 = load i32, i32* @SGE_INT_CAUSE3_A, align 4
  %47 = call i32 @t4_handle_intr_status(%struct.adapter* %45, i32 %46, %struct.intr_info* getelementptr inbounds ([4 x %struct.intr_info], [4 x %struct.intr_info]* @sge_intr_handler.t4t5_sge_intr_info, i64 0, i64 0))
  %48 = load i32, i32* %3, align 4
  %49 = or i32 %48, %47
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %44, %31
  %51 = load %struct.adapter*, %struct.adapter** %2, align 8
  %52 = load i32, i32* @SGE_ERROR_STATS_A, align 4
  %53 = call i32 @t4_read_reg(%struct.adapter* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  %54 = load i32, i32* %4, align 4
  %55 = load i32, i32* @ERROR_QID_VALID_F, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %81

58:                                               ; preds = %50
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @ERROR_QID_G(i32 %62)
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %61, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @UNCAPTURED_ERROR_F, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %58
  %70 = load %struct.adapter*, %struct.adapter** %2, align 8
  %71 = getelementptr inbounds %struct.adapter, %struct.adapter* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 (i32, i8*, ...) @dev_err(i32 %72, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.14, i64 0, i64 0))
  br label %74

74:                                               ; preds = %69, %58
  %75 = load %struct.adapter*, %struct.adapter** %2, align 8
  %76 = load i32, i32* @SGE_ERROR_STATS_A, align 4
  %77 = load i32, i32* @ERROR_QID_VALID_F, align 4
  %78 = load i32, i32* @UNCAPTURED_ERROR_F, align 4
  %79 = or i32 %77, %78
  %80 = call i32 @t4_write_reg(%struct.adapter* %75, i32 %76, i32 %79)
  br label %81

81:                                               ; preds = %74, %50
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load %struct.adapter*, %struct.adapter** %2, align 8
  %86 = call i32 @t4_fatal_err(%struct.adapter* %85)
  br label %87

87:                                               ; preds = %84, %81
  ret void
}

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @dev_alert(i32, i8*, i64) #1

declare dso_local i32 @t4_write_reg(%struct.adapter*, i32, i32) #1

declare dso_local i32 @t4_handle_intr_status(%struct.adapter*, i32, %struct.intr_info*) #1

declare dso_local i64 @CHELSIO_CHIP_VERSION(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @ERROR_QID_G(i32) #1

declare dso_local i32 @t4_fatal_err(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
