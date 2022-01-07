; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_realloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_realloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32, i32, i32, i32, %struct.sk_buff**, %struct.sk_buff**, %struct.sk_buff*, %struct.pcnet32_tx_head* }
%struct.sk_buff = type { i32 }
%struct.pcnet32_tx_head = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.pcnet32_private*, i32)* @pcnet32_realloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcnet32_realloc_tx_ring(%struct.net_device* %0, %struct.pcnet32_private* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.pcnet32_private*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.sk_buff**, align 8
  %9 = alloca %struct.pcnet32_tx_head*, align 8
  %10 = alloca %struct.sk_buff**, align 8
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.pcnet32_private* %1, %struct.pcnet32_private** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @BIT(i32 %12)
  store i32 %13, i32* %11, align 4
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = call i32 @pcnet32_purge_tx_ring(%struct.net_device* %14)
  %16 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %17 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %11, align 4
  %20 = zext i32 %19 to i64
  %21 = mul i64 4, %20
  %22 = trunc i64 %21 to i32
  %23 = call %struct.pcnet32_tx_head* @pci_zalloc_consistent(i32 %18, i32 %22, %struct.sk_buff** %7)
  store %struct.pcnet32_tx_head* %23, %struct.pcnet32_tx_head** %9, align 8
  %24 = load %struct.pcnet32_tx_head*, %struct.pcnet32_tx_head** %9, align 8
  %25 = icmp eq %struct.pcnet32_tx_head* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %107

27:                                               ; preds = %3
  %28 = load i32, i32* %11, align 4
  %29 = load i32, i32* @GFP_ATOMIC, align 4
  %30 = call i8* @kcalloc(i32 %28, i32 8, i32 %29)
  %31 = bitcast i8* %30 to %struct.sk_buff**
  store %struct.sk_buff** %31, %struct.sk_buff*** %8, align 8
  %32 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %33 = icmp ne %struct.sk_buff** %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %27
  br label %96

35:                                               ; preds = %27
  %36 = load i32, i32* %11, align 4
  %37 = load i32, i32* @GFP_ATOMIC, align 4
  %38 = call i8* @kcalloc(i32 %36, i32 8, i32 %37)
  %39 = bitcast i8* %38 to %struct.sk_buff**
  store %struct.sk_buff** %39, %struct.sk_buff*** %10, align 8
  %40 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %41 = icmp ne %struct.sk_buff** %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  br label %93

43:                                               ; preds = %35
  %44 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %45 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %44, i32 0, i32 4
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %45, align 8
  %47 = call i32 @kfree(%struct.sk_buff** %46)
  %48 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %49 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %48, i32 0, i32 5
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %49, align 8
  %51 = call i32 @kfree(%struct.sk_buff** %50)
  %52 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %53 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %56 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = sext i32 %57 to i64
  %59 = mul i64 4, %58
  %60 = trunc i64 %59 to i32
  %61 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %62 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %61, i32 0, i32 7
  %63 = load %struct.pcnet32_tx_head*, %struct.pcnet32_tx_head** %62, align 8
  %64 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %65 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %64, i32 0, i32 6
  %66 = load %struct.sk_buff*, %struct.sk_buff** %65, align 8
  %67 = call i32 @pci_free_consistent(i32 %54, i32 %60, %struct.pcnet32_tx_head* %63, %struct.sk_buff* %66)
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %70 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %72 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sub nsw i32 %73, 1
  %75 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %76 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load i32, i32* %6, align 4
  %78 = shl i32 %77, 12
  %79 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %80 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.pcnet32_tx_head*, %struct.pcnet32_tx_head** %9, align 8
  %82 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %83 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %82, i32 0, i32 7
  store %struct.pcnet32_tx_head* %81, %struct.pcnet32_tx_head** %83, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %85 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %86 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %85, i32 0, i32 6
  store %struct.sk_buff* %84, %struct.sk_buff** %86, align 8
  %87 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %88 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %89 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %88, i32 0, i32 5
  store %struct.sk_buff** %87, %struct.sk_buff*** %89, align 8
  %90 = load %struct.sk_buff**, %struct.sk_buff*** %10, align 8
  %91 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %92 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %91, i32 0, i32 4
  store %struct.sk_buff** %90, %struct.sk_buff*** %92, align 8
  br label %107

93:                                               ; preds = %42
  %94 = load %struct.sk_buff**, %struct.sk_buff*** %8, align 8
  %95 = call i32 @kfree(%struct.sk_buff** %94)
  br label %96

96:                                               ; preds = %93, %34
  %97 = load %struct.pcnet32_private*, %struct.pcnet32_private** %5, align 8
  %98 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %97, i32 0, i32 3
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = mul i64 4, %101
  %103 = trunc i64 %102 to i32
  %104 = load %struct.pcnet32_tx_head*, %struct.pcnet32_tx_head** %9, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %106 = call i32 @pci_free_consistent(i32 %99, i32 %103, %struct.pcnet32_tx_head* %104, %struct.sk_buff* %105)
  br label %107

107:                                              ; preds = %96, %43, %26
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @pcnet32_purge_tx_ring(%struct.net_device*) #1

declare dso_local %struct.pcnet32_tx_head* @pci_zalloc_consistent(i32, i32, %struct.sk_buff**) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.sk_buff**) #1

declare dso_local i32 @pci_free_consistent(i32, i32, %struct.pcnet32_tx_head*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
