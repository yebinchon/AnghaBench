; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/plip/extr_plip.c_plip_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net_local = type { i64, i32, i32, i64, i32, i32, %struct.plip_local, %struct.plip_local }
%struct.plip_local = type { i32*, i8* }

@PLIP_CN_NONE = common dso_local global i32 0, align 4
@PLIP_PK_DONE = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @plip_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @plip_close(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.net_local*, align 8
  %4 = alloca %struct.plip_local*, align 8
  %5 = alloca %struct.plip_local*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.net_local* @netdev_priv(%struct.net_device* %6)
  store %struct.net_local* %7, %struct.net_local** %3, align 8
  %8 = load %struct.net_local*, %struct.net_local** %3, align 8
  %9 = getelementptr inbounds %struct.net_local, %struct.net_local* %8, i32 0, i32 7
  store %struct.plip_local* %9, %struct.plip_local** %4, align 8
  %10 = load %struct.net_local*, %struct.net_local** %3, align 8
  %11 = getelementptr inbounds %struct.net_local, %struct.net_local* %10, i32 0, i32 6
  store %struct.plip_local* %11, %struct.plip_local** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = call i32 @netif_stop_queue(%struct.net_device* %12)
  %14 = load %struct.net_device*, %struct.net_device** %2, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @DISABLE(i32 %16)
  %18 = load %struct.net_device*, %struct.net_device** %2, align 8
  %19 = getelementptr inbounds %struct.net_device, %struct.net_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @synchronize_irq(i32 %20)
  %22 = load %struct.net_device*, %struct.net_device** %2, align 8
  %23 = getelementptr inbounds %struct.net_device, %struct.net_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %36

26:                                               ; preds = %1
  %27 = load %struct.net_local*, %struct.net_local** %3, align 8
  %28 = getelementptr inbounds %struct.net_local, %struct.net_local* %27, i32 0, i32 4
  %29 = call i32 @init_completion(i32* %28)
  %30 = load %struct.net_local*, %struct.net_local** %3, align 8
  %31 = getelementptr inbounds %struct.net_local, %struct.net_local* %30, i32 0, i32 5
  %32 = call i32 @atomic_set(i32* %31, i32 1)
  %33 = load %struct.net_local*, %struct.net_local** %3, align 8
  %34 = getelementptr inbounds %struct.net_local, %struct.net_local* %33, i32 0, i32 4
  %35 = call i32 @wait_for_completion(i32* %34)
  br label %36

36:                                               ; preds = %26, %1
  %37 = load %struct.net_local*, %struct.net_local** %3, align 8
  %38 = getelementptr inbounds %struct.net_local, %struct.net_local* %37, i32 0, i32 3
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* @PLIP_CN_NONE, align 4
  %40 = load %struct.net_local*, %struct.net_local** %3, align 8
  %41 = getelementptr inbounds %struct.net_local, %struct.net_local* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.net_local*, %struct.net_local** %3, align 8
  %43 = getelementptr inbounds %struct.net_local, %struct.net_local* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %36
  %47 = load %struct.net_local*, %struct.net_local** %3, align 8
  %48 = getelementptr inbounds %struct.net_local, %struct.net_local* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @parport_release(i32 %49)
  %51 = load %struct.net_local*, %struct.net_local** %3, align 8
  %52 = getelementptr inbounds %struct.net_local, %struct.net_local* %51, i32 0, i32 0
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %46, %36
  %54 = load i8*, i8** @PLIP_PK_DONE, align 8
  %55 = load %struct.plip_local*, %struct.plip_local** %4, align 8
  %56 = getelementptr inbounds %struct.plip_local, %struct.plip_local* %55, i32 0, i32 1
  store i8* %54, i8** %56, align 8
  %57 = load %struct.plip_local*, %struct.plip_local** %4, align 8
  %58 = getelementptr inbounds %struct.plip_local, %struct.plip_local* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %68

61:                                               ; preds = %53
  %62 = load %struct.plip_local*, %struct.plip_local** %4, align 8
  %63 = getelementptr inbounds %struct.plip_local, %struct.plip_local* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @dev_kfree_skb(i32* %64)
  %66 = load %struct.plip_local*, %struct.plip_local** %4, align 8
  %67 = getelementptr inbounds %struct.plip_local, %struct.plip_local* %66, i32 0, i32 0
  store i32* null, i32** %67, align 8
  br label %68

68:                                               ; preds = %61, %53
  %69 = load i8*, i8** @PLIP_PK_DONE, align 8
  %70 = load %struct.plip_local*, %struct.plip_local** %5, align 8
  %71 = getelementptr inbounds %struct.plip_local, %struct.plip_local* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.plip_local*, %struct.plip_local** %5, align 8
  %73 = getelementptr inbounds %struct.plip_local, %struct.plip_local* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = icmp ne i32* %74, null
  br i1 %75, label %76, label %83

76:                                               ; preds = %68
  %77 = load %struct.plip_local*, %struct.plip_local** %5, align 8
  %78 = getelementptr inbounds %struct.plip_local, %struct.plip_local* %77, i32 0, i32 0
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @kfree_skb(i32* %79)
  %81 = load %struct.plip_local*, %struct.plip_local** %5, align 8
  %82 = getelementptr inbounds %struct.plip_local, %struct.plip_local* %81, i32 0, i32 0
  store i32* null, i32** %82, align 8
  br label %83

83:                                               ; preds = %76, %68
  ret i32 0
}

declare dso_local %struct.net_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

declare dso_local i32 @DISABLE(i32) #1

declare dso_local i32 @synchronize_irq(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @parport_release(i32) #1

declare dso_local i32 @dev_kfree_skb(i32*) #1

declare dso_local i32 @kfree_skb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
