; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc-ops.h_ath6kl_htc_conn_service.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath6kl/extr_htc-ops.h_ath6kl_htc_conn_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htc_target = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}* }
%struct.htc_service_connect_req = type { i32 }
%struct.htc_service_connect_resp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htc_target*, %struct.htc_service_connect_req*, %struct.htc_service_connect_resp*)* @ath6kl_htc_conn_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ath6kl_htc_conn_service(%struct.htc_target* %0, %struct.htc_service_connect_req* %1, %struct.htc_service_connect_resp* %2) #0 {
  %4 = alloca %struct.htc_target*, align 8
  %5 = alloca %struct.htc_service_connect_req*, align 8
  %6 = alloca %struct.htc_service_connect_resp*, align 8
  store %struct.htc_target* %0, %struct.htc_target** %4, align 8
  store %struct.htc_service_connect_req* %1, %struct.htc_service_connect_req** %5, align 8
  store %struct.htc_service_connect_resp* %2, %struct.htc_service_connect_resp** %6, align 8
  %7 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %8 = getelementptr inbounds %struct.htc_target, %struct.htc_target* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = bitcast {}** %14 to i32 (%struct.htc_target*, %struct.htc_service_connect_req*, %struct.htc_service_connect_resp*)**
  %16 = load i32 (%struct.htc_target*, %struct.htc_service_connect_req*, %struct.htc_service_connect_resp*)*, i32 (%struct.htc_target*, %struct.htc_service_connect_req*, %struct.htc_service_connect_resp*)** %15, align 8
  %17 = load %struct.htc_target*, %struct.htc_target** %4, align 8
  %18 = load %struct.htc_service_connect_req*, %struct.htc_service_connect_req** %5, align 8
  %19 = load %struct.htc_service_connect_resp*, %struct.htc_service_connect_resp** %6, align 8
  %20 = call i32 %16(%struct.htc_target* %17, %struct.htc_service_connect_req* %18, %struct.htc_service_connect_resp* %19)
  ret i32 %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
