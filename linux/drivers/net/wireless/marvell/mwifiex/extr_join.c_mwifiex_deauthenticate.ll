; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_deauthenticate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_deauthenticate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_AD_HOC_STOP = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4
@HostCmd_CMD_UAP_BSS_STOP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_deauthenticate(%struct.mwifiex_private* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %8 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %14 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  switch i32 %15, label %39 [
    i32 128, label %16
    i32 129, label %16
    i32 131, label %29
    i32 130, label %34
  ]

16:                                               ; preds = %12, %12
  %17 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = call i32 @mwifiex_deauthenticate_infra(%struct.mwifiex_private* %17, i32* %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %16
  %23 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %24 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @cfg80211_disconnected(i32 %25, i32 0, i32* null, i32 0, i32 1, i32 %26)
  br label %28

28:                                               ; preds = %22, %16
  br label %40

29:                                               ; preds = %12
  %30 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %31 = load i32, i32* @HostCmd_CMD_802_11_AD_HOC_STOP, align 4
  %32 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %33 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %30, i32 %31, i32 %32, i32 0, i32* null, i32 1)
  store i32 %33, i32* %3, align 4
  br label %42

34:                                               ; preds = %12
  %35 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %36 = load i32, i32* @HostCmd_CMD_UAP_BSS_STOP, align 4
  %37 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %38 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %35, i32 %36, i32 %37, i32 0, i32* null, i32 1)
  store i32 %38, i32* %3, align 4
  br label %42

39:                                               ; preds = %12
  br label %40

40:                                               ; preds = %39, %28
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %34, %29, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @mwifiex_deauthenticate_infra(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @cfg80211_disconnected(i32, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
