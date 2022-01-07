; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_alloc_tbufs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/via/extr_via-rhine.c_alloc_tbufs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rhine_private = type { i32, i32, %struct.TYPE_2__*, i32*, i32**, i32**, i64, i64 }
%struct.TYPE_2__ = type { i8*, i8*, i64 }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@TXDESC = common dso_local global i32 0, align 4
@rqRhineI = common dso_local global i32 0, align 4
@PKT_BUF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @alloc_tbufs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alloc_tbufs(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.rhine_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.rhine_private* @netdev_priv(%struct.net_device* %6)
  store %struct.rhine_private* %7, %struct.rhine_private** %3, align 8
  %8 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %9 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %11 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %10, i32 0, i32 7
  store i64 0, i64* %11, align 8
  %12 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %13 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %77, %1
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @TX_RING_SIZE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %80

19:                                               ; preds = %15
  %20 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %21 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %20, i32 0, i32 5
  %22 = load i32**, i32*** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32*, i32** %22, i64 %24
  store i32* null, i32** %25, align 8
  %26 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %27 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i32, i32* %5, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 2
  store i64 0, i64* %32, align 8
  %33 = load i32, i32* @TXDESC, align 4
  %34 = call i8* @cpu_to_le32(i32 %33)
  %35 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %36 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %35, i32 0, i32 2
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  store i8* %34, i8** %41, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = add i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %49 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %48, i32 0, i32 2
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i64 %52
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i8* %47, i8** %54, align 8
  %55 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %56 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @rqRhineI, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %76

61:                                               ; preds = %19
  %62 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %63 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* @PKT_BUF_SZ, align 4
  %67 = mul nsw i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %64, i64 %68
  %70 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %71 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %70, i32 0, i32 4
  %72 = load i32**, i32*** %71, align 8
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  store i32* %69, i32** %75, align 8
  br label %76

76:                                               ; preds = %61, %19
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %5, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %5, align 4
  br label %15

80:                                               ; preds = %15
  %81 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %82 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i8* @cpu_to_le32(i32 %83)
  %85 = load %struct.rhine_private*, %struct.rhine_private** %3, align 8
  %86 = getelementptr inbounds %struct.rhine_private, %struct.rhine_private* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = load i32, i32* %5, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  store i8* %84, i8** %92, align 8
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = call i32 @netdev_reset_queue(%struct.net_device* %93)
  ret void
}

declare dso_local %struct.rhine_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @netdev_reset_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
