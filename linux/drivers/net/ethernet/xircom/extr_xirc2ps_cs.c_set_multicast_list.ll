; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/xircom/extr_xirc2ps_cs.c_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }

@XIRCREG42_SWC1 = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@XIRCREG40_CMD0 = common dso_local global i32 0, align 4
@Offline = common dso_local global i32 0, align 4
@EnableRecv = common dso_local global i32 0, align 4
@Online = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = getelementptr inbounds %struct.net_device, %struct.net_device* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* %3, align 4
  %8 = call i32 @SelectPage(i32 66)
  %9 = load i32, i32* @XIRCREG42_SWC1, align 4
  %10 = call i32 @GetByte(i32 %9)
  %11 = and i32 %10, 192
  store i32 %11, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %2, align 8
  %13 = getelementptr inbounds %struct.net_device, %struct.net_device* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IFF_PROMISC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load i32, i32* @XIRCREG42_SWC1, align 4
  %20 = load i32, i32* %4, align 4
  %21 = or i32 %20, 6
  %22 = call i32 @PutByte(i32 %19, i32 %21)
  br label %66

23:                                               ; preds = %1
  %24 = load %struct.net_device*, %struct.net_device** %2, align 8
  %25 = call i32 @netdev_mc_count(%struct.net_device* %24)
  %26 = icmp sgt i32 %25, 9
  br i1 %26, label %34, label %27

27:                                               ; preds = %23
  %28 = load %struct.net_device*, %struct.net_device** %2, align 8
  %29 = getelementptr inbounds %struct.net_device, %struct.net_device* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @IFF_ALLMULTI, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %27, %23
  %35 = load i32, i32* @XIRCREG42_SWC1, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %36, 2
  %38 = call i32 @PutByte(i32 %35, i32 %37)
  br label %65

39:                                               ; preds = %27
  %40 = load %struct.net_device*, %struct.net_device** %2, align 8
  %41 = call i32 @netdev_mc_empty(%struct.net_device* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %60, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @XIRCREG42_SWC1, align 4
  %45 = load i32, i32* %4, align 4
  %46 = or i32 %45, 1
  %47 = call i32 @PutByte(i32 %44, i32 %46)
  %48 = call i32 @SelectPage(i32 64)
  %49 = load i32, i32* @XIRCREG40_CMD0, align 4
  %50 = load i32, i32* @Offline, align 4
  %51 = call i32 @PutByte(i32 %49, i32 %50)
  %52 = load %struct.net_device*, %struct.net_device** %2, align 8
  %53 = call i32 @set_addresses(%struct.net_device* %52)
  %54 = call i32 @SelectPage(i32 64)
  %55 = load i32, i32* @XIRCREG40_CMD0, align 4
  %56 = load i32, i32* @EnableRecv, align 4
  %57 = load i32, i32* @Online, align 4
  %58 = or i32 %56, %57
  %59 = call i32 @PutByte(i32 %55, i32 %58)
  br label %64

60:                                               ; preds = %39
  %61 = load i32, i32* @XIRCREG42_SWC1, align 4
  %62 = load i32, i32* %4, align 4
  %63 = call i32 @PutByte(i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %60, %43
  br label %65

65:                                               ; preds = %64, %34
  br label %66

66:                                               ; preds = %65, %18
  %67 = call i32 @SelectPage(i32 0)
  ret void
}

declare dso_local i32 @SelectPage(i32) #1

declare dso_local i32 @GetByte(i32) #1

declare dso_local i32 @PutByte(i32, i32) #1

declare dso_local i32 @netdev_mc_count(%struct.net_device*) #1

declare dso_local i32 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @set_addresses(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
