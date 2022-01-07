; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_sgiseeq_set_multicast.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/seeq/extr_sgiseeq.c_sgiseeq_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sgiseeq_private = type { i8 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@SEEQ_RCMD_RANY = common dso_local global i8 0, align 1
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@SEEQ_RCMD_RBMCAST = common dso_local global i8 0, align 1
@SEEQ_RCMD_RBCAST = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @sgiseeq_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sgiseeq_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.sgiseeq_private*, align 8
  %4 = alloca i8, align 1
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.sgiseeq_private* @netdev_priv(%struct.net_device* %5)
  store %struct.sgiseeq_private* %6, %struct.sgiseeq_private** %3, align 8
  %7 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %8 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  store i8 %9, i8* %4, align 1
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = getelementptr inbounds %struct.net_device, %struct.net_device* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IFF_PROMISC, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load i8, i8* @SEEQ_RCMD_RANY, align 1
  %18 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %19 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %18, i32 0, i32 0
  store i8 %17, i8* %19, align 1
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.net_device*, %struct.net_device** %2, align 8
  %22 = getelementptr inbounds %struct.net_device, %struct.net_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @IFF_ALLMULTI, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %20
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = call i32 @netdev_mc_empty(%struct.net_device* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %27, %20
  %32 = load i8, i8* @SEEQ_RCMD_RBMCAST, align 1
  %33 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %34 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %33, i32 0, i32 0
  store i8 %32, i8* %34, align 1
  br label %39

35:                                               ; preds = %27
  %36 = load i8, i8* @SEEQ_RCMD_RBCAST, align 1
  %37 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %38 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %37, i32 0, i32 0
  store i8 %36, i8* %38, align 1
  br label %39

39:                                               ; preds = %35, %31
  br label %40

40:                                               ; preds = %39, %16
  %41 = load i8, i8* %4, align 1
  %42 = zext i8 %41 to i32
  %43 = load %struct.sgiseeq_private*, %struct.sgiseeq_private** %3, align 8
  %44 = getelementptr inbounds %struct.sgiseeq_private, %struct.sgiseeq_private* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp ne i32 %42, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %40
  %49 = load %struct.net_device*, %struct.net_device** %2, align 8
  %50 = call i32 @sgiseeq_reset(%struct.net_device* %49)
  br label %51

51:                                               ; preds = %48, %40
  ret void
}

declare dso_local %struct.sgiseeq_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @sgiseeq_reset(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
