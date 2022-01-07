; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_free_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_free_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32, i32, i32*, i32, i32, i32*, i32, i32*, i32*, i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @pcnet32_free_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_free_ring(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.pcnet32_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %4)
  store %struct.pcnet32_private* %5, %struct.pcnet32_private** %3, align 8
  %6 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %7 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %6, i32 0, i32 10
  %8 = load i32*, i32** %7, align 8
  %9 = call i32 @kfree(i32* %8)
  %10 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %11 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %10, i32 0, i32 10
  store i32* null, i32** %11, align 8
  %12 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %13 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %12, i32 0, i32 9
  %14 = load i32*, i32** %13, align 8
  %15 = call i32 @kfree(i32* %14)
  %16 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %17 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %16, i32 0, i32 9
  store i32* null, i32** %17, align 8
  %18 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %19 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %18, i32 0, i32 8
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @kfree(i32* %20)
  %22 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %23 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %22, i32 0, i32 8
  store i32* null, i32** %23, align 8
  %24 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %25 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %24, i32 0, i32 7
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @kfree(i32* %26)
  %28 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %29 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %28, i32 0, i32 7
  store i32* null, i32** %29, align 8
  %30 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %31 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %30, i32 0, i32 5
  %32 = load i32*, i32** %31, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %34, label %53

34:                                               ; preds = %1
  %35 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %36 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %39 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = mul i64 4, %41
  %43 = trunc i64 %42 to i32
  %44 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %45 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %44, i32 0, i32 5
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %48 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pci_free_consistent(i32 %37, i32 %43, i32* %46, i32 %49)
  %51 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %52 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %51, i32 0, i32 5
  store i32* null, i32** %52, align 8
  br label %53

53:                                               ; preds = %34, %1
  %54 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %55 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = icmp ne i32* %56, null
  br i1 %57, label %58, label %77

58:                                               ; preds = %53
  %59 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %60 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %63 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = sext i32 %64 to i64
  %66 = mul i64 4, %65
  %67 = trunc i64 %66 to i32
  %68 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %69 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %68, i32 0, i32 2
  %70 = load i32*, i32** %69, align 8
  %71 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %72 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @pci_free_consistent(i32 %61, i32 %67, i32* %70, i32 %73)
  %75 = load %struct.pcnet32_private*, %struct.pcnet32_private** %3, align 8
  %76 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %75, i32 0, i32 2
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %58, %53
  ret void
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @pci_free_consistent(i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
