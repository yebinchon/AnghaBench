; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_local_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/dec/tulip/extr_de4x5.c_de4x5_local_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.de4x5_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64*, i32, i32, i32 }

@DE4X5_PKT_STAT_SZ = common dso_local global i32 0, align 4
@DE4X5_PKT_BIN_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i8*, i32)* @de4x5_local_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @de4x5_local_stats(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.de4x5_private*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.de4x5_private* @netdev_priv(%struct.net_device* %9)
  store %struct.de4x5_private* %10, %struct.de4x5_private** %7, align 8
  store i32 1, i32* %8, align 4
  br label %11

11:                                               ; preds = %34, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @DE4X5_PKT_STAT_SZ, align 4
  %14 = sub nsw i32 %13, 1
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @DE4X5_PKT_BIN_SZ, align 4
  %20 = mul nsw i32 %18, %19
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %16
  %23 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %24 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64*, i64** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64, i64* %26, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %30, 1
  store i64 %31, i64* %29, align 8
  %32 = load i32, i32* @DE4X5_PKT_STAT_SZ, align 4
  store i32 %32, i32* %8, align 4
  br label %33

33:                                               ; preds = %22, %16
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %8, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %8, align 4
  br label %11

37:                                               ; preds = %11
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @is_multicast_ether_addr(i8* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %37
  %42 = load i8*, i8** %5, align 8
  %43 = call i64 @is_broadcast_ether_addr(i8* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %41
  %46 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %47 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  br label %57

51:                                               ; preds = %41
  %52 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %53 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  br label %57

57:                                               ; preds = %51, %45
  br label %72

58:                                               ; preds = %37
  %59 = load i8*, i8** %5, align 8
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i64 @ether_addr_equal(i8* %59, i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %67 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %65, %58
  br label %72

72:                                               ; preds = %71, %57
  %73 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %74 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i64*, i64** %75, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 0
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  store i64 %79, i64* %77, align 8
  %80 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %81 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 0
  %83 = load i64*, i64** %82, align 8
  %84 = getelementptr inbounds i64, i64* %83, i64 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %72
  %88 = load %struct.de4x5_private*, %struct.de4x5_private** %7, align 8
  %89 = getelementptr inbounds %struct.de4x5_private, %struct.de4x5_private* %88, i32 0, i32 0
  %90 = bitcast %struct.TYPE_2__* %89 to i8*
  %91 = call i32 @memset(i8* %90, i32 0, i32 24)
  br label %92

92:                                               ; preds = %87, %72
  ret void
}

declare dso_local %struct.de4x5_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @is_multicast_ether_addr(i8*) #1

declare dso_local i64 @is_broadcast_ether_addr(i8*) #1

declare dso_local i64 @ether_addr_equal(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
