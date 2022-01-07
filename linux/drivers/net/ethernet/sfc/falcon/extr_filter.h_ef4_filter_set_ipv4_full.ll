; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_filter.h_ef4_filter_set_ipv4_full.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sfc/falcon/extr_filter.h_ef4_filter_set_ipv4_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ef4_filter_spec = type { i32, i8*, i8**, i8*, i8**, i32, i32 }

@EF4_FILTER_MATCH_ETHER_TYPE = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_IP_PROTO = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_HOST = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_LOC_PORT = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_REM_HOST = common dso_local global i32 0, align 4
@EF4_FILTER_MATCH_REM_PORT = common dso_local global i32 0, align 4
@ETH_P_IP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ef4_filter_spec*, i32, i8*, i8*, i8*, i8*)* @ef4_filter_set_ipv4_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ef4_filter_set_ipv4_full(%struct.ef4_filter_spec* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5) #0 {
  %7 = alloca %struct.ef4_filter_spec*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  store %struct.ef4_filter_spec* %0, %struct.ef4_filter_spec** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i8* %5, i8** %12, align 8
  %13 = load i32, i32* @EF4_FILTER_MATCH_ETHER_TYPE, align 4
  %14 = load i32, i32* @EF4_FILTER_MATCH_IP_PROTO, align 4
  %15 = or i32 %13, %14
  %16 = load i32, i32* @EF4_FILTER_MATCH_LOC_HOST, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @EF4_FILTER_MATCH_LOC_PORT, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @EF4_FILTER_MATCH_REM_HOST, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @EF4_FILTER_MATCH_REM_PORT, align 4
  %23 = or i32 %21, %22
  %24 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %7, align 8
  %25 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = or i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load i32, i32* @ETH_P_IP, align 4
  %29 = call i32 @htons(i32 %28)
  %30 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %7, align 8
  %31 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %30, i32 0, i32 6
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %7, align 8
  %34 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %33, i32 0, i32 5
  store i32 %32, i32* %34, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %7, align 8
  %37 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %36, i32 0, i32 4
  %38 = load i8**, i8*** %37, align 8
  %39 = getelementptr inbounds i8*, i8** %38, i64 0
  store i8* %35, i8** %39, align 8
  %40 = load i8*, i8** %10, align 8
  %41 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %7, align 8
  %42 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %7, align 8
  %45 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %44, i32 0, i32 2
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %43, i8** %47, align 8
  %48 = load i8*, i8** %12, align 8
  %49 = load %struct.ef4_filter_spec*, %struct.ef4_filter_spec** %7, align 8
  %50 = getelementptr inbounds %struct.ef4_filter_spec, %struct.ef4_filter_spec* %49, i32 0, i32 1
  store i8* %48, i8** %50, align 8
  ret i32 0
}

declare dso_local i32 @htons(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
