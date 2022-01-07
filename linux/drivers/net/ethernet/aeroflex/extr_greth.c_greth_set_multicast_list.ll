; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_set_multicast_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aeroflex/extr_greth.c_greth_set_multicast_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.greth_private = type { i64, %struct.greth_regs* }
%struct.greth_regs = type { i32, i32, i32 }

@IFF_PROMISC = common dso_local global i32 0, align 4
@GRETH_CTRL_PR = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@GRETH_CTRL_MCEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @greth_set_multicast_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @greth_set_multicast_list(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.greth_private*, align 8
  %5 = alloca %struct.greth_regs*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.greth_private* @netdev_priv(%struct.net_device* %6)
  store %struct.greth_private* %7, %struct.greth_private** %4, align 8
  %8 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %9 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %8, i32 0, i32 1
  %10 = load %struct.greth_regs*, %struct.greth_regs** %9, align 8
  store %struct.greth_regs* %10, %struct.greth_regs** %5, align 8
  %11 = load %struct.greth_regs*, %struct.greth_regs** %5, align 8
  %12 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @GRETH_REGLOAD(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load %struct.net_device*, %struct.net_device** %2, align 8
  %16 = getelementptr inbounds %struct.net_device, %struct.net_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @IFF_PROMISC, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %1
  %22 = load i32, i32* @GRETH_CTRL_PR, align 4
  %23 = load i32, i32* %3, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %1
  %26 = load i32, i32* @GRETH_CTRL_PR, align 4
  %27 = xor i32 %26, -1
  %28 = load i32, i32* %3, align 4
  %29 = and i32 %28, %27
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %25, %21
  %31 = load %struct.greth_private*, %struct.greth_private** %4, align 8
  %32 = getelementptr inbounds %struct.greth_private, %struct.greth_private* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %79

35:                                               ; preds = %30
  %36 = load %struct.net_device*, %struct.net_device** %2, align 8
  %37 = getelementptr inbounds %struct.net_device, %struct.net_device* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IFF_ALLMULTI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load %struct.greth_regs*, %struct.greth_regs** %5, align 8
  %44 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @GRETH_REGSAVE(i32 %45, i32 -1)
  %47 = load %struct.greth_regs*, %struct.greth_regs** %5, align 8
  %48 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @GRETH_REGSAVE(i32 %49, i32 -1)
  %51 = load i32, i32* @GRETH_CTRL_MCEN, align 4
  %52 = load i32, i32* %3, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %3, align 4
  %54 = load %struct.greth_regs*, %struct.greth_regs** %5, align 8
  %55 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* %3, align 4
  %58 = call i32 @GRETH_REGSAVE(i32 %56, i32 %57)
  br label %85

59:                                               ; preds = %35
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = call i64 @netdev_mc_empty(%struct.net_device* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %59
  %64 = load i32, i32* @GRETH_CTRL_MCEN, align 4
  %65 = xor i32 %64, -1
  %66 = load i32, i32* %3, align 4
  %67 = and i32 %66, %65
  store i32 %67, i32* %3, align 4
  %68 = load %struct.greth_regs*, %struct.greth_regs** %5, align 8
  %69 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @GRETH_REGSAVE(i32 %70, i32 %71)
  br label %85

73:                                               ; preds = %59
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = call i32 @greth_set_hash_filter(%struct.net_device* %74)
  %76 = load i32, i32* @GRETH_CTRL_MCEN, align 4
  %77 = load i32, i32* %3, align 4
  %78 = or i32 %77, %76
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %30
  %80 = load %struct.greth_regs*, %struct.greth_regs** %5, align 8
  %81 = getelementptr inbounds %struct.greth_regs, %struct.greth_regs* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %3, align 4
  %84 = call i32 @GRETH_REGSAVE(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %79, %63, %42
  ret void
}

declare dso_local %struct.greth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @GRETH_REGLOAD(i32) #1

declare dso_local i32 @GRETH_REGSAVE(i32, i32) #1

declare dso_local i64 @netdev_mc_empty(%struct.net_device*) #1

declare dso_local i32 @greth_set_hash_filter(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
