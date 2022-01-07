; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_vortex_set_duplex.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/3com/extr_3c59x.c_vortex_set_duplex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.vortex_private = type { i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"%s:  setting %s-duplex.\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"half\00", align 1
@Wn3_MAC_Ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @vortex_set_duplex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_set_duplex(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.vortex_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.vortex_private* @netdev_priv(%struct.net_device* %4)
  store %struct.vortex_private* %5, %struct.vortex_private** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = getelementptr inbounds %struct.net_device, %struct.net_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %10 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %9, i32 0, i32 3
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8, i8* %14)
  %16 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %17 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %18 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 32768
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %1
  %23 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %24 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br label %27

27:                                               ; preds = %22, %1
  %28 = phi i1 [ true, %1 ], [ %26, %22 ]
  %29 = zext i1 %28 to i64
  %30 = select i1 %28, i32 32, i32 0
  %31 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %32 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %31, i32 0, i32 4
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 64, i32 0
  %37 = or i32 %30, %36
  %38 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %39 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %27
  %43 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %44 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.vortex_private*, %struct.vortex_private** %3, align 8
  %49 = getelementptr inbounds %struct.vortex_private, %struct.vortex_private* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br label %52

52:                                               ; preds = %47, %42, %27
  %53 = phi i1 [ false, %42 ], [ false, %27 ], [ %51, %47 ]
  %54 = zext i1 %53 to i64
  %55 = select i1 %53, i32 256, i32 0
  %56 = or i32 %37, %55
  %57 = load i32, i32* @Wn3_MAC_Ctrl, align 4
  %58 = call i32 @window_write16(%struct.vortex_private* %16, i32 %56, i32 3, i32 %57)
  ret void
}

declare dso_local %struct.vortex_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @pr_info(i8*, i32, i8*) #1

declare dso_local i32 @window_write16(%struct.vortex_private*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
