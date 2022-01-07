; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_flower_metadata_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_metadata.c_nfp_flower_metadata_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.nfp_flower_priv* }
%struct.nfp_flower_priv = type { %struct.TYPE_7__, %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@nfp_check_rhashtable_empty = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_flower_metadata_cleanup(%struct.nfp_app* %0) #0 {
  %2 = alloca %struct.nfp_app*, align 8
  %3 = alloca %struct.nfp_flower_priv*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %2, align 8
  %4 = load %struct.nfp_app*, %struct.nfp_app** %2, align 8
  %5 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %4, i32 0, i32 0
  %6 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %5, align 8
  store %struct.nfp_flower_priv* %6, %struct.nfp_flower_priv** %3, align 8
  %7 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %8 = icmp ne %struct.nfp_flower_priv* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %40

10:                                               ; preds = %1
  %11 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %12 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %11, i32 0, i32 4
  %13 = load i32, i32* @nfp_check_rhashtable_empty, align 4
  %14 = call i32 @rhashtable_free_and_destroy(i32* %12, i32 %13, i32* null)
  %15 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %16 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %15, i32 0, i32 3
  %17 = load i32, i32* @nfp_check_rhashtable_empty, align 4
  %18 = call i32 @rhashtable_free_and_destroy(i32* %16, i32 %17, i32* null)
  %19 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %20 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kvfree(i32 %21)
  %23 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @kfree(i32 %27)
  %29 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %30 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @kfree(i32 %32)
  %34 = load %struct.nfp_flower_priv*, %struct.nfp_flower_priv** %3, align 8
  %35 = getelementptr inbounds %struct.nfp_flower_priv, %struct.nfp_flower_priv* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @vfree(i32 %38)
  br label %40

40:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @rhashtable_free_and_destroy(i32*, i32, i32*) #1

declare dso_local i32 @kvfree(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @vfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
