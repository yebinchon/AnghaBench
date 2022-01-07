; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_associate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_join.c_mwifiex_associate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_private = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.mwifiex_bssdescriptor = type { i64, i32, i32 }

@MWIFIEX_BSS_ROLE_STA = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@BAND_AAC = common dso_local global i32 0, align 4
@HostCmd_CMD_802_11_ASSOCIATE = common dso_local global i32 0, align 4
@HostCmd_ACT_GEN_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_associate(%struct.mwifiex_private* %0, %struct.mwifiex_bssdescriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mwifiex_private*, align 8
  %5 = alloca %struct.mwifiex_bssdescriptor*, align 8
  store %struct.mwifiex_private* %0, %struct.mwifiex_private** %4, align 8
  store %struct.mwifiex_bssdescriptor* %1, %struct.mwifiex_bssdescriptor** %5, align 8
  %6 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %7 = call i64 @GET_BSS_ROLE(%struct.mwifiex_private* %6)
  %8 = load i64, i64* @MWIFIEX_BSS_ROLE_STA, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %2
  %11 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %12 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %2
  store i32 -1, i32* %3, align 4
  br label %58

17:                                               ; preds = %10
  %18 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %19 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %18, i32 0, i32 1
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @ISSUPP_11ACENABLED(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %47

25:                                               ; preds = %17
  %26 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %27 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %47, label %30

30:                                               ; preds = %25
  %31 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %32 = getelementptr inbounds %struct.mwifiex_bssdescriptor, %struct.mwifiex_bssdescriptor* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %47, label %35

35:                                               ; preds = %30
  %36 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %37 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @BAND_AAC, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %46 = call i32 @mwifiex_set_11ac_ba_params(%struct.mwifiex_private* %45)
  br label %50

47:                                               ; preds = %35, %30, %25, %17
  %48 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %49 = call i32 @mwifiex_set_ba_params(%struct.mwifiex_private* %48)
  br label %50

50:                                               ; preds = %47, %44
  %51 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %52 = getelementptr inbounds %struct.mwifiex_private, %struct.mwifiex_private* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  %53 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %54 = load i32, i32* @HostCmd_CMD_802_11_ASSOCIATE, align 4
  %55 = load i32, i32* @HostCmd_ACT_GEN_SET, align 4
  %56 = load %struct.mwifiex_bssdescriptor*, %struct.mwifiex_bssdescriptor** %5, align 8
  %57 = call i32 @mwifiex_send_cmd(%struct.mwifiex_private* %53, i32 %54, i32 %55, i32 0, %struct.mwifiex_bssdescriptor* %56, i32 1)
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %50, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @GET_BSS_ROLE(%struct.mwifiex_private*) #1

declare dso_local i64 @ISSUPP_11ACENABLED(i32) #1

declare dso_local i32 @mwifiex_set_11ac_ba_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_set_ba_params(%struct.mwifiex_private*) #1

declare dso_local i32 @mwifiex_send_cmd(%struct.mwifiex_private*, i32, i32, i32, %struct.mwifiex_bssdescriptor*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
