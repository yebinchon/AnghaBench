; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_init_link_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/cxgb/extr_subr.c_init_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.board_info = type { i32 }

@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_config*, %struct.board_info*)* @init_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_link_config(%struct.link_config* %0, %struct.board_info* %1) #0 {
  %3 = alloca %struct.link_config*, align 8
  %4 = alloca %struct.board_info*, align 8
  store %struct.link_config* %0, %struct.link_config** %3, align 8
  store %struct.board_info* %1, %struct.board_info** %4, align 8
  %5 = load %struct.board_info*, %struct.board_info** %4, align 8
  %6 = getelementptr inbounds %struct.board_info, %struct.board_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.link_config*, %struct.link_config** %3, align 8
  %9 = getelementptr inbounds %struct.link_config, %struct.link_config* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 4
  %10 = load i32, i32* @SPEED_INVALID, align 4
  %11 = load %struct.link_config*, %struct.link_config** %3, align 8
  %12 = getelementptr inbounds %struct.link_config, %struct.link_config* %11, i32 0, i32 7
  store i32 %10, i32* %12, align 4
  %13 = load %struct.link_config*, %struct.link_config** %3, align 8
  %14 = getelementptr inbounds %struct.link_config, %struct.link_config* %13, i32 0, i32 8
  store i32 %10, i32* %14, align 4
  %15 = load i32, i32* @DUPLEX_INVALID, align 4
  %16 = load %struct.link_config*, %struct.link_config** %3, align 8
  %17 = getelementptr inbounds %struct.link_config, %struct.link_config* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.link_config*, %struct.link_config** %3, align 8
  %19 = getelementptr inbounds %struct.link_config, %struct.link_config* %18, i32 0, i32 6
  store i32 %15, i32* %19, align 4
  %20 = load i32, i32* @PAUSE_RX, align 4
  %21 = load i32, i32* @PAUSE_TX, align 4
  %22 = or i32 %20, %21
  %23 = load %struct.link_config*, %struct.link_config** %3, align 8
  %24 = getelementptr inbounds %struct.link_config, %struct.link_config* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 4
  %25 = load %struct.link_config*, %struct.link_config** %3, align 8
  %26 = getelementptr inbounds %struct.link_config, %struct.link_config* %25, i32 0, i32 1
  store i32 %22, i32* %26, align 4
  %27 = load %struct.link_config*, %struct.link_config** %3, align 8
  %28 = getelementptr inbounds %struct.link_config, %struct.link_config* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %47

33:                                               ; preds = %2
  %34 = load %struct.link_config*, %struct.link_config** %3, align 8
  %35 = getelementptr inbounds %struct.link_config, %struct.link_config* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.link_config*, %struct.link_config** %3, align 8
  %38 = getelementptr inbounds %struct.link_config, %struct.link_config* %37, i32 0, i32 3
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* @AUTONEG_ENABLE, align 4
  %40 = load %struct.link_config*, %struct.link_config** %3, align 8
  %41 = getelementptr inbounds %struct.link_config, %struct.link_config* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load i32, i32* @PAUSE_AUTONEG, align 4
  %43 = load %struct.link_config*, %struct.link_config** %3, align 8
  %44 = getelementptr inbounds %struct.link_config, %struct.link_config* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %45, %42
  store i32 %46, i32* %44, align 4
  br label %53

47:                                               ; preds = %2
  %48 = load %struct.link_config*, %struct.link_config** %3, align 8
  %49 = getelementptr inbounds %struct.link_config, %struct.link_config* %48, i32 0, i32 3
  store i32 0, i32* %49, align 4
  %50 = load i32, i32* @AUTONEG_DISABLE, align 4
  %51 = load %struct.link_config*, %struct.link_config** %3, align 8
  %52 = getelementptr inbounds %struct.link_config, %struct.link_config* %51, i32 0, i32 4
  store i32 %50, i32* %52, align 4
  br label %53

53:                                               ; preds = %47, %33
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
