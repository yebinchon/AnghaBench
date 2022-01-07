; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_shutdown_sw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/marvell/mwifiex/extr_main.c_mwifiex_shutdown_sw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mwifiex_adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mwifiex_adapter.0*)* }
%struct.mwifiex_adapter.0 = type opaque
%struct.mwifiex_private = type { i32 }

@MWIFIEX_BSS_ROLE_ANY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mwifiex_shutdown_sw(%struct.mwifiex_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mwifiex_adapter*, align 8
  %4 = alloca %struct.mwifiex_private*, align 8
  store %struct.mwifiex_adapter* %0, %struct.mwifiex_adapter** %3, align 8
  %5 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %6 = icmp ne %struct.mwifiex_adapter* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %38

8:                                                ; preds = %1
  %9 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @wait_for_completion(i32 %11)
  %13 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %14 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @reinit_completion(i32 %15)
  %17 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %18 = load i32, i32* @MWIFIEX_BSS_ROLE_ANY, align 4
  %19 = call %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter* %17, i32 %18)
  store %struct.mwifiex_private* %19, %struct.mwifiex_private** %4, align 8
  %20 = load %struct.mwifiex_private*, %struct.mwifiex_private** %4, align 8
  %21 = call i32 @mwifiex_deauthenticate(%struct.mwifiex_private* %20, i32* null)
  %22 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %23 = call i32 @mwifiex_uninit_sw(%struct.mwifiex_adapter* %22)
  %24 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %25 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.0*)** %26, align 8
  %28 = icmp ne i32 (%struct.mwifiex_adapter.0*)* %27, null
  br i1 %28, label %29, label %37

29:                                               ; preds = %8
  %30 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %31 = getelementptr inbounds %struct.mwifiex_adapter, %struct.mwifiex_adapter* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32 (%struct.mwifiex_adapter.0*)*, i32 (%struct.mwifiex_adapter.0*)** %32, align 8
  %34 = load %struct.mwifiex_adapter*, %struct.mwifiex_adapter** %3, align 8
  %35 = bitcast %struct.mwifiex_adapter* %34 to %struct.mwifiex_adapter.0*
  %36 = call i32 %33(%struct.mwifiex_adapter.0* %35)
  br label %37

37:                                               ; preds = %29, %8
  store i32 0, i32* %2, align 4
  br label %38

38:                                               ; preds = %37, %7
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local i32 @wait_for_completion(i32) #1

declare dso_local i32 @reinit_completion(i32) #1

declare dso_local %struct.mwifiex_private* @mwifiex_get_priv(%struct.mwifiex_adapter*, i32) #1

declare dso_local i32 @mwifiex_deauthenticate(%struct.mwifiex_private*, i32*) #1

declare dso_local i32 @mwifiex_uninit_sw(%struct.mwifiex_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
