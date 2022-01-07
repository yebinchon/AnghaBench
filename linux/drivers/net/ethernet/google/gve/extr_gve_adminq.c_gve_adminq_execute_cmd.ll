; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_execute_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/google/gve/extr_gve_adminq.c_gve_adminq_execute_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gve_priv = type { i64, i64, %struct.TYPE_2__*, %union.gve_adminq_command* }
%struct.TYPE_2__ = type { i32 }
%union.gve_adminq_command = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"AQ command timed out, need to reset AQ\0A\00", align 1
@ENOTRECOVERABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gve_adminq_execute_cmd(%struct.gve_priv* %0, %union.gve_adminq_command* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gve_priv*, align 8
  %5 = alloca %union.gve_adminq_command*, align 8
  %6 = alloca %union.gve_adminq_command*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.gve_priv* %0, %struct.gve_priv** %4, align 8
  store %union.gve_adminq_command* %1, %union.gve_adminq_command** %5, align 8
  store i64 0, i64* %7, align 8
  %9 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %10 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %9, i32 0, i32 3
  %11 = load %union.gve_adminq_command*, %union.gve_adminq_command** %10, align 8
  %12 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %13 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %16 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = and i64 %14, %17
  %19 = getelementptr inbounds %union.gve_adminq_command, %union.gve_adminq_command* %11, i64 %18
  store %union.gve_adminq_command* %19, %union.gve_adminq_command** %6, align 8
  %20 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %21 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add i64 %22, 1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %25 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %union.gve_adminq_command*, %union.gve_adminq_command** %6, align 8
  %28 = load %union.gve_adminq_command*, %union.gve_adminq_command** %5, align 8
  %29 = call i32 @memcpy(%union.gve_adminq_command* %27, %union.gve_adminq_command* %28, i32 4)
  %30 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %31 = load i64, i64* %8, align 8
  %32 = call i32 @gve_adminq_kick_cmd(%struct.gve_priv* %30, i64 %31)
  %33 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @gve_adminq_wait_for_cmd(%struct.gve_priv* %33, i64 %34)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %2
  %38 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %39 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %38, i32 0, i32 2
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOTRECOVERABLE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %60

45:                                               ; preds = %2
  %46 = load %union.gve_adminq_command*, %union.gve_adminq_command** %5, align 8
  %47 = load %union.gve_adminq_command*, %union.gve_adminq_command** %6, align 8
  %48 = call i32 @memcpy(%union.gve_adminq_command* %46, %union.gve_adminq_command* %47, i32 4)
  %49 = load %union.gve_adminq_command*, %union.gve_adminq_command** %6, align 8
  %50 = bitcast %union.gve_adminq_command* %49 to i32*
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @READ_ONCE(i32 %51)
  %53 = call i64 @be32_to_cpu(i32 %52)
  store i64 %53, i64* %7, align 8
  %54 = load %struct.gve_priv*, %struct.gve_priv** %4, align 8
  %55 = getelementptr inbounds %struct.gve_priv, %struct.gve_priv* %54, i32 0, i32 2
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @gve_adminq_parse_err(i32* %57, i64 %58)
  store i32 %59, i32* %3, align 4
  br label %60

60:                                               ; preds = %45, %37
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @memcpy(%union.gve_adminq_command*, %union.gve_adminq_command*, i32) #1

declare dso_local i32 @gve_adminq_kick_cmd(%struct.gve_priv*, i64) #1

declare dso_local i32 @gve_adminq_wait_for_cmd(%struct.gve_priv*, i64) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @be32_to_cpu(i32) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @gve_adminq_parse_err(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
