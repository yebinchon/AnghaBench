; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_reprs_reify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/flower/extr_main.c_nfp_flower_reprs_reify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_app = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.nfp_reprs = type { i32 }
%struct.net_device = type { i32 }
%struct.nfp_repr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_app*, i32, i32)* @nfp_flower_reprs_reify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfp_flower_reprs_reify(%struct.nfp_app* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfp_app*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.nfp_reprs*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.net_device*, align 8
  %13 = alloca %struct.nfp_repr*, align 8
  store %struct.nfp_app* %0, %struct.nfp_app** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %14 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %15 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %16, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %22 = getelementptr inbounds %struct.nfp_app, %struct.nfp_app* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @lockdep_is_held(i32* %24)
  %26 = call %struct.nfp_reprs* @rcu_dereference_protected(i32 %20, i32 %25)
  store %struct.nfp_reprs* %26, %struct.nfp_reprs** %8, align 8
  %27 = load %struct.nfp_reprs*, %struct.nfp_reprs** %8, align 8
  %28 = icmp ne %struct.nfp_reprs* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %63

30:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %31

31:                                               ; preds = %58, %30
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.nfp_reprs*, %struct.nfp_reprs** %8, align 8
  %34 = getelementptr inbounds %struct.nfp_reprs, %struct.nfp_reprs* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %31
  %38 = load %struct.nfp_app*, %struct.nfp_app** %5, align 8
  %39 = load %struct.nfp_reprs*, %struct.nfp_reprs** %8, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call %struct.net_device* @nfp_repr_get_locked(%struct.nfp_app* %38, %struct.nfp_reprs* %39, i32 %40)
  store %struct.net_device* %41, %struct.net_device** %12, align 8
  %42 = load %struct.net_device*, %struct.net_device** %12, align 8
  %43 = icmp ne %struct.net_device* %42, null
  br i1 %43, label %44, label %57

44:                                               ; preds = %37
  %45 = load %struct.net_device*, %struct.net_device** %12, align 8
  %46 = call %struct.nfp_repr* @netdev_priv(%struct.net_device* %45)
  store %struct.nfp_repr* %46, %struct.nfp_repr** %13, align 8
  %47 = load %struct.nfp_repr*, %struct.nfp_repr** %13, align 8
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @nfp_flower_cmsg_portreify(%struct.nfp_repr* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  store i32 %53, i32* %4, align 4
  br label %63

54:                                               ; preds = %44
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %54, %37
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %31

61:                                               ; preds = %31
  %62 = load i32, i32* %11, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %52, %29
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local %struct.nfp_reprs* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local %struct.net_device* @nfp_repr_get_locked(%struct.nfp_app*, %struct.nfp_reprs*, i32) #1

declare dso_local %struct.nfp_repr* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nfp_flower_cmsg_portreify(%struct.nfp_repr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
