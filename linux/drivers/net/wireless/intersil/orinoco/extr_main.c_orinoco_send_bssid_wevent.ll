; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_send_bssid_wevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_main.c_orinoco_send_bssid_wevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.orinoco_private = type { %struct.hermes, %struct.net_device* }
%struct.hermes = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.hermes*, i32, i32, i32, i32*, i32)* }
%struct.net_device = type { i32 }
%union.iwreq_data = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }

@USER_BAP = common dso_local global i32 0, align 4
@HERMES_RID_CURRENTBSSID = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ARPHRD_ETHER = common dso_local global i32 0, align 4
@SIOCGIWAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.orinoco_private*)* @orinoco_send_bssid_wevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @orinoco_send_bssid_wevent(%struct.orinoco_private* %0) #0 {
  %2 = alloca %struct.orinoco_private*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.hermes*, align 8
  %5 = alloca %union.iwreq_data, align 4
  %6 = alloca i32, align 4
  store %struct.orinoco_private* %0, %struct.orinoco_private** %2, align 8
  %7 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %8 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %7, i32 0, i32 1
  %9 = load %struct.net_device*, %struct.net_device** %8, align 8
  store %struct.net_device* %9, %struct.net_device** %3, align 8
  %10 = load %struct.orinoco_private*, %struct.orinoco_private** %2, align 8
  %11 = getelementptr inbounds %struct.orinoco_private, %struct.orinoco_private* %10, i32 0, i32 0
  store %struct.hermes* %11, %struct.hermes** %4, align 8
  %12 = load %struct.hermes*, %struct.hermes** %4, align 8
  %13 = getelementptr inbounds %struct.hermes, %struct.hermes* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32 (%struct.hermes*, i32, i32, i32, i32*, i32)*, i32 (%struct.hermes*, i32, i32, i32, i32*, i32)** %15, align 8
  %17 = load %struct.hermes*, %struct.hermes** %4, align 8
  %18 = load i32, i32* @USER_BAP, align 4
  %19 = load i32, i32* @HERMES_RID_CURRENTBSSID, align 4
  %20 = load i32, i32* @ETH_ALEN, align 4
  %21 = bitcast %union.iwreq_data* %5 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 %16(%struct.hermes* %17, i32 %18, i32 %19, i32 %20, i32* null, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %1
  br label %35

28:                                               ; preds = %1
  %29 = load i32, i32* @ARPHRD_ETHER, align 4
  %30 = bitcast %union.iwreq_data* %5 to %struct.TYPE_4__*
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.net_device*, %struct.net_device** %3, align 8
  %33 = load i32, i32* @SIOCGIWAP, align 4
  %34 = call i32 @wireless_send_event(%struct.net_device* %32, i32 %33, %union.iwreq_data* %5, i32* null)
  br label %35

35:                                               ; preds = %28, %27
  ret void
}

declare dso_local i32 @wireless_send_event(%struct.net_device*, i32, %union.iwreq_data*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
