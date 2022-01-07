; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_irq_handle_error.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/iwlegacy/extr_common.c_il_irq_handle_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { i32, i32, %struct.TYPE_10__*, i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_8__ = type { i32 (%struct.il_priv*, i32*, i32)*, i32 (%struct.il_priv*)* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@S_FW_ERROR = common dso_local global i32 0, align 4
@S_HCMD_ACTIVE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Loaded firmware version: %s\0A\00", align 1
@S_READY = common dso_local global i32 0, align 4
@S_EXIT_PENDING = common dso_local global i32 0, align 4
@IL_DL_FW_ERRORS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Restarting adapter due to uCode error.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @il_irq_handle_error(%struct.il_priv* %0) #0 {
  %2 = alloca %struct.il_priv*, align 8
  store %struct.il_priv* %0, %struct.il_priv** %2, align 8
  %3 = load i32, i32* @S_FW_ERROR, align 4
  %4 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %5 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %4, i32 0, i32 3
  %6 = call i32 @set_bit(i32 %3, i32* %5)
  %7 = load i32, i32* @S_HCMD_ACTIVE, align 4
  %8 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %9 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %8, i32 0, i32 3
  %10 = call i32 @clear_bit(i32 %7, i32* %9)
  %11 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %12 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %11, i32 0, i32 6
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @IL_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %20 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %19, i32 0, i32 5
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 1
  %23 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %22, align 8
  %24 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %25 = call i32 %23(%struct.il_priv* %24)
  %26 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %27 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %26, i32 0, i32 5
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 0
  %30 = load i32 (%struct.il_priv*, i32*, i32)*, i32 (%struct.il_priv*, i32*, i32)** %29, align 8
  %31 = icmp ne i32 (%struct.il_priv*, i32*, i32)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %34 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %33, i32 0, i32 5
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32 (%struct.il_priv*, i32*, i32)*, i32 (%struct.il_priv*, i32*, i32)** %36, align 8
  %38 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %39 = call i32 %37(%struct.il_priv* %38, i32* null, i32 0)
  br label %40

40:                                               ; preds = %32, %1
  %41 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %42 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %41, i32 0, i32 4
  %43 = call i32 @wake_up(i32* %42)
  %44 = load i32, i32* @S_READY, align 4
  %45 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %46 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %45, i32 0, i32 3
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = load i32, i32* @S_EXIT_PENDING, align 4
  %49 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %50 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %49, i32 0, i32 3
  %51 = call i32 @test_bit(i32 %48, i32* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %72, label %53

53:                                               ; preds = %40
  %54 = load i32, i32* @IL_DL_FW_ERRORS, align 4
  %55 = call i32 @IL_DBG(i32 %54, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %56 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %57 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %56, i32 0, i32 2
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %53
  %65 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %66 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.il_priv*, %struct.il_priv** %2, align 8
  %69 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %68, i32 0, i32 0
  %70 = call i32 @queue_work(i32 %67, i32* %69)
  br label %71

71:                                               ; preds = %64, %53
  br label %72

72:                                               ; preds = %71, %40
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

declare dso_local i32 @wake_up(i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @IL_DBG(i32, i8*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
