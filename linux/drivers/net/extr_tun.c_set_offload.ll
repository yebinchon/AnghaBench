; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_set_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tun.c_set_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tun_struct = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@TUN_F_CSUM = common dso_local global i64 0, align 8
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@TUN_F_TSO4 = common dso_local global i64 0, align 8
@TUN_F_TSO6 = common dso_local global i64 0, align 8
@TUN_F_TSO_ECN = common dso_local global i64 0, align 8
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@TUN_F_UFO = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@TUN_USER_FEATURES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tun_struct*, i64)* @set_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_offload(%struct.tun_struct* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tun_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.tun_struct* %0, %struct.tun_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load i64, i64* %5, align 8
  %8 = load i64, i64* @TUN_F_CSUM, align 8
  %9 = and i64 %7, %8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %68

11:                                               ; preds = %2
  %12 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  %13 = load i32, i32* %6, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %6, align 4
  %15 = load i64, i64* @TUN_F_CSUM, align 8
  %16 = xor i64 %15, -1
  %17 = load i64, i64* %5, align 8
  %18 = and i64 %17, %16
  store i64 %18, i64* %5, align 8
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @TUN_F_TSO4, align 8
  %21 = load i64, i64* @TUN_F_TSO6, align 8
  %22 = or i64 %20, %21
  %23 = and i64 %19, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %11
  %26 = load i64, i64* %5, align 8
  %27 = load i64, i64* @TUN_F_TSO_ECN, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %32 = load i32, i32* %6, align 4
  %33 = or i32 %32, %31
  store i32 %33, i32* %6, align 4
  %34 = load i64, i64* @TUN_F_TSO_ECN, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %5, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %5, align 8
  br label %38

38:                                               ; preds = %30, %25
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @TUN_F_TSO4, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @NETIF_F_TSO, align 4
  %45 = load i32, i32* %6, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %43, %38
  %48 = load i64, i64* %5, align 8
  %49 = load i64, i64* @TUN_F_TSO6, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @NETIF_F_TSO6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i64, i64* @TUN_F_TSO4, align 8
  %58 = load i64, i64* @TUN_F_TSO6, align 8
  %59 = or i64 %57, %58
  %60 = xor i64 %59, -1
  %61 = load i64, i64* %5, align 8
  %62 = and i64 %61, %60
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %56, %11
  %64 = load i64, i64* @TUN_F_UFO, align 8
  %65 = xor i64 %64, -1
  %66 = load i64, i64* %5, align 8
  %67 = and i64 %66, %65
  store i64 %67, i64* %5, align 8
  br label %68

68:                                               ; preds = %63, %2
  %69 = load i64, i64* %5, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %68
  %72 = load i32, i32* @EINVAL, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %97

74:                                               ; preds = %68
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %77 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 8
  %78 = load i32, i32* @TUN_USER_FEATURES, align 4
  %79 = xor i32 %78, -1
  %80 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %81 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %84, %79
  store i32 %85, i32* %83, align 4
  %86 = load i32, i32* %6, align 4
  %87 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %88 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %87, i32 0, i32 0
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %86
  store i32 %92, i32* %90, align 4
  %93 = load %struct.tun_struct*, %struct.tun_struct** %4, align 8
  %94 = getelementptr inbounds %struct.tun_struct, %struct.tun_struct* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = call i32 @netdev_update_features(%struct.TYPE_2__* %95)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %74, %71
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @netdev_update_features(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
