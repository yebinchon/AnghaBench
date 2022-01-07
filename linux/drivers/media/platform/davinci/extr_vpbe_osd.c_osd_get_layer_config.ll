; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_get_layer_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/davinci/extr_vpbe_osd.c_osd_get_layer_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.osd_state = type { i32, %struct.osd_window_state* }
%struct.osd_window_state = type { %struct.osd_layer_config }
%struct.osd_layer_config = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.osd_state*, i32, %struct.osd_layer_config*)* @osd_get_layer_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @osd_get_layer_config(%struct.osd_state* %0, i32 %1, %struct.osd_layer_config* %2) #0 {
  %4 = alloca %struct.osd_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.osd_layer_config*, align 8
  %7 = alloca %struct.osd_state*, align 8
  %8 = alloca %struct.osd_window_state*, align 8
  %9 = alloca i64, align 8
  store %struct.osd_state* %0, %struct.osd_state** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.osd_layer_config* %2, %struct.osd_layer_config** %6, align 8
  %10 = load %struct.osd_state*, %struct.osd_state** %4, align 8
  store %struct.osd_state* %10, %struct.osd_state** %7, align 8
  %11 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %12 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %11, i32 0, i32 1
  %13 = load %struct.osd_window_state*, %struct.osd_window_state** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %13, i64 %15
  store %struct.osd_window_state* %16, %struct.osd_window_state** %8, align 8
  %17 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %18 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.osd_layer_config*, %struct.osd_layer_config** %6, align 8
  %22 = load %struct.osd_window_state*, %struct.osd_window_state** %8, align 8
  %23 = getelementptr inbounds %struct.osd_window_state, %struct.osd_window_state* %22, i32 0, i32 0
  %24 = bitcast %struct.osd_layer_config* %21 to i8*
  %25 = bitcast %struct.osd_layer_config* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.osd_state*, %struct.osd_state** %7, align 8
  %27 = getelementptr inbounds %struct.osd_state, %struct.osd_state* %26, i32 0, i32 0
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spin_unlock_irqrestore(i32* %27, i64 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
