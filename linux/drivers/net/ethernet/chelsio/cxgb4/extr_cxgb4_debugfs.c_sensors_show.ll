; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_sensors_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4/extr_cxgb4_debugfs.c_sensors_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { %struct.adapter* }
%struct.adapter = type { i32, i32 }

@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_DIAG = common dso_local global i32 0, align 4
@FW_PARAM_DEV_DIAG_TMP = common dso_local global i32 0, align 4
@FW_PARAM_DEV_DIAG_VDD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Temperature: <unknown>\0A\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Temperature: %dC\0A\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Core VDD:    <unknown>\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Core VDD:    %dmV\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_file*, i8*)* @sensors_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensors_show(%struct.seq_file* %0, i8* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca [7 x i64], align 16
  %7 = alloca [7 x i64], align 16
  %8 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %10 = getelementptr inbounds %struct.seq_file, %struct.seq_file* %9, i32 0, i32 0
  %11 = load %struct.adapter*, %struct.adapter** %10, align 8
  store %struct.adapter* %11, %struct.adapter** %5, align 8
  %12 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %13 = call i64 @FW_PARAMS_MNEM_V(i32 %12)
  %14 = load i32, i32* @FW_PARAMS_PARAM_DEV_DIAG, align 4
  %15 = call i64 @FW_PARAMS_PARAM_X_V(i32 %14)
  %16 = or i64 %13, %15
  %17 = load i32, i32* @FW_PARAM_DEV_DIAG_TMP, align 4
  %18 = call i64 @FW_PARAMS_PARAM_Y_V(i32 %17)
  %19 = or i64 %16, %18
  %20 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 0
  store i64 %19, i64* %20, align 16
  %21 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %22 = call i64 @FW_PARAMS_MNEM_V(i32 %21)
  %23 = load i32, i32* @FW_PARAMS_PARAM_DEV_DIAG, align 4
  %24 = call i64 @FW_PARAMS_PARAM_X_V(i32 %23)
  %25 = or i64 %22, %24
  %26 = load i32, i32* @FW_PARAM_DEV_DIAG_VDD, align 4
  %27 = call i64 @FW_PARAMS_PARAM_Y_V(i32 %26)
  %28 = or i64 %25, %27
  %29 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 1
  store i64 %28, i64* %29, align 8
  %30 = load %struct.adapter*, %struct.adapter** %5, align 8
  %31 = load %struct.adapter*, %struct.adapter** %5, align 8
  %32 = getelementptr inbounds %struct.adapter, %struct.adapter* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.adapter*, %struct.adapter** %5, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds [7 x i64], [7 x i64]* %6, i64 0, i64 0
  %38 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 0
  %39 = call i32 @t4_query_params(%struct.adapter* %30, i32 %33, i32 %36, i32 0, i32 2, i64* %37, i64* %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %2
  %43 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 0
  %44 = load i64, i64* %43, align 16
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %42, %2
  %47 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %48 = call i32 @seq_puts(%struct.seq_file* %47, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %54

49:                                               ; preds = %42
  %50 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %51 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 0
  %52 = load i64, i64* %51, align 16
  %53 = call i32 @seq_printf(%struct.seq_file* %50, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i64 %52)
  br label %54

54:                                               ; preds = %49, %46
  %55 = load i32, i32* %8, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %54
  %58 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %57, %54
  %62 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %63 = call i32 @seq_puts(%struct.seq_file* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  br label %69

64:                                               ; preds = %57
  %65 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %66 = getelementptr inbounds [7 x i64], [7 x i64]* %7, i64 0, i64 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @seq_printf(%struct.seq_file* %65, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i64 %67)
  br label %69

69:                                               ; preds = %64, %61
  ret i32 0
}

declare dso_local i64 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i64 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i64 @FW_PARAMS_PARAM_Y_V(i32) #1

declare dso_local i32 @t4_query_params(%struct.adapter*, i32, i32, i32, i32, i64*, i64*) #1

declare dso_local i32 @seq_puts(%struct.seq_file*, i8*) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
