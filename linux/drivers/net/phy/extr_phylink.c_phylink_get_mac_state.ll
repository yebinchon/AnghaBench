; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_get_mac_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_get_mac_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i32, %struct.TYPE_3__*, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 (i32, %struct.phylink_link_state*)* }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.phylink_link_state = type { i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@SPEED_UNKNOWN = common dso_local global i32 0, align 4
@DUPLEX_UNKNOWN = common dso_local global i32 0, align 4
@MLO_PAUSE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.phylink*, %struct.phylink_link_state*)* @phylink_get_mac_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @phylink_get_mac_state(%struct.phylink* %0, %struct.phylink_link_state* %1) #0 {
  %3 = alloca %struct.phylink*, align 8
  %4 = alloca %struct.phylink_link_state*, align 8
  store %struct.phylink* %0, %struct.phylink** %3, align 8
  store %struct.phylink_link_state* %1, %struct.phylink_link_state** %4, align 8
  %5 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %6 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %5, i32 0, i32 8
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.phylink*, %struct.phylink** %3, align 8
  %9 = getelementptr inbounds %struct.phylink, %struct.phylink* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @linkmode_copy(i32 %7, i32 %11)
  %13 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %14 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @linkmode_zero(i32 %15)
  %17 = load %struct.phylink*, %struct.phylink** %3, align 8
  %18 = getelementptr inbounds %struct.phylink, %struct.phylink* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %22 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %21, i32 0, i32 6
  store i32 %20, i32* %22, align 8
  %23 = load %struct.phylink*, %struct.phylink** %3, align 8
  %24 = getelementptr inbounds %struct.phylink, %struct.phylink* %23, i32 0, i32 2
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %28 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @SPEED_UNKNOWN, align 4
  %30 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %31 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* @DUPLEX_UNKNOWN, align 4
  %33 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %34 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @MLO_PAUSE_NONE, align 4
  %36 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %37 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %36, i32 0, i32 2
  store i32 %35, i32* %37, align 8
  %38 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %39 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %38, i32 0, i32 1
  store i64 0, i64* %39, align 8
  %40 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %41 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.phylink*, %struct.phylink** %3, align 8
  %43 = getelementptr inbounds %struct.phylink, %struct.phylink* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32 (i32, %struct.phylink_link_state*)*, i32 (i32, %struct.phylink_link_state*)** %45, align 8
  %47 = load %struct.phylink*, %struct.phylink** %3, align 8
  %48 = getelementptr inbounds %struct.phylink, %struct.phylink* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %51 = call i32 %46(i32 %49, %struct.phylink_link_state* %50)
  ret i32 %51
}

declare dso_local i32 @linkmode_copy(i32, i32) #1

declare dso_local i32 @linkmode_zero(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
