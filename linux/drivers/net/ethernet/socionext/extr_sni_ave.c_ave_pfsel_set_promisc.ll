; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_pfsel_set_promisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_pfsel_set_promisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { i64 }

@AVE_PF_SIZE = common dso_local global i32 0, align 4
@AVE_PFMBYTE_MASK0 = common dso_local global i32 0, align 4
@AVE_PFMBYTE_MASK1 = common dso_local global i32 0, align 4
@AVE_PFMBIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, i32, i32)* @ave_pfsel_set_promisc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ave_pfsel_set_promisc(%struct.net_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ave_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ave_private* @netdev_priv(%struct.net_device* %8)
  store %struct.ave_private* %9, %struct.ave_private** %7, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AVE_PF_SIZE, align 4
  %12 = icmp ugt i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %57

17:                                               ; preds = %3
  %18 = load %struct.net_device*, %struct.net_device** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @ave_pfsel_stop(%struct.net_device* %18, i32 %19)
  %21 = load i32, i32* @AVE_PFMBYTE_MASK0, align 4
  %22 = load %struct.ave_private*, %struct.ave_private** %7, align 8
  %23 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i64 @AVE_PFMBYTE(i32 %25)
  %27 = add nsw i64 %24, %26
  %28 = call i32 @writel(i32 %21, i64 %27)
  %29 = load i32, i32* @AVE_PFMBYTE_MASK1, align 4
  %30 = load %struct.ave_private*, %struct.ave_private** %7, align 8
  %31 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i64 @AVE_PFMBYTE(i32 %33)
  %35 = add nsw i64 %32, %34
  %36 = add nsw i64 %35, 4
  %37 = call i32 @writel(i32 %29, i64 %36)
  %38 = load i32, i32* @AVE_PFMBIT_MASK, align 4
  %39 = load %struct.ave_private*, %struct.ave_private** %7, align 8
  %40 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i64 @AVE_PFMBIT(i32 %42)
  %44 = add nsw i64 %41, %43
  %45 = call i32 @writel(i32 %38, i64 %44)
  %46 = load i32, i32* %6, align 4
  %47 = load %struct.ave_private*, %struct.ave_private** %7, align 8
  %48 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %5, align 4
  %51 = call i64 @AVE_PFSEL(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writel(i32 %46, i64 %52)
  %54 = load %struct.net_device*, %struct.net_device** %4, align 8
  %55 = load i32, i32* %5, align 4
  %56 = call i32 @ave_pfsel_start(%struct.net_device* %54, i32 %55)
  br label %57

57:                                               ; preds = %17, %16
  ret void
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ave_pfsel_stop(%struct.net_device*, i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @AVE_PFMBYTE(i32) #1

declare dso_local i64 @AVE_PFMBIT(i32) #1

declare dso_local i64 @AVE_PFSEL(i32) #1

declare dso_local i32 @ave_pfsel_start(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
