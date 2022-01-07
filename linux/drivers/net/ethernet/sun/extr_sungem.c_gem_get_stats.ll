; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_get_stats.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_sungem.c_gem_get_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device_stats = type { i32, i32, i32, i32, i32 }
%struct.net_device = type { %struct.net_device_stats }
%struct.gem = type { i64, i32 }

@MAC_FCSERR = common dso_local global i64 0, align 8
@MAC_AERR = common dso_local global i64 0, align 8
@MAC_LERR = common dso_local global i64 0, align 8
@MAC_ECOLL = common dso_local global i64 0, align 8
@MAC_LCOLL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device_stats* (%struct.net_device*)* @gem_get_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device_stats* @gem_get_stats(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.gem*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.gem* @netdev_priv(%struct.net_device* %4)
  store %struct.gem* %5, %struct.gem** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call i32 @netif_device_present(%struct.net_device* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = load %struct.net_device*, %struct.net_device** %2, align 8
  %11 = call i32 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %9, %1
  br label %127

14:                                               ; preds = %9
  %15 = load %struct.gem*, %struct.gem** %3, align 8
  %16 = getelementptr inbounds %struct.gem, %struct.gem* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  %20 = zext i1 %19 to i32
  %21 = call i64 @WARN_ON(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %14
  br label %127

24:                                               ; preds = %14
  %25 = load %struct.gem*, %struct.gem** %3, align 8
  %26 = getelementptr inbounds %struct.gem, %struct.gem* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MAC_FCSERR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i64 @readl(i64 %29)
  %31 = load %struct.net_device*, %struct.net_device** %2, align 8
  %32 = getelementptr inbounds %struct.net_device, %struct.net_device* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %35, %30
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %33, align 4
  %38 = load %struct.gem*, %struct.gem** %3, align 8
  %39 = getelementptr inbounds %struct.gem, %struct.gem* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @MAC_FCSERR, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @writel(i32 0, i64 %42)
  %44 = load %struct.gem*, %struct.gem** %3, align 8
  %45 = getelementptr inbounds %struct.gem, %struct.gem* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @MAC_AERR, align 8
  %48 = add nsw i64 %46, %47
  %49 = call i64 @readl(i64 %48)
  %50 = load %struct.net_device*, %struct.net_device** %2, align 8
  %51 = getelementptr inbounds %struct.net_device, %struct.net_device* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %54, %49
  %56 = trunc i64 %55 to i32
  store i32 %56, i32* %52, align 4
  %57 = load %struct.gem*, %struct.gem** %3, align 8
  %58 = getelementptr inbounds %struct.gem, %struct.gem* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @MAC_AERR, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @writel(i32 0, i64 %61)
  %63 = load %struct.gem*, %struct.gem** %3, align 8
  %64 = getelementptr inbounds %struct.gem, %struct.gem* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MAC_LERR, align 8
  %67 = add nsw i64 %65, %66
  %68 = call i64 @readl(i64 %67)
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = add nsw i64 %73, %68
  %75 = trunc i64 %74 to i32
  store i32 %75, i32* %71, align 4
  %76 = load %struct.gem*, %struct.gem** %3, align 8
  %77 = getelementptr inbounds %struct.gem, %struct.gem* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @MAC_LERR, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @writel(i32 0, i64 %80)
  %82 = load %struct.gem*, %struct.gem** %3, align 8
  %83 = getelementptr inbounds %struct.gem, %struct.gem* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @MAC_ECOLL, align 8
  %86 = add nsw i64 %84, %85
  %87 = call i64 @readl(i64 %86)
  %88 = load %struct.net_device*, %struct.net_device** %2, align 8
  %89 = getelementptr inbounds %struct.net_device, %struct.net_device* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = sext i32 %91 to i64
  %93 = add nsw i64 %92, %87
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %90, align 4
  %95 = load %struct.gem*, %struct.gem** %3, align 8
  %96 = getelementptr inbounds %struct.gem, %struct.gem* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @MAC_ECOLL, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i64 @readl(i64 %99)
  %101 = load %struct.gem*, %struct.gem** %3, align 8
  %102 = getelementptr inbounds %struct.gem, %struct.gem* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @MAC_LCOLL, align 8
  %105 = add nsw i64 %103, %104
  %106 = call i64 @readl(i64 %105)
  %107 = add nsw i64 %100, %106
  %108 = load %struct.net_device*, %struct.net_device** %2, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.net_device_stats, %struct.net_device_stats* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %112, %107
  %114 = trunc i64 %113 to i32
  store i32 %114, i32* %110, align 4
  %115 = load %struct.gem*, %struct.gem** %3, align 8
  %116 = getelementptr inbounds %struct.gem, %struct.gem* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @MAC_ECOLL, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @writel(i32 0, i64 %119)
  %121 = load %struct.gem*, %struct.gem** %3, align 8
  %122 = getelementptr inbounds %struct.gem, %struct.gem* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @MAC_LCOLL, align 8
  %125 = add nsw i64 %123, %124
  %126 = call i32 @writel(i32 0, i64 %125)
  br label %127

127:                                              ; preds = %24, %23, %13
  %128 = load %struct.net_device*, %struct.net_device** %2, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  ret %struct.net_device_stats* %129
}

declare dso_local %struct.gem* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
