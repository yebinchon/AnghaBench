; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/renesas/extr_sh_eth.c_sh_eth_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.sh_eth_private = type { i32, i32, i32, i8*, i32, %struct.TYPE_4__*, i64, i8*, i32, i8*, i8*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i64 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @sh_eth_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sh_eth_ring_init(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.sh_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.sh_eth_private* @netdev_priv(%struct.net_device* %7)
  store %struct.sh_eth_private* %8, %struct.sh_eth_private** %4, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp sle i32 %11, 1492
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @PKT_BUF_SZ, align 4
  br label %24

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, 26
  %20 = add nsw i32 %19, 7
  %21 = and i32 %20, -8
  %22 = add nsw i32 %21, 2
  %23 = add nsw i32 %22, 16
  br label %24

24:                                               ; preds = %15, %13
  %25 = phi i32 [ %14, %13 ], [ %23, %15 ]
  %26 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %27 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %29 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %28, i32 0, i32 11
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load i64, i64* @NET_IP_ALIGN, align 8
  %36 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %37 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %39, %35
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %37, align 8
  br label %42

42:                                               ; preds = %34, %24
  %43 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %44 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i8* @kcalloc(i32 %45, i32 1, i32 %46)
  %48 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %49 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %48, i32 0, i32 10
  store i8* %47, i8** %49, align 8
  %50 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %51 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %50, i32 0, i32 10
  %52 = load i8*, i8** %51, align 8
  %53 = icmp ne i8* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %42
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %124

57:                                               ; preds = %42
  %58 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %59 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kcalloc(i32 %60, i32 1, i32 %61)
  %63 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %64 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  %65 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %66 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %65, i32 0, i32 9
  %67 = load i8*, i8** %66, align 8
  %68 = icmp ne i8* %67, null
  br i1 %68, label %70, label %69

69:                                               ; preds = %57
  br label %119

70:                                               ; preds = %57
  %71 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %72 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 4, %74
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %5, align 4
  %77 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %78 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %77, i32 0, i32 5
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %5, align 4
  %82 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %83 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %82, i32 0, i32 8
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = call i8* @dma_alloc_coherent(i32* %80, i32 %81, i32* %83, i32 %84)
  %86 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %87 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %86, i32 0, i32 7
  store i8* %85, i8** %87, align 8
  %88 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %89 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %88, i32 0, i32 7
  %90 = load i8*, i8** %89, align 8
  %91 = icmp ne i8* %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %70
  br label %119

93:                                               ; preds = %70
  %94 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %95 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %94, i32 0, i32 6
  store i64 0, i64* %95, align 8
  %96 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %97 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = mul i64 4, %99
  %101 = trunc i64 %100 to i32
  store i32 %101, i32* %6, align 4
  %102 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %103 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %102, i32 0, i32 5
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i32, i32* %6, align 4
  %107 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %108 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %107, i32 0, i32 4
  %109 = load i32, i32* @GFP_KERNEL, align 4
  %110 = call i8* @dma_alloc_coherent(i32* %105, i32 %106, i32* %108, i32 %109)
  %111 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %112 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %111, i32 0, i32 3
  store i8* %110, i8** %112, align 8
  %113 = load %struct.sh_eth_private*, %struct.sh_eth_private** %4, align 8
  %114 = getelementptr inbounds %struct.sh_eth_private, %struct.sh_eth_private* %113, i32 0, i32 3
  %115 = load i8*, i8** %114, align 8
  %116 = icmp ne i8* %115, null
  br i1 %116, label %118, label %117

117:                                              ; preds = %93
  br label %119

118:                                              ; preds = %93
  store i32 0, i32* %2, align 4
  br label %124

119:                                              ; preds = %117, %92, %69
  %120 = load %struct.net_device*, %struct.net_device** %3, align 8
  %121 = call i32 @sh_eth_ring_free(%struct.net_device* %120)
  %122 = load i32, i32* @ENOMEM, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %2, align 4
  br label %124

124:                                              ; preds = %119, %118, %54
  %125 = load i32, i32* %2, align 4
  ret i32 %125
}

declare dso_local %struct.sh_eth_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @sh_eth_ring_free(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
