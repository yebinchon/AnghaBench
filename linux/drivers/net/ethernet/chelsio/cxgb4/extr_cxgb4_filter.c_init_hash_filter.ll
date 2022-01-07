; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_init_hash_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_filter.c_init_hash_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@TP_GLOBAL_CONFIG_A = common dso_local global i32 0, align 4
@ACTIVEFILTERCOUNTS_F = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Invalid hash filter + ofld config\0A\00", align 1
@LE_DB_RSP_CODE_0_A = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Invalid hash filter config\0A\00", align 1
@LE_DB_RSP_CODE_1_A = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Hash filter supported only on T6\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_hash_filter(%struct.adapter* %0) #0 {
  %2 = alloca %struct.adapter*, align 8
  %3 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %2, align 8
  %4 = load %struct.adapter*, %struct.adapter** %2, align 8
  %5 = getelementptr inbounds %struct.adapter, %struct.adapter* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @is_t6(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %53

10:                                               ; preds = %1
  %11 = load %struct.adapter*, %struct.adapter** %2, align 8
  %12 = call i64 @is_offload(%struct.adapter* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %27

14:                                               ; preds = %10
  %15 = load %struct.adapter*, %struct.adapter** %2, align 8
  %16 = load i32, i32* @TP_GLOBAL_CONFIG_A, align 4
  %17 = call i32 @t4_read_reg(%struct.adapter* %15, i32 %16)
  %18 = load i32, i32* @ACTIVEFILTERCOUNTS_F, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %14
  %22 = load %struct.adapter*, %struct.adapter** %2, align 8
  %23 = getelementptr inbounds %struct.adapter, %struct.adapter* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %24, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %62

26:                                               ; preds = %14
  br label %52

27:                                               ; preds = %10
  %28 = load %struct.adapter*, %struct.adapter** %2, align 8
  %29 = load i32, i32* @LE_DB_RSP_CODE_0_A, align 4
  %30 = call i32 @t4_read_reg(%struct.adapter* %28, i32 %29)
  store i32 %30, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @TCAM_ACTV_HIT_G(i32 %31)
  %33 = icmp ne i32 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %27
  %35 = load %struct.adapter*, %struct.adapter** %2, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @dev_err(i32 %37, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %62

39:                                               ; preds = %27
  %40 = load %struct.adapter*, %struct.adapter** %2, align 8
  %41 = load i32, i32* @LE_DB_RSP_CODE_1_A, align 4
  %42 = call i32 @t4_read_reg(%struct.adapter* %40, i32 %41)
  store i32 %42, i32* %3, align 4
  %43 = load i32, i32* %3, align 4
  %44 = call i32 @HASH_ACTV_HIT_G(i32 %43)
  %45 = icmp ne i32 %44, 4
  br i1 %45, label %46, label %51

46:                                               ; preds = %39
  %47 = load %struct.adapter*, %struct.adapter** %2, align 8
  %48 = getelementptr inbounds %struct.adapter, %struct.adapter* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @dev_err(i32 %49, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  br label %62

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %51, %26
  br label %58

53:                                               ; preds = %1
  %54 = load %struct.adapter*, %struct.adapter** %2, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_err(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  br label %62

58:                                               ; preds = %52
  %59 = load %struct.adapter*, %struct.adapter** %2, align 8
  %60 = getelementptr inbounds %struct.adapter, %struct.adapter* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %58, %53, %46, %34, %21
  ret void
}

declare dso_local i64 @is_t6(i32) #1

declare dso_local i64 @is_offload(%struct.adapter*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @TCAM_ACTV_HIT_G(i32) #1

declare dso_local i32 @HASH_ACTV_HIT_G(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
