; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_alloc_arcdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/arcnet/extr_arcnet.c_alloc_arcdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.arcnet_local = type { i32, i32, %struct.net_device* }

@.str = private unnamed_addr constant [6 x i8] c"arc%d\00", align 1
@NET_NAME_UNKNOWN = common dso_local global i32 0, align 4
@arcdev_setup = common dso_local global i32 0, align 4
@arcnet_timer = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_arcdev(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.arcnet_local*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %14

7:                                                ; preds = %1
  %8 = load i8*, i8** %2, align 8
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %7
  %13 = load i8*, i8** %2, align 8
  br label %15

14:                                               ; preds = %7, %1
  br label %15

15:                                               ; preds = %14, %12
  %16 = phi i8* [ %13, %12 ], [ getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), %14 ]
  %17 = load i32, i32* @NET_NAME_UNKNOWN, align 4
  %18 = load i32, i32* @arcdev_setup, align 4
  %19 = call %struct.net_device* @alloc_netdev(i32 16, i8* %16, i32 %17, i32 %18)
  store %struct.net_device* %19, %struct.net_device** %3, align 8
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = icmp ne %struct.net_device* %20, null
  br i1 %21, label %22, label %35

22:                                               ; preds = %15
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call %struct.arcnet_local* @netdev_priv(%struct.net_device* %23)
  store %struct.arcnet_local* %24, %struct.arcnet_local** %4, align 8
  %25 = load %struct.net_device*, %struct.net_device** %3, align 8
  %26 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %27 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %26, i32 0, i32 2
  store %struct.net_device* %25, %struct.net_device** %27, align 8
  %28 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %29 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %28, i32 0, i32 1
  %30 = call i32 @spin_lock_init(i32* %29)
  %31 = load %struct.arcnet_local*, %struct.arcnet_local** %4, align 8
  %32 = getelementptr inbounds %struct.arcnet_local, %struct.arcnet_local* %31, i32 0, i32 0
  %33 = load i32, i32* @arcnet_timer, align 4
  %34 = call i32 @timer_setup(i32* %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %22, %15
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %36
}

declare dso_local %struct.net_device* @alloc_netdev(i32, i8*, i32, i32) #1

declare dso_local %struct.arcnet_local* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
