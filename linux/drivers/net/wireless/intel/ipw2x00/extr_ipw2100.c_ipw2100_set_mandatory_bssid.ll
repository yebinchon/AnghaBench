; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_mandatory_bssid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intel/ipw2x00/extr_ipw2100.c_ipw2100_set_mandatory_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw2100_priv = type { i32 }
%struct.host_command = type { i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MANDATORY_BSSID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipw2100_priv*, i32*, i32)* @ipw2100_set_mandatory_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipw2100_set_mandatory_bssid(%struct.ipw2100_priv* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ipw2100_priv*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.host_command, align 4
  %9 = alloca i32, align 4
  store %struct.ipw2100_priv* %0, %struct.ipw2100_priv** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 0
  store i32 0, i32* %10, align 4
  %11 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 1
  %12 = load i32*, i32** %6, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  br label %17

15:                                               ; preds = %3
  %16 = load i32, i32* @ETH_ALEN, align 4
  br label %17

17:                                               ; preds = %15, %14
  %18 = phi i32 [ 0, %14 ], [ %16, %15 ]
  store i32 %18, i32* %11, align 4
  %19 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 2
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 3
  %21 = load i32, i32* @MANDATORY_BSSID, align 4
  store i32 %21, i32* %20, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.host_command, %struct.host_command* %8, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @ETH_ALEN, align 4
  %29 = call i32 @memcpy(i32 %26, i32* %27, i32 %28)
  br label %30

30:                                               ; preds = %24, %17
  %31 = load i32, i32* %7, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %30
  %34 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %35 = call i32 @ipw2100_disable_adapter(%struct.ipw2100_priv* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %4, align 4
  br label %51

40:                                               ; preds = %33
  br label %41

41:                                               ; preds = %40, %30
  %42 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %43 = call i32 @ipw2100_hw_send_command(%struct.ipw2100_priv* %42, %struct.host_command* %8)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %7, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load %struct.ipw2100_priv*, %struct.ipw2100_priv** %5, align 8
  %48 = call i32 @ipw2100_enable_adapter(%struct.ipw2100_priv* %47)
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %49, %38
  %52 = load i32, i32* %4, align 4
  ret i32 %52
}

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @ipw2100_disable_adapter(%struct.ipw2100_priv*) #1

declare dso_local i32 @ipw2100_hw_send_command(%struct.ipw2100_priv*, %struct.host_command*) #1

declare dso_local i32 @ipw2100_enable_adapter(%struct.ipw2100_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
