; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_reprs_clean_and_free_by_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/extr_nfp_net_repr.c_nfp_reprs_clean_and_free_by_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_reprs = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_reprs_clean_and_free_by_type(%struct.nfp_app* %0, i32 %1) #0 {
  %3 = alloca %struct.nfp_app*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.nfp_reprs*, align 8
  %7 = alloca i32, align 4
  store %struct.nfp_app* %0, %struct.nfp_app** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  %11 = load i32, i32* %4, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds i32, i32* %10, i64 %12
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %16 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32 @lockdep_is_held(i32* %18)
  %20 = call %struct.nfp_reprs* @rcu_dereference_protected(i32 %14, i32 %19)
  store %struct.nfp_reprs* %20, %struct.nfp_reprs** %6, align 8
  %21 = load %struct.nfp_reprs*, %struct.nfp_reprs** %6, align 8
  %22 = icmp ne %struct.nfp_reprs* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %54

24:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %25

25:                                               ; preds = %43, %24
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.nfp_reprs*, %struct.nfp_reprs** %6, align 8
  %28 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %25
  %32 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %33 = load %struct.nfp_reprs*, %struct.nfp_reprs** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call %struct.net_device* @nfp_repr_get_locked(%struct.nfp_app* %32, %struct.nfp_reprs* %33, i32 %34)
  store %struct.net_device* %35, %struct.net_device** %5, align 8
  %36 = load %struct.net_device*, %struct.net_device** %5, align 8
  %37 = icmp ne %struct.net_device* %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %40 = load %struct.net_device*, %struct.net_device** %5, align 8
  %41 = call i32 @nfp_app_repr_preclean(%struct.nfp_app* %39, %struct.net_device* %40)
  br label %42

42:                                               ; preds = %38, %31
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %7, align 4
  br label %25

46:                                               ; preds = %25
  %47 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call %struct.nfp_reprs* @nfp_app_reprs_set(%struct.nfp_app* %47, i32 %48, i32* null)
  store %struct.nfp_reprs* %49, %struct.nfp_reprs** %6, align 8
  %50 = call i32 (...) @synchronize_rcu()
  %51 = load %struct.nfp_app*, %struct.nfp_app** %3, align 8
  %52 = load %struct.nfp_reprs*, %struct.nfp_reprs** %6, align 8
  %53 = call i32 @nfp_reprs_clean_and_free(%struct.nfp_app* %51, %struct.nfp_reprs* %52)
  br label %54

54:                                               ; preds = %46, %23
  ret void
}

declare dso_local %struct.nfp_reprs* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.net_device* @nfp_repr_get_locked(%struct.nfp_app*, %struct.nfp_reprs*, i32) #1

declare dso_local i32 @nfp_app_repr_preclean(%struct.nfp_app*, %struct.net_device*) #1

declare dso_local %struct.nfp_reprs* @nfp_app_reprs_set(%struct.nfp_app*, i32, i32*) #1

declare dso_local i32 @synchronize_rcu(...) #1

declare dso_local i32 @nfp_reprs_clean_and_free(%struct.nfp_app*, %struct.nfp_reprs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
