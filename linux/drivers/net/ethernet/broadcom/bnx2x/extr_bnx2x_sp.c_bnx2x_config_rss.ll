; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_config_rss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/broadcom/bnx2x/extr_bnx2x_sp.c_bnx2x_config_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_config_rss_params = type { i32, %struct.bnx2x_rss_config_obj* }
%struct.bnx2x_rss_config_obj = type { i32 (%struct.bnx2x.0*, %struct.bnx2x_config_rss_params.1*)*, %struct.bnx2x_raw_obj }
%struct.bnx2x.0 = type opaque
%struct.bnx2x_config_rss_params.1 = type opaque
%struct.bnx2x_raw_obj = type { i32 (%struct.bnx2x.2*, %struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)* }
%struct.bnx2x.2 = type opaque

@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Not configuring RSS ramrod_flags=%lx\0A\00", align 1
@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_config_rss(%struct.bnx2x* %0, %struct.bnx2x_config_rss_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_config_rss_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bnx2x_rss_config_obj*, align 8
  %8 = alloca %struct.bnx2x_raw_obj*, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_config_rss_params* %1, %struct.bnx2x_config_rss_params** %5, align 8
  %9 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %10 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %9, i32 0, i32 1
  %11 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %10, align 8
  store %struct.bnx2x_rss_config_obj* %11, %struct.bnx2x_rss_config_obj** %7, align 8
  %12 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %7, align 8
  %13 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %12, i32 0, i32 1
  store %struct.bnx2x_raw_obj* %13, %struct.bnx2x_raw_obj** %8, align 8
  %14 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %15 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load i32, i32* @BNX2X_MSG_SP, align 4
  %21 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %22 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @DP(i32 %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %3, align 4
  br label %64

25:                                               ; preds = %2
  %26 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %27 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %26, i32 0, i32 2
  %28 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %27, align 8
  %29 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %30 = call i32 %28(%struct.bnx2x_raw_obj* %29)
  %31 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %7, align 8
  %32 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %31, i32 0, i32 0
  %33 = load i32 (%struct.bnx2x.0*, %struct.bnx2x_config_rss_params.1*)*, i32 (%struct.bnx2x.0*, %struct.bnx2x_config_rss_params.1*)** %32, align 8
  %34 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %35 = bitcast %struct.bnx2x* %34 to %struct.bnx2x.0*
  %36 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %37 = bitcast %struct.bnx2x_config_rss_params* %36 to %struct.bnx2x_config_rss_params.1*
  %38 = call i32 %33(%struct.bnx2x.0* %35, %struct.bnx2x_config_rss_params.1* %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %25
  %42 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %43 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %42, i32 0, i32 1
  %44 = load i32 (%struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x_raw_obj*)** %43, align 8
  %45 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %46 = call i32 %44(%struct.bnx2x_raw_obj* %45)
  %47 = load i32, i32* %6, align 4
  store i32 %47, i32* %3, align 4
  br label %64

48:                                               ; preds = %25
  %49 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %50 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %51 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %50, i32 0, i32 0
  %52 = call i64 @test_bit(i32 %49, i32* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %62

54:                                               ; preds = %48
  %55 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %56 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %55, i32 0, i32 0
  %57 = load i32 (%struct.bnx2x.2*, %struct.bnx2x_raw_obj*)*, i32 (%struct.bnx2x.2*, %struct.bnx2x_raw_obj*)** %56, align 8
  %58 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %59 = bitcast %struct.bnx2x* %58 to %struct.bnx2x.2*
  %60 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %8, align 8
  %61 = call i32 %57(%struct.bnx2x.2* %59, %struct.bnx2x_raw_obj* %60)
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %54, %48
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %64

64:                                               ; preds = %62, %41, %19
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
