; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_dev_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb4vf/extr_t4vf_hw.c_t4vf_get_dev_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dev_params }
%struct.dev_params = type { i8*, i8* }

@FW_PARAMS_MNEM_DEV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_FWREV = common dso_local global i32 0, align 4
@FW_PARAMS_PARAM_DEV_TPREV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4vf_get_dev_params(%struct.adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.dev_params*, align 8
  %5 = alloca [7 x i8*], align 16
  %6 = alloca [7 x i8*], align 16
  %7 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  %8 = load %struct.adapter*, %struct.adapter** %3, align 8
  %9 = getelementptr inbounds %struct.adapter, %struct.adapter* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.dev_params* %10, %struct.dev_params** %4, align 8
  %11 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %12 = call i32 @FW_PARAMS_MNEM_V(i32 %11)
  %13 = load i32, i32* @FW_PARAMS_PARAM_DEV_FWREV, align 4
  %14 = call i32 @FW_PARAMS_PARAM_X_V(i32 %13)
  %15 = or i32 %12, %14
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  store i8* %17, i8** %18, align 16
  %19 = load i32, i32* @FW_PARAMS_MNEM_DEV, align 4
  %20 = call i32 @FW_PARAMS_MNEM_V(i32 %19)
  %21 = load i32, i32* @FW_PARAMS_PARAM_DEV_TPREV, align 4
  %22 = call i32 @FW_PARAMS_PARAM_X_V(i32 %21)
  %23 = or i32 %20, %22
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 1
  store i8* %25, i8** %26, align 8
  %27 = load %struct.adapter*, %struct.adapter** %3, align 8
  %28 = getelementptr inbounds [7 x i8*], [7 x i8*]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %30 = call i32 @t4vf_query_params(%struct.adapter* %27, i32 2, i8** %28, i8** %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %1
  %34 = load i32, i32* %7, align 4
  store i32 %34, i32* %2, align 4
  br label %44

35:                                               ; preds = %1
  %36 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 0
  %37 = load i8*, i8** %36, align 16
  %38 = load %struct.dev_params*, %struct.dev_params** %4, align 8
  %39 = getelementptr inbounds %struct.dev_params, %struct.dev_params* %38, i32 0, i32 1
  store i8* %37, i8** %39, align 8
  %40 = getelementptr inbounds [7 x i8*], [7 x i8*]* %6, i64 0, i64 1
  %41 = load i8*, i8** %40, align 8
  %42 = load %struct.dev_params*, %struct.dev_params** %4, align 8
  %43 = getelementptr inbounds %struct.dev_params, %struct.dev_params* %42, i32 0, i32 0
  store i8* %41, i8** %43, align 8
  store i32 0, i32* %2, align 4
  br label %44

44:                                               ; preds = %35, %33
  %45 = load i32, i32* %2, align 4
  ret i32 %45
}

declare dso_local i32 @FW_PARAMS_MNEM_V(i32) #1

declare dso_local i32 @FW_PARAMS_PARAM_X_V(i32) #1

declare dso_local i32 @t4vf_query_params(%struct.adapter*, i32, i8**, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
