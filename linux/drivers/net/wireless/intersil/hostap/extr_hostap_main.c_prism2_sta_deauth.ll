; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_prism2_sta_deauth.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/hostap/extr_hostap_main.c_prism2_sta_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i32, i32 }
%union.iwreq_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@IW_MODE_INFRA = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [7 x i8] c"DDDDDD\00", align 1
@IEEE80211_STYPE_DEAUTH = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @prism2_sta_deauth(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.iwreq_data, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @cpu_to_le16(i32 %9)
  store i32 %10, i32* %8, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @IW_MODE_INFRA, align 8
  %15 = icmp ne i64 %13, %14
  br i1 %15, label %28, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_zero_ether_addr(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = call i64 @ether_addr_equal(i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %16, %2
  store i32 0, i32* %3, align 4
  br label %46

29:                                               ; preds = %22
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @IEEE80211_STYPE_DEAUTH, align 4
  %35 = call i32 @prism2_sta_send_mgmt(%struct.TYPE_6__* %30, i32 %33, i32 %34, i32* %8, i32 2)
  store i32 %35, i32* %7, align 4
  %36 = bitcast %union.iwreq_data* %6 to %struct.TYPE_5__*
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @eth_zero_addr(i32 %38)
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SIOCGIWAP, align 4
  %44 = call i32 @wireless_send_event(i32 %42, i32 %43, %union.iwreq_data* %6, i32* null)
  %45 = load i32, i32* %7, align 4
  store i32 %45, i32* %3, align 4
  br label %46

46:                                               ; preds = %29, %28
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i64 @is_zero_ether_addr(i32) #1

declare dso_local i64 @ether_addr_equal(i32, i8*) #1

declare dso_local i32 @prism2_sta_send_mgmt(%struct.TYPE_6__*, i32, i32, i32*, i32) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @wireless_send_event(i32, i32, %union.iwreq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
