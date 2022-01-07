; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_link_config_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_link_config_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { %struct.niu_link_config }
%struct.niu_link_config = type { i32, i32, i32, i8*, i32, i8*, i32 }

@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_10000baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i8* null, align 8
@DUPLEX_INVALID = common dso_local global i8* null, align 8
@LOOPBACK_DISABLED = common dso_local global i32 0, align 4
@LOOPBACK_MAC = common dso_local global i32 0, align 4
@SPEED_10000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_link_config_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_link_config_init(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca %struct.niu_link_config*, align 8
  store %struct.niu* %0, %struct.niu** %2, align 8
  %4 = load %struct.niu*, %struct.niu** %2, align 8
  %5 = getelementptr inbounds %struct.niu, %struct.niu* %4, i32 0, i32 0
  store %struct.niu_link_config* %5, %struct.niu_link_config** %3, align 8
  %6 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %7 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ADVERTISED_10000baseT_Full, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %22 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  %23 = load i32, i32* @SPEED_INVALID, align 4
  %24 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %25 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %27 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %26, i32 0, i32 6
  store i32 %23, i32* %27, align 8
  %28 = load i8*, i8** @DUPLEX_FULL, align 8
  %29 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %30 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %29, i32 0, i32 5
  store i8* %28, i8** %30, align 8
  %31 = load i8*, i8** @DUPLEX_INVALID, align 8
  %32 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %33 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %32, i32 0, i32 3
  store i8* %31, i8** %33, align 8
  %34 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %35 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %34, i32 0, i32 1
  store i32 1, i32* %35, align 4
  %36 = load i32, i32* @LOOPBACK_DISABLED, align 4
  %37 = load %struct.niu_link_config*, %struct.niu_link_config** %3, align 8
  %38 = getelementptr inbounds %struct.niu_link_config, %struct.niu_link_config* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
