; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_rts_threshold.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_rts_threshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32 }
%struct.host_command = type { i32, i32*, i32, i32 }

@RTS_THRESHOLD = common dso_local global i32 0, align 4
@RTS_DISABLED = common dso_local global i32 0, align 4
@MAX_RTS_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32)* @ipw2100_set_rts_threshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_rts_threshold(%struct.ipw2100_priv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw2100_priv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.host_command, align 8
  %7 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 0
  store i32 4, i32* %8, align 8
  %9 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 1
  store i32* null, i32** %9, align 8
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 2
  store i32 0, i32* %10, align 8
  %11 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 3
  %12 = load i32, i32* @RTS_THRESHOLD, align 4
  store i32 %12, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* @RTS_DISABLED, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i32, i32* @MAX_RTS_THRESHOLD, align 4
  %19 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %18, i32* %21, align 4
  br label %30

22:                                               ; preds = %2
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @RTS_DISABLED, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = getelementptr inbounds %struct.host_command, %struct.host_command* %6, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %26, i32* %29, align 4
  br label %30

30:                                               ; preds = %22, %17
  %31 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %32 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %31, %struct.host_command* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %41

37:                                               ; preds = %30
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %4, align 8
  %40 = getelementptr inbounds %struct.ipw2100_priv, %struct.ipw2100_priv* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  store i32 0, i32* %3, align 4
  br label %41

41:                                               ; preds = %37, %35
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
