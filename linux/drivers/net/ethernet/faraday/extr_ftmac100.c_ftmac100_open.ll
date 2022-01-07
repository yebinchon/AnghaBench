; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/faraday/extr_ftmac100.c_ftmac100_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ftmac100 = type { i32, i32, i64, i64, i64, i64 }

@.str = private unnamed_addr constant [28 x i8] c"failed to allocate buffers\0A\00", align 1
@ftmac100_interrupt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to request irq %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ftmac100_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftmac100_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ftmac100*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ftmac100* @netdev_priv(%struct.net_device* %6)
  store %struct.ftmac100* %7, %struct.ftmac100** %4, align 8
  %8 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %9 = call i32 @ftmac100_alloc_buffers(%struct.ftmac100* %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.net_device*, %struct.net_device** %3, align 8
  %14 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %13, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %64

15:                                               ; preds = %1
  %16 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %17 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ftmac100_interrupt, align 4
  %20 = load %struct.net_device*, %struct.net_device** %3, align 8
  %21 = getelementptr inbounds %struct.net_device, %struct.net_device* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i32 @request_irq(i32 %18, i32 %19, i32 0, i32 %22, %struct.net_device* %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load %struct.net_device*, %struct.net_device** %3, align 8
  %29 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %30 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.net_device*, i8*, ...) @netdev_err(%struct.net_device* %28, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  br label %61

33:                                               ; preds = %15
  %34 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %35 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %34, i32 0, i32 5
  store i64 0, i64* %35, align 8
  %36 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %37 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %36, i32 0, i32 4
  store i64 0, i64* %37, align 8
  %38 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %39 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %38, i32 0, i32 3
  store i64 0, i64* %39, align 8
  %40 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %41 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %43 = call i32 @ftmac100_start_hw(%struct.ftmac100* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %33
  br label %55

47:                                               ; preds = %33
  %48 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %49 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %48, i32 0, i32 1
  %50 = call i32 @napi_enable(i32* %49)
  %51 = load %struct.net_device*, %struct.net_device** %3, align 8
  %52 = call i32 @netif_start_queue(%struct.net_device* %51)
  %53 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %54 = call i32 @ftmac100_enable_all_int(%struct.ftmac100* %53)
  store i32 0, i32* %2, align 4
  br label %66

55:                                               ; preds = %46
  %56 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %57 = getelementptr inbounds %struct.ftmac100, %struct.ftmac100* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.net_device*, %struct.net_device** %3, align 8
  %60 = call i32 @free_irq(i32 %58, %struct.net_device* %59)
  br label %61

61:                                               ; preds = %55, %27
  %62 = load %struct.ftmac100*, %struct.ftmac100** %4, align 8
  %63 = call i32 @ftmac100_free_buffers(%struct.ftmac100* %62)
  br label %64

64:                                               ; preds = %61, %12
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %47
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ftmac100* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ftmac100_alloc_buffers(%struct.ftmac100*) #1

declare dso_local i32 @netdev_err(%struct.net_device*, i8*, ...) #1

declare dso_local i32 @request_irq(i32, i32, i32, i32, %struct.net_device*) #1

declare dso_local i32 @ftmac100_start_hw(%struct.ftmac100*) #1

declare dso_local i32 @napi_enable(i32*) #1

declare dso_local i32 @netif_start_queue(%struct.net_device*) #1

declare dso_local i32 @ftmac100_enable_all_int(%struct.ftmac100*) #1

declare dso_local i32 @free_irq(i32, %struct.net_device*) #1

declare dso_local i32 @ftmac100_free_buffers(%struct.ftmac100*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
