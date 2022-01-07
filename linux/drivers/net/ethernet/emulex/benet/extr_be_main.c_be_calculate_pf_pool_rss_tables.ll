; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_calculate_pf_pool_rss_tables.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/emulex/benet/extr_be_main.c_be_calculate_pf_pool_rss_tables.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.be_port_resources = type { i32, i32, i32 }

@SAVED_PROFILE_TYPE = common dso_local global i32 0, align 4
@RESOURCE_LIMITS = common dso_local global i32 0, align 4
@MAX_PORT_RSS_TABLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.be_adapter*)* @be_calculate_pf_pool_rss_tables to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @be_calculate_pf_pool_rss_tables(%struct.be_adapter* %0) #0 {
  %2 = alloca %struct.be_adapter*, align 8
  %3 = alloca %struct.be_port_resources, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.be_adapter* %0, %struct.be_adapter** %2, align 8
  %6 = bitcast %struct.be_port_resources* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 12, i1 false)
  %7 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %8 = call i32 @be_max_vfs(%struct.be_adapter* %7)
  store i32 %8, i32* %5, align 4
  %9 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %10 = load i32, i32* @SAVED_PROFILE_TYPE, align 4
  %11 = load i32, i32* @RESOURCE_LIMITS, align 4
  %12 = call i32 @be_cmd_get_profile_config(%struct.be_adapter* %9, i32* null, %struct.be_port_resources* %3, i32 %10, i32 %11, i32 0)
  %13 = load i32, i32* @MAX_PORT_RSS_TABLES, align 4
  %14 = getelementptr inbounds %struct.be_port_resources, %struct.be_port_resources* %3, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %13, %15
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = mul nsw i32 %17, %18
  %20 = getelementptr inbounds %struct.be_port_resources, %struct.be_port_resources* %3, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %19, %21
  %23 = load %struct.be_adapter*, %struct.be_adapter** %2, align 8
  %24 = getelementptr inbounds %struct.be_adapter, %struct.be_adapter* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @be_max_vfs(%struct.be_adapter*) #2

declare dso_local i32 @be_cmd_get_profile_config(%struct.be_adapter*, i32*, %struct.be_port_resources*, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
