; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_get_dev_from_nl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_macsec.c_get_dev_from_nl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.net = type { i32 }
%struct.nlattr = type { i32 }

@MACSEC_ATTR_IFINDEX = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.net_device* (%struct.net*, %struct.nlattr**)* @get_dev_from_nl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.net_device* @get_dev_from_nl(%struct.net* %0, %struct.nlattr** %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.net*, align 8
  %5 = alloca %struct.nlattr**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.net_device*, align 8
  store %struct.net* %0, %struct.net** %4, align 8
  store %struct.nlattr** %1, %struct.nlattr*** %5, align 8
  %8 = load %struct.nlattr**, %struct.nlattr*** %5, align 8
  %9 = load i64, i64* @MACSEC_ATTR_IFINDEX, align 8
  %10 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %8, i64 %9
  %11 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %12 = call i32 @nla_get_u32(%struct.nlattr* %11)
  store i32 %12, i32* %6, align 4
  %13 = load %struct.net*, %struct.net** %4, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.net_device* @__dev_get_by_index(%struct.net* %13, i32 %14)
  store %struct.net_device* %15, %struct.net_device** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %7, align 8
  %17 = icmp ne %struct.net_device* %16, null
  br i1 %17, label %22, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENODEV, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.net_device* @ERR_PTR(i32 %20)
  store %struct.net_device* %21, %struct.net_device** %3, align 8
  br label %32

22:                                               ; preds = %2
  %23 = load %struct.net_device*, %struct.net_device** %7, align 8
  %24 = call i32 @netif_is_macsec(%struct.net_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %22
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  %29 = call %struct.net_device* @ERR_PTR(i32 %28)
  store %struct.net_device* %29, %struct.net_device** %3, align 8
  br label %32

30:                                               ; preds = %22
  %31 = load %struct.net_device*, %struct.net_device** %7, align 8
  store %struct.net_device* %31, %struct.net_device** %3, align 8
  br label %32

32:                                               ; preds = %30, %26, %18
  %33 = load %struct.net_device*, %struct.net_device** %3, align 8
  ret %struct.net_device* %33
}

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local %struct.net_device* @ERR_PTR(i32) #1

declare dso_local i32 @netif_is_macsec(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
