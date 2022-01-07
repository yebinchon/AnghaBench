; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_set_phys_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_set_phys_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32*, i32, %struct.pcnet32_access* }
%struct.pcnet32_access = type { i32 (i32, i32)*, i32 (i32, i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @pcnet32_set_phys_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_set_phys_id(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcnet32_private*, align 8
  %7 = alloca %struct.pcnet32_access*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %11)
  store %struct.pcnet32_private* %12, %struct.pcnet32_private** %6, align 8
  %13 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %14 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %13, i32 0, i32 2
  %15 = load %struct.pcnet32_access*, %struct.pcnet32_access** %14, align 8
  store %struct.pcnet32_access* %15, %struct.pcnet32_access** %7, align 8
  %16 = load %struct.net_device*, %struct.net_device** %4, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %5, align 4
  switch i32 %19, label %111 [
    i32 131, label %20
    i32 128, label %50
    i32 129, label %50
    i32 130, label %80
  ]

20:                                               ; preds = %2
  %21 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %22 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %21, i32 0, i32 1
  %23 = load i64, i64* %9, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  store i32 4, i32* %10, align 4
  br label %25

25:                                               ; preds = %42, %20
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 8
  br i1 %27, label %28, label %45

28:                                               ; preds = %25
  %29 = load %struct.pcnet32_access*, %struct.pcnet32_access** %7, align 8
  %30 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %29, i32 0, i32 0
  %31 = load i32 (i32, i32)*, i32 (i32, i32)** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* %10, align 4
  %34 = call i32 %31(i32 %32, i32 %33)
  %35 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %36 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sub nsw i32 %38, 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %37, i64 %40
  store i32 %34, i32* %41, align 4
  br label %42

42:                                               ; preds = %28
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %10, align 4
  br label %25

45:                                               ; preds = %25
  %46 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %47 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %46, i32 0, i32 1
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @spin_unlock_irqrestore(i32* %47, i64 %48)
  store i32 2, i32* %3, align 4
  br label %112

50:                                               ; preds = %2, %2
  %51 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %52 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %51, i32 0, i32 1
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  store i32 4, i32* %10, align 4
  br label %55

55:                                               ; preds = %72, %50
  %56 = load i32, i32* %10, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %75

58:                                               ; preds = %55
  %59 = load %struct.pcnet32_access*, %struct.pcnet32_access** %7, align 8
  %60 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %59, i32 0, i32 1
  %61 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.pcnet32_access*, %struct.pcnet32_access** %7, align 8
  %65 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %64, i32 0, i32 0
  %66 = load i32 (i32, i32)*, i32 (i32, i32)** %65, align 8
  %67 = load i32, i32* %8, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 %66(i32 %67, i32 %68)
  %70 = xor i32 %69, 16384
  %71 = call i32 %61(i32 %62, i32 %63, i32 %70)
  br label %72

72:                                               ; preds = %58
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %55

75:                                               ; preds = %55
  %76 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %77 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %76, i32 0, i32 1
  %78 = load i64, i64* %9, align 8
  %79 = call i32 @spin_unlock_irqrestore(i32* %77, i64 %78)
  br label %111

80:                                               ; preds = %2
  %81 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %82 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %81, i32 0, i32 1
  %83 = load i64, i64* %9, align 8
  %84 = call i32 @spin_lock_irqsave(i32* %82, i64 %83)
  store i32 4, i32* %10, align 4
  br label %85

85:                                               ; preds = %103, %80
  %86 = load i32, i32* %10, align 4
  %87 = icmp slt i32 %86, 8
  br i1 %87, label %88, label %106

88:                                               ; preds = %85
  %89 = load %struct.pcnet32_access*, %struct.pcnet32_access** %7, align 8
  %90 = getelementptr inbounds %struct.pcnet32_access, %struct.pcnet32_access* %89, i32 0, i32 1
  %91 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %95 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %10, align 4
  %98 = sub nsw i32 %97, 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = call i32 %91(i32 %92, i32 %93, i32 %101)
  br label %103

103:                                              ; preds = %88
  %104 = load i32, i32* %10, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %10, align 4
  br label %85

106:                                              ; preds = %85
  %107 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %108 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %107, i32 0, i32 1
  %109 = load i64, i64* %9, align 8
  %110 = call i32 @spin_unlock_irqrestore(i32* %108, i64 %109)
  br label %111

111:                                              ; preds = %106, %2, %75
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %45
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
