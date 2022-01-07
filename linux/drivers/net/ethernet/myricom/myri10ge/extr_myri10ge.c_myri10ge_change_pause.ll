; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_change_pause.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/myricom/myri10ge/extr_myri10ge.c_myri10ge_change_pause.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myri10ge_priv = type { i32, i32 }
%struct.myri10ge_cmd = type { i32 }

@MXGEFW_ENABLE_FLOW_CONTROL = common dso_local global i32 0, align 4
@MXGEFW_DISABLE_FLOW_CONTROL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Failed to set flow control mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.myri10ge_priv*, i32)* @myri10ge_change_pause to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myri10ge_change_pause(%struct.myri10ge_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.myri10ge_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.myri10ge_cmd, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.myri10ge_priv* %0, %struct.myri10ge_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @MXGEFW_ENABLE_FLOW_CONTROL, align 4
  br label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @MXGEFW_DISABLE_FLOW_CONTROL, align 4
  br label %15

15:                                               ; preds = %13, %11
  %16 = phi i32 [ %12, %11 ], [ %14, %13 ]
  store i32 %16, i32* %8, align 4
  %17 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call i32 @myri10ge_send_cmd(%struct.myri10ge_priv* %17, i32 %18, %struct.myri10ge_cmd* %6, i32 0)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %15
  %23 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %24 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @netdev_err(i32 %25, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %15
  %29 = load i32, i32* %5, align 4
  %30 = load %struct.myri10ge_priv*, %struct.myri10ge_priv** %4, align 8
  %31 = getelementptr inbounds %struct.myri10ge_priv, %struct.myri10ge_priv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %22
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @myri10ge_send_cmd(%struct.myri10ge_priv*, i32, %struct.myri10ge_cmd*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
