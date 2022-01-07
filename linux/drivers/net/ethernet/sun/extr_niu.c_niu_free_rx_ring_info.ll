; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_free_rx_ring_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_free_rx_ring_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (i32, i32, i32*, i32)* }
%struct.rx_ring_info = type { i32*, i64, i64, i32*, i32, i64, i64, i32*, i32, i32*, i32 }

@MAX_RCR_RING_SIZE = common dso_local global i32 0, align 4
@MAX_RBR_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, %struct.rx_ring_info*)* @niu_free_rx_ring_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_free_rx_ring_info(%struct.niu* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca %struct.niu*, align 8
  %4 = alloca %struct.rx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %3, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %4, align 8
  %5 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %6 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %5, i32 0, i32 9
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %2
  %10 = load %struct.niu*, %struct.niu** %3, align 8
  %11 = getelementptr inbounds %struct.niu, %struct.niu* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %13, align 8
  %15 = load %struct.niu*, %struct.niu** %3, align 8
  %16 = getelementptr inbounds %struct.niu, %struct.niu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %19 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %18, i32 0, i32 9
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %22 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %21, i32 0, i32 10
  %23 = load i32, i32* %22, align 8
  %24 = call i32 %14(i32 %17, i32 4, i32* %20, i32 %23)
  %25 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %26 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %25, i32 0, i32 9
  store i32* null, i32** %26, align 8
  br label %27

27:                                               ; preds = %9, %2
  %28 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %29 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %28, i32 0, i32 7
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %58

32:                                               ; preds = %27
  %33 = load %struct.niu*, %struct.niu** %3, align 8
  %34 = getelementptr inbounds %struct.niu, %struct.niu* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %36, align 8
  %38 = load %struct.niu*, %struct.niu** %3, align 8
  %39 = getelementptr inbounds %struct.niu, %struct.niu* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @MAX_RCR_RING_SIZE, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 4
  %44 = trunc i64 %43 to i32
  %45 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %46 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %45, i32 0, i32 7
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %49 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %48, i32 0, i32 8
  %50 = load i32, i32* %49, align 8
  %51 = call i32 %37(i32 %40, i32 %44, i32* %47, i32 %50)
  %52 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %53 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %52, i32 0, i32 7
  store i32* null, i32** %53, align 8
  %54 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %55 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %54, i32 0, i32 6
  store i64 0, i64* %55, align 8
  %56 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %57 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %56, i32 0, i32 5
  store i64 0, i64* %57, align 8
  br label %58

58:                                               ; preds = %32, %27
  %59 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %60 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %59, i32 0, i32 3
  %61 = load i32*, i32** %60, align 8
  %62 = icmp ne i32* %61, null
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = load %struct.niu*, %struct.niu** %3, align 8
  %65 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %66 = call i32 @niu_rbr_free(%struct.niu* %64, %struct.rx_ring_info* %65)
  %67 = load %struct.niu*, %struct.niu** %3, align 8
  %68 = getelementptr inbounds %struct.niu, %struct.niu* %67, i32 0, i32 1
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  %71 = load i32 (i32, i32, i32*, i32)*, i32 (i32, i32, i32*, i32)** %70, align 8
  %72 = load %struct.niu*, %struct.niu** %3, align 8
  %73 = getelementptr inbounds %struct.niu, %struct.niu* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @MAX_RBR_RING_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %80 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %83 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = call i32 %71(i32 %74, i32 %78, i32* %81, i32 %84)
  %86 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %87 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %86, i32 0, i32 3
  store i32* null, i32** %87, align 8
  %88 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %89 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %88, i32 0, i32 2
  store i64 0, i64* %89, align 8
  %90 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %91 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %90, i32 0, i32 1
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %63, %58
  %93 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %94 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @kfree(i32* %95)
  %97 = load %struct.rx_ring_info*, %struct.rx_ring_info** %4, align 8
  %98 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %97, i32 0, i32 0
  store i32* null, i32** %98, align 8
  ret void
}

declare dso_local i32 @niu_rbr_free(%struct.niu*, %struct.rx_ring_info*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
