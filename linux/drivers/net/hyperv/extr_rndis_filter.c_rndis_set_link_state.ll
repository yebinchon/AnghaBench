; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_set_link_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_set_link_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rndis_device = type { i32 }
%struct.rndis_request = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rndis_query_complete }
%struct.rndis_query_complete = type { i64, i32, i64 }

@RNDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rndis_device*, %struct.rndis_request*)* @rndis_set_link_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_set_link_state(%struct.rndis_device* %0, %struct.rndis_request* %1) #0 {
  %3 = alloca %struct.rndis_device*, align 8
  %4 = alloca %struct.rndis_request*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rndis_query_complete*, align 8
  store %struct.rndis_device* %0, %struct.rndis_device** %3, align 8
  store %struct.rndis_request* %1, %struct.rndis_request** %4, align 8
  %7 = load %struct.rndis_request*, %struct.rndis_request** %4, align 8
  %8 = getelementptr inbounds %struct.rndis_request, %struct.rndis_request* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store %struct.rndis_query_complete* %10, %struct.rndis_query_complete** %6, align 8
  %11 = load %struct.rndis_query_complete*, %struct.rndis_query_complete** %6, align 8
  %12 = getelementptr inbounds %struct.rndis_query_complete, %struct.rndis_query_complete* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RNDIS_STATUS_SUCCESS, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %2
  %17 = load %struct.rndis_query_complete*, %struct.rndis_query_complete** %6, align 8
  %18 = getelementptr inbounds %struct.rndis_query_complete, %struct.rndis_query_complete* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = icmp eq i64 %20, 8
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load %struct.rndis_query_complete*, %struct.rndis_query_complete** %6, align 8
  %24 = ptrtoint %struct.rndis_query_complete* %23 to i64
  %25 = load %struct.rndis_query_complete*, %struct.rndis_query_complete** %6, align 8
  %26 = getelementptr inbounds %struct.rndis_query_complete, %struct.rndis_query_complete* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %24, %27
  %29 = inttoptr i64 %28 to i8*
  %30 = call i32 @memcpy(i64* %5, i8* %29, i32 8)
  %31 = load i64, i64* %5, align 8
  %32 = icmp ne i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = load %struct.rndis_device*, %struct.rndis_device** %3, align 8
  %35 = getelementptr inbounds %struct.rndis_device, %struct.rndis_device* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 4
  br label %36

36:                                               ; preds = %22, %16, %2
  ret void
}

declare dso_local i32 @memcpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
