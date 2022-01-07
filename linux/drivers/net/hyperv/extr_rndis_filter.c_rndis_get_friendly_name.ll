; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_get_friendly_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/hyperv/extr_rndis_filter.c_rndis_get_friendly_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rndis_device = type { i32 }
%struct.netvsc_device = type { i32 }

@RNDIS_OID_GEN_FRIENDLY_NAME = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Network Adapter\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.rndis_device*, %struct.netvsc_device*)* @rndis_get_friendly_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rndis_get_friendly_name(%struct.net_device* %0, %struct.rndis_device* %1, %struct.netvsc_device* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.rndis_device*, align 8
  %6 = alloca %struct.netvsc_device*, align 8
  %7 = alloca [256 x i32], align 16
  %8 = alloca i64, align 8
  %9 = alloca [256 x i32], align 16
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.rndis_device* %1, %struct.rndis_device** %5, align 8
  store %struct.netvsc_device* %2, %struct.netvsc_device** %6, align 8
  store i32 1024, i32* %10, align 4
  %11 = load %struct.rndis_device*, %struct.rndis_device** %5, align 8
  %12 = load %struct.netvsc_device*, %struct.netvsc_device** %6, align 8
  %13 = load i32, i32* @RNDIS_OID_GEN_FRIENDLY_NAME, align 4
  %14 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %15 = call i64 @rndis_filter_query_device(%struct.rndis_device* %11, %struct.netvsc_device* %12, i32 %13, i32* %14, i32* %10)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %3
  br label %34

18:                                               ; preds = %3
  %19 = load i32, i32* %10, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %18
  br label %34

22:                                               ; preds = %18
  %23 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %24 = getelementptr inbounds [256 x i32], [256 x i32]* %7, i64 0, i64 0
  %25 = call i64 @ucs2_as_utf8(i32* %23, i32* %24, i32 1024)
  store i64 %25, i64* %8, align 8
  %26 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %27 = call i64 @strcmp(i32* %26, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.net_device*, %struct.net_device** %4, align 8
  %31 = getelementptr inbounds [256 x i32], [256 x i32]* %9, i64 0, i64 0
  %32 = load i64, i64* %8, align 8
  %33 = call i32 @dev_set_alias(%struct.net_device* %30, i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %17, %21, %29, %22
  ret void
}

declare dso_local i64 @rndis_filter_query_device(%struct.rndis_device*, %struct.netvsc_device*, i32, i32*, i32*) #1

declare dso_local i64 @ucs2_as_utf8(i32*, i32*, i32) #1

declare dso_local i64 @strcmp(i32*, i8*) #1

declare dso_local i32 @dev_set_alias(%struct.net_device*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
