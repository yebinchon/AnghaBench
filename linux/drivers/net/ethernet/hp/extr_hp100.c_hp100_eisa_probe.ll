; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_eisa_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/hp/extr_hp100.c_hp100_eisa_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.eisa_device = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@HP100_BUS_EISA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hp100_eisa_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hp100_eisa_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.eisa_device*, align 8
  %6 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %7 = call %struct.net_device* @alloc_etherdev(i32 4)
  store %struct.net_device* %7, %struct.net_device** %4, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.eisa_device* @to_eisa_device(%struct.device* %8)
  store %struct.eisa_device* %9, %struct.eisa_device** %5, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = icmp ne %struct.net_device* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %38

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = load %struct.eisa_device*, %struct.eisa_device** %5, align 8
  %18 = getelementptr inbounds %struct.eisa_device, %struct.eisa_device* %17, i32 0, i32 1
  %19 = call i32 @SET_NETDEV_DEV(%struct.net_device* %16, i32* %18)
  %20 = load %struct.net_device*, %struct.net_device** %4, align 8
  %21 = load %struct.eisa_device*, %struct.eisa_device** %5, align 8
  %22 = getelementptr inbounds %struct.eisa_device, %struct.eisa_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, 3128
  %25 = load i32, i32* @HP100_BUS_EISA, align 4
  %26 = call i32 @hp100_probe1(%struct.net_device* %20, i64 %24, i32 %25, i32* null)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %15
  br label %34

30:                                               ; preds = %15
  %31 = load %struct.device*, %struct.device** %3, align 8
  %32 = load %struct.net_device*, %struct.net_device** %4, align 8
  %33 = call i32 @dev_set_drvdata(%struct.device* %31, %struct.net_device* %32)
  store i32 0, i32* %2, align 4
  br label %38

34:                                               ; preds = %29
  %35 = load %struct.net_device*, %struct.net_device** %4, align 8
  %36 = call i32 @free_netdev(%struct.net_device* %35)
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %2, align 4
  br label %38

38:                                               ; preds = %34, %30, %12
  %39 = load i32, i32* %2, align 4
  ret i32 %39
}

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local %struct.eisa_device* @to_eisa_device(%struct.device*) #1

declare dso_local i32 @SET_NETDEV_DEV(%struct.net_device*, i32*) #1

declare dso_local i32 @hp100_probe1(%struct.net_device*, i64, i32, i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.net_device*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
