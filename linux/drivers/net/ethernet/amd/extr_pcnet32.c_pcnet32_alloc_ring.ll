; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_alloc_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/amd/extr_pcnet32.c_pcnet32_alloc_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.pcnet32_private = type { i32, i32, i8*, i8*, i8*, i8*, i32*, i32, i32, i32*, i32 }

@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Consistent memory allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*)* @pcnet32_alloc_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcnet32_alloc_ring(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pcnet32_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.pcnet32_private* @netdev_priv(%struct.net_device* %7)
  store %struct.pcnet32_private* %8, %struct.pcnet32_private** %6, align 8
  %9 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %10 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %9, i32 0, i32 8
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %13 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = sext i32 %14 to i64
  %16 = mul i64 4, %15
  %17 = trunc i64 %16 to i32
  %18 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %19 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %18, i32 0, i32 10
  %20 = call i8* @pci_alloc_consistent(i32 %11, i32 %17, i32* %19)
  %21 = bitcast i8* %20 to i32*
  %22 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %23 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %22, i32 0, i32 9
  store i32* %21, i32** %23, align 8
  %24 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %25 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %24, i32 0, i32 9
  %26 = load i32*, i32** %25, align 8
  %27 = icmp eq i32* %26, null
  br i1 %27, label %28, label %35

28:                                               ; preds = %2
  %29 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %30 = load i32, i32* @drv, align 4
  %31 = load %struct.net_device*, %struct.net_device** %4, align 8
  %32 = call i32 @netif_err(%struct.pcnet32_private* %29, i32 %30, %struct.net_device* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %123

35:                                               ; preds = %2
  %36 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %37 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %36, i32 0, i32 8
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %40 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 4, %42
  %44 = trunc i64 %43 to i32
  %45 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %46 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %45, i32 0, i32 7
  %47 = call i8* @pci_alloc_consistent(i32 %38, i32 %44, i32* %46)
  %48 = bitcast i8* %47 to i32*
  %49 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %50 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %49, i32 0, i32 6
  store i32* %48, i32** %50, align 8
  %51 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %52 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %51, i32 0, i32 6
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %62

55:                                               ; preds = %35
  %56 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %57 = load i32, i32* @drv, align 4
  %58 = load %struct.net_device*, %struct.net_device** %4, align 8
  %59 = call i32 @netif_err(%struct.pcnet32_private* %56, i32 %57, %struct.net_device* %58, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %123

62:                                               ; preds = %35
  %63 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %64 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @GFP_KERNEL, align 4
  %67 = call i8* @kcalloc(i32 %65, i32 4, i32 %66)
  %68 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %69 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %71 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %123

77:                                               ; preds = %62
  %78 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %79 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @GFP_KERNEL, align 4
  %82 = call i8* @kcalloc(i32 %80, i32 4, i32 %81)
  %83 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %84 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %83, i32 0, i32 4
  store i8* %82, i8** %84, align 8
  %85 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %86 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %85, i32 0, i32 4
  %87 = load i8*, i8** %86, align 8
  %88 = icmp ne i8* %87, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %77
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %3, align 4
  br label %123

92:                                               ; preds = %77
  %93 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %94 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call i8* @kcalloc(i32 %95, i32 8, i32 %96)
  %98 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %99 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %98, i32 0, i32 3
  store i8* %97, i8** %99, align 8
  %100 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %101 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %100, i32 0, i32 3
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %107, label %104

104:                                              ; preds = %92
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %123

107:                                              ; preds = %92
  %108 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %109 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @GFP_KERNEL, align 4
  %112 = call i8* @kcalloc(i32 %110, i32 8, i32 %111)
  %113 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %114 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %113, i32 0, i32 2
  store i8* %112, i8** %114, align 8
  %115 = load %struct.pcnet32_private*, %struct.pcnet32_private** %6, align 8
  %116 = getelementptr inbounds %struct.pcnet32_private, %struct.pcnet32_private* %115, i32 0, i32 2
  %117 = load i8*, i8** %116, align 8
  %118 = icmp ne i8* %117, null
  br i1 %118, label %122, label %119

119:                                              ; preds = %107
  %120 = load i32, i32* @ENOMEM, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %3, align 4
  br label %123

122:                                              ; preds = %107
  store i32 0, i32* %3, align 4
  br label %123

123:                                              ; preds = %122, %119, %104, %89, %74, %55, %28
  %124 = load i32, i32* %3, align 4
  ret i32 %124
}

declare dso_local %struct.pcnet32_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @pci_alloc_consistent(i32, i32, i32*) #1

declare dso_local i32 @netif_err(%struct.pcnet32_private*, i32, %struct.net_device*, i8*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
