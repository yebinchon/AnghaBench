; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_get_fixed_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_phylink.c_phylink_get_fixed_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.phylink = type { i64, i32, i32 (i32, %struct.phylink_link_state*)*, %struct.phylink_link_state }
%struct.phylink_link_state = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.phylink*, %struct.phylink_link_state*)* @phylink_get_fixed_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @phylink_get_fixed_state(%struct.phylink* %0, %struct.phylink_link_state* %1) #0 {
  %3 = alloca %struct.phylink*, align 8
  %4 = alloca %struct.phylink_link_state*, align 8
  store %struct.phylink* %0, %struct.phylink** %3, align 8
  store %struct.phylink_link_state* %1, %struct.phylink_link_state** %4, align 8
  %5 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %6 = load %struct.phylink*, %struct.phylink** %3, align 8
  %7 = getelementptr inbounds %struct.phylink, %struct.phylink* %6, i32 0, i32 3
  %8 = bitcast %struct.phylink_link_state* %5 to i8*
  %9 = bitcast %struct.phylink_link_state* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 8 %9, i64 4, i1 false)
  %10 = load %struct.phylink*, %struct.phylink** %3, align 8
  %11 = getelementptr inbounds %struct.phylink, %struct.phylink* %10, i32 0, i32 2
  %12 = load i32 (i32, %struct.phylink_link_state*)*, i32 (i32, %struct.phylink_link_state*)** %11, align 8
  %13 = icmp ne i32 (i32, %struct.phylink_link_state*)* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.phylink*, %struct.phylink** %3, align 8
  %16 = getelementptr inbounds %struct.phylink, %struct.phylink* %15, i32 0, i32 2
  %17 = load i32 (i32, %struct.phylink_link_state*)*, i32 (i32, %struct.phylink_link_state*)** %16, align 8
  %18 = load %struct.phylink*, %struct.phylink** %3, align 8
  %19 = getelementptr inbounds %struct.phylink, %struct.phylink* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %22 = call i32 %17(i32 %20, %struct.phylink_link_state* %21)
  br label %40

23:                                               ; preds = %2
  %24 = load %struct.phylink*, %struct.phylink** %3, align 8
  %25 = getelementptr inbounds %struct.phylink, %struct.phylink* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %39

28:                                               ; preds = %23
  %29 = load %struct.phylink*, %struct.phylink** %3, align 8
  %30 = getelementptr inbounds %struct.phylink, %struct.phylink* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @gpiod_get_value_cansleep(i64 %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = load %struct.phylink_link_state*, %struct.phylink_link_state** %4, align 8
  %38 = getelementptr inbounds %struct.phylink_link_state, %struct.phylink_link_state* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  br label %39

39:                                               ; preds = %28, %23
  br label %40

40:                                               ; preds = %39, %14
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @gpiod_get_value_cansleep(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
