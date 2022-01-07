; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_ibss_beacon_interval.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_ibss_beacon_interval.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.host_command = type { i32, i32*, i32, i32 }

@BEACON_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"enter\0A\00", align 1
@IW_MODE_ADHOC = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32, i32)* @ipw2100_set_ibss_beacon_interval to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_ibss_beacon_interval(%struct.ipw2100_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw2100_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.host_command, align 8
  %9 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 0
  store i32 4, i32* %10, align 8
  %11 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 1
  store i32* null, i32** %11, align 8
  %12 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 2
  store i32 0, i32* %12, align 8
  %13 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 3
  %14 = load i32, i32* @BEACON_INTERVAL, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32, i32* %6, align 4
  %16 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 %15, i32* %18, align 4
  %19 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %21 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @IW_MODE_ADHOC, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %38, label %30

30:                                               ; preds = %27
  %31 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %32 = call i32 @ipw2100_disable_adapter(%struct.ipw2100_priv* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %9, align 4
  store i32 %36, i32* %4, align 4
  br label %54

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %27
  %39 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %40 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %39, %struct.host_command* %8)
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %45 = call i32 @ipw2100_enable_adapter(%struct.ipw2100_priv* %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = load i32, i32* %9, align 4
  store i32 %49, i32* %4, align 4
  br label %54

50:                                               ; preds = %43
  br label %51

51:                                               ; preds = %50, %38
  br label %52

52:                                               ; preds = %51, %3
  %53 = call i32 @IPW_DEBUG_INFO(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %52, %48, %35
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32 @IPW_DEBUG_INFO(i8*) #1

declare dso_local i32 @ipw2100_disable_adapter(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i32 @ipw2100_enable_adapter(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
