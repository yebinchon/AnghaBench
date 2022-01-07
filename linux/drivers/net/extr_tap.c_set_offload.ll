; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_set_offload.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_tap.c_set_offload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tap_queue = type { i32 }
%struct.tap_dev = type { i32, i32 (%struct.tap_dev*, i32)*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOLINK = common dso_local global i32 0, align 4
@TUN_F_CSUM = common dso_local global i64 0, align 8
@NETIF_F_HW_CSUM = common dso_local global i32 0, align 4
@TUN_F_TSO4 = common dso_local global i64 0, align 8
@TUN_F_TSO6 = common dso_local global i64 0, align 8
@TUN_F_TSO_ECN = common dso_local global i64 0, align 8
@NETIF_F_TSO_ECN = common dso_local global i32 0, align 4
@NETIF_F_TSO = common dso_local global i32 0, align 4
@NETIF_F_TSO6 = common dso_local global i32 0, align 4
@RX_OFFLOADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tap_queue*, i64)* @set_offload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_offload(%struct.tap_queue* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tap_queue*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.tap_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tap_queue* %0, %struct.tap_queue** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.tap_queue*, %struct.tap_queue** %4, align 8
  %10 = getelementptr inbounds %struct.tap_queue, %struct.tap_queue* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.tap_dev* @rtnl_dereference(i32 %11)
  store %struct.tap_dev* %12, %struct.tap_dev** %6, align 8
  %13 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %14 = icmp ne %struct.tap_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOLINK, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %97

18:                                               ; preds = %2
  %19 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %20 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %7, align 4
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @TUN_F_CSUM, align 8
  %26 = and i64 %24, %25
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %65

28:                                               ; preds = %18
  %29 = load i32, i32* @NETIF_F_HW_CSUM, align 4
  store i32 %29, i32* %8, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load i64, i64* @TUN_F_TSO4, align 8
  %32 = load i64, i64* @TUN_F_TSO6, align 8
  %33 = or i64 %31, %32
  %34 = and i64 %30, %33
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %64

36:                                               ; preds = %28
  %37 = load i64, i64* %5, align 8
  %38 = load i64, i64* @TUN_F_TSO_ECN, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @NETIF_F_TSO_ECN, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @TUN_F_TSO4, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @NETIF_F_TSO, align 4
  %52 = load i32, i32* %8, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %8, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i64, i64* %5, align 8
  %56 = load i64, i64* @TUN_F_TSO6, align 8
  %57 = and i64 %55, %56
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %54
  %60 = load i32, i32* @NETIF_F_TSO6, align 4
  %61 = load i32, i32* %8, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %59, %54
  br label %64

64:                                               ; preds = %63, %28
  br label %65

65:                                               ; preds = %64, %18
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @NETIF_F_TSO, align 4
  %68 = load i32, i32* @NETIF_F_TSO6, align 4
  %69 = or i32 %67, %68
  %70 = and i32 %66, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @RX_OFFLOADS, align 4
  %74 = load i32, i32* %7, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %7, align 4
  br label %81

76:                                               ; preds = %65
  %77 = load i32, i32* @RX_OFFLOADS, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %76, %72
  %82 = load i32, i32* %8, align 4
  %83 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %84 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  %85 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %86 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %85, i32 0, i32 1
  %87 = load i32 (%struct.tap_dev*, i32)*, i32 (%struct.tap_dev*, i32)** %86, align 8
  %88 = icmp ne i32 (%struct.tap_dev*, i32)* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %81
  %90 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %91 = getelementptr inbounds %struct.tap_dev, %struct.tap_dev* %90, i32 0, i32 1
  %92 = load i32 (%struct.tap_dev*, i32)*, i32 (%struct.tap_dev*, i32)** %91, align 8
  %93 = load %struct.tap_dev*, %struct.tap_dev** %6, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 %92(%struct.tap_dev* %93, i32 %94)
  br label %96

96:                                               ; preds = %89, %81
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %15
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local %struct.tap_dev* @rtnl_dereference(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
