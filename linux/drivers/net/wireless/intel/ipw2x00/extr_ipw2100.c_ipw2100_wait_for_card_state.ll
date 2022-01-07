; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wait_for_card_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_wait_for_card_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32 }

@IPW_CARD_DISABLE_COMPLETE_WAIT = common dso_local global i32 0, align 4
@IPW_ORD_CARD_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Query of CARD_DISABLED ordinal failed.\0A\00", align 1
@STATUS_ENABLED = common dso_local global i32 0, align 4
@IPW_HW_STATE_ENABLED = common dso_local global i32 0, align 4
@IPW_HW_STATE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"ipw2100_wait_for_card_state to %s state timed out\0A\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"DISABLED\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"ENABLED\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32)* @ipw2100_wait_for_card_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_wait_for_card_state(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 4, i32* %8, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %62, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* @IPW_CARD_DISABLE_COMPLETE_WAIT, align 4
  %13 = mul nsw i32 %12, 1000
  %14 = icmp sle i32 %11, %13
  br i1 %14, label %15, label %65

15:                                               ; preds = %10
  %16 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %17 = load i32, i32* @IPW_ORD_CARD_DISABLED, align 4
  %18 = call i32 @ipw2100_get_ordinal(%struct.ipw2100_priv* %16, i32 %17, i32* %7, i32* %8)
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %73

23:                                               ; preds = %15
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %42, label %27

27:                                               ; preds = %23
  %28 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @STATUS_ENABLED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %27
  %35 = load i32, i32* @IPW_HW_STATE_ENABLED, align 4
  br label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @IPW_HW_STATE_DISABLED, align 4
  br label %38

38:                                               ; preds = %36, %34
  %39 = phi i32 [ %35, %34 ], [ %37, %36 ]
  %40 = load i32, i32* %5, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %60

42:                                               ; preds = %38, %23
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @IPW_HW_STATE_ENABLED, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %52

46:                                               ; preds = %42
  %47 = load i32, i32* @STATUS_ENABLED, align 4
  %48 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %49 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  br label %59

52:                                               ; preds = %42
  %53 = load i32, i32* @STATUS_ENABLED, align 4
  %54 = xor i32 %53, -1
  %55 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %56 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = and i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %52, %46
  store i32 0, i32* %3, align 4
  br label %73

60:                                               ; preds = %38
  %61 = call i32 @udelay(i32 50)
  br label %62

62:                                               ; preds = %60
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, 50
  store i32 %64, i32* %6, align 4
  br label %10

65:                                               ; preds = %10
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i64
  %69 = select i1 %67, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0)
  %70 = call i32 (i8*, ...) @IPW_DEBUG_INFO(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i8* %69)
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %65, %59, %21
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @ipw2100_get_ordinal(%struct.ipw2100_priv*, i32, i32*, i32*) #1

declare dso_local i32 @IPW_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
