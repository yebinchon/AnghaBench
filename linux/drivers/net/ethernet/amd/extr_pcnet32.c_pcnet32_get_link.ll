; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i64, i32, %struct.TYPE_2__*, i64, i32, i32, i64 }
%struct.TYPE_2__ = type { i32 (i32, i32)* }

@PCNET32_79C970A = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @pcnet32_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_get_link(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pcnet32_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %8 = load %struct.net_device*, %struct.net_device** %2, align 8
  %9 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %8)
  store %struct.pcnet32_private* %9, %struct.pcnet32_private** %3, align 8
  %10 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %11 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %10, i32 0, i32 1
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %15 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %1
  %19 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %20 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %19, i32 0, i32 5
  %21 = call i32 @mii_link_ok(i32* %20)
  store i32 %21, i32* %5, align 4
  br label %75

22:                                               ; preds = %1
  %23 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %24 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCNET32_79C970A, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %53

28:                                               ; preds = %22
  %29 = load %struct.net_device*, %struct.net_device** %2, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %6, align 4
  %32 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %33 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %51, label %36

36:                                               ; preds = %28
  %37 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %38 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %36
  %42 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %43 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %42, i32 0, i32 2
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32 (i32, i32)*, i32 (i32, i32)** %45, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 %46(i32 %47, i32 4)
  %49 = icmp ne i32 %48, 192
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %5, align 4
  br label %52

51:                                               ; preds = %36, %28
  store i32 1, i32* %5, align 4
  br label %52

52:                                               ; preds = %51, %41
  br label %74

53:                                               ; preds = %22
  %54 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %55 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @PCNET32_79C970A, align 8
  %58 = icmp sgt i64 %56, %57
  br i1 %58, label %59, label %72

59:                                               ; preds = %53
  %60 = load %struct.net_device*, %struct.net_device** %2, align 8
  %61 = getelementptr inbounds %struct.net_device, %struct.net_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  store i32 %62, i32* %7, align 4
  %63 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %64 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %63, i32 0, i32 2
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32)*, i32 (i32, i32)** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = call i32 %67(i32 %68, i32 4)
  %70 = icmp ne i32 %69, 192
  %71 = zext i1 %70 to i32
  store i32 %71, i32* %5, align 4
  br label %73

72:                                               ; preds = %53
  store i32 1, i32* %5, align 4
  br label %73

73:                                               ; preds = %72, %59
  br label %74

74:                                               ; preds = %73, %52
  br label %75

75:                                               ; preds = %74, %18
  %76 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %77 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %76, i32 0, i32 1
  %78 = load i64, i64* %4, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  %80 = load i32, i32* %5, align 4
  ret i32 %80
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mii_link_ok(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
