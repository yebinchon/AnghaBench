; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_pfsel_set_macaddr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/socionext/extr_sni_ave.c_ave_pfsel_set_macaddr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ave_private = type { i64 }

@AVE_PF_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@AVE_PFMBYTE_MASK0 = common dso_local global i32 0, align 4
@AVE_PFMBYTE_MASK1 = common dso_local global i32 0, align 4
@AVE_PFMBIT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32, i8*, i32)* @ave_pfsel_set_macaddr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ave_pfsel_set_macaddr(%struct.net_device* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ave_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ave_private* @netdev_priv(%struct.net_device* %11)
  store %struct.ave_private* %12, %struct.ave_private** %10, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @AVE_PF_SIZE, align 4
  %15 = icmp ugt i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %4
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %5, align 4
  br label %81

22:                                               ; preds = %4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ugt i32 %23, 6
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %22
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %81

31:                                               ; preds = %22
  %32 = load %struct.net_device*, %struct.net_device** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @ave_pfsel_stop(%struct.net_device* %32, i32 %33)
  %35 = load %struct.net_device*, %struct.net_device** %6, align 8
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i64 @AVE_PKTF(i32 %37)
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @AVE_PKTF(i32 %39)
  %41 = add nsw i64 %40, 4
  %42 = call i32 @ave_hw_write_macaddr(%struct.net_device* %35, i8* %36, i64 %38, i64 %41)
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @GENMASK(i32 31, i32 %43)
  %45 = load i32, i32* @AVE_PFMBYTE_MASK0, align 4
  %46 = and i32 %44, %45
  %47 = load %struct.ave_private*, %struct.ave_private** %10, align 8
  %48 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i32, i32* %7, align 4
  %51 = call i64 @AVE_PFMBYTE(i32 %50)
  %52 = add nsw i64 %49, %51
  %53 = call i32 @writel(i32 %46, i64 %52)
  %54 = load i32, i32* @AVE_PFMBYTE_MASK1, align 4
  %55 = load %struct.ave_private*, %struct.ave_private** %10, align 8
  %56 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = call i64 @AVE_PFMBYTE(i32 %58)
  %60 = add nsw i64 %57, %59
  %61 = add nsw i64 %60, 4
  %62 = call i32 @writel(i32 %54, i64 %61)
  %63 = load i32, i32* @AVE_PFMBIT_MASK, align 4
  %64 = load %struct.ave_private*, %struct.ave_private** %10, align 8
  %65 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i64 @AVE_PFMBIT(i32 %67)
  %69 = add nsw i64 %66, %68
  %70 = call i32 @writel(i32 %63, i64 %69)
  %71 = load %struct.ave_private*, %struct.ave_private** %10, align 8
  %72 = getelementptr inbounds %struct.ave_private, %struct.ave_private* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i64 @AVE_PFSEL(i32 %74)
  %76 = add nsw i64 %73, %75
  %77 = call i32 @writel(i32 0, i64 %76)
  %78 = load %struct.net_device*, %struct.net_device** %6, align 8
  %79 = load i32, i32* %7, align 4
  %80 = call i32 @ave_pfsel_start(%struct.net_device* %78, i32 %79)
  store i32 0, i32* %5, align 4
  br label %81

81:                                               ; preds = %31, %28, %19
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local %struct.ave_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @ave_pfsel_stop(%struct.net_device*, i32) #1

declare dso_local i32 @ave_hw_write_macaddr(%struct.net_device*, i8*, i64, i64) #1

declare dso_local i64 @AVE_PKTF(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @GENMASK(i32, i32) #1

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
