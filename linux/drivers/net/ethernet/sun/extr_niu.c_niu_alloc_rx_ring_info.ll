; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_alloc_rx_ring_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_alloc_rx_ring_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 (i32, i32, i32*, i32)* }
%struct.rx_ring_info = type { i32, i32, i64, i64, i64, i32, i64, i64, i32, i64, i32, i32 }

@MAX_RBR_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Coherent alloc gives misaligned RXDMA mailbox %p\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@MAX_RCR_RING_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"Coherent alloc gives misaligned RXDMA RCR table %p\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Coherent alloc gives misaligned RXDMA RBR table %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.niu*, %struct.rx_ring_info*)* @niu_alloc_rx_ring_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_alloc_rx_ring_info(%struct.niu* %0, %struct.rx_ring_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.rx_ring_info*, align 8
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %5, align 8
  %6 = call i32 @BUILD_BUG_ON(i32 1)
  %7 = load i32, i32* @MAX_RBR_RING_SIZE, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call i32 @kcalloc(i32 %7, i32 8, i32 %8)
  %10 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %11 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %10, i32 0, i32 11
  store i32 %9, i32* %11, align 4
  %12 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %13 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %12, i32 0, i32 11
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %154

19:                                               ; preds = %2
  %20 = load %struct.niu*, %struct.niu** %4, align 8
  %21 = getelementptr inbounds %struct.niu, %struct.niu* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64 (i32, i32, i32*, i32)*, i64 (i32, i32, i32*, i32)** %23, align 8
  %25 = load %struct.niu*, %struct.niu** %4, align 8
  %26 = getelementptr inbounds %struct.niu, %struct.niu* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %29 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %28, i32 0, i32 10
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i64 %24(i32 %27, i32 4, i32* %29, i32 %30)
  %32 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %33 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %32, i32 0, i32 9
  store i64 %31, i64* %33, align 8
  %34 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %35 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %34, i32 0, i32 9
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %19
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %154

41:                                               ; preds = %19
  %42 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %43 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %42, i32 0, i32 9
  %44 = load i64, i64* %43, align 8
  %45 = and i64 %44, 63
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %57

47:                                               ; preds = %41
  %48 = load %struct.niu*, %struct.niu** %4, align 8
  %49 = getelementptr inbounds %struct.niu, %struct.niu* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %52 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @netdev_err(i32 %50, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %53)
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %154

57:                                               ; preds = %41
  %58 = load %struct.niu*, %struct.niu** %4, align 8
  %59 = getelementptr inbounds %struct.niu, %struct.niu* %58, i32 0, i32 2
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i64 (i32, i32, i32*, i32)*, i64 (i32, i32, i32*, i32)** %61, align 8
  %63 = load %struct.niu*, %struct.niu** %4, align 8
  %64 = getelementptr inbounds %struct.niu, %struct.niu* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @MAX_RCR_RING_SIZE, align 4
  %67 = sext i32 %66 to i64
  %68 = mul i64 %67, 4
  %69 = trunc i64 %68 to i32
  %70 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %71 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %70, i32 0, i32 8
  %72 = load i32, i32* @GFP_KERNEL, align 4
  %73 = call i64 %62(i32 %65, i32 %69, i32* %71, i32 %72)
  %74 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %75 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %74, i32 0, i32 7
  store i64 %73, i64* %75, align 8
  %76 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %77 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %76, i32 0, i32 7
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %83, label %80

80:                                               ; preds = %57
  %81 = load i32, i32* @ENOMEM, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %3, align 4
  br label %154

83:                                               ; preds = %57
  %84 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %85 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %84, i32 0, i32 7
  %86 = load i64, i64* %85, align 8
  %87 = and i64 %86, 63
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %99

89:                                               ; preds = %83
  %90 = load %struct.niu*, %struct.niu** %4, align 8
  %91 = getelementptr inbounds %struct.niu, %struct.niu* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %94 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = call i32 @netdev_err(i32 %92, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %95)
  %97 = load i32, i32* @EINVAL, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %3, align 4
  br label %154

99:                                               ; preds = %83
  %100 = load i32, i32* @MAX_RCR_RING_SIZE, align 4
  %101 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %102 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %104 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %103, i32 0, i32 6
  store i64 0, i64* %104, align 8
  %105 = load %struct.niu*, %struct.niu** %4, align 8
  %106 = getelementptr inbounds %struct.niu, %struct.niu* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i64 (i32, i32, i32*, i32)*, i64 (i32, i32, i32*, i32)** %108, align 8
  %110 = load %struct.niu*, %struct.niu** %4, align 8
  %111 = getelementptr inbounds %struct.niu, %struct.niu* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @MAX_RBR_RING_SIZE, align 4
  %114 = sext i32 %113 to i64
  %115 = mul i64 %114, 4
  %116 = trunc i64 %115 to i32
  %117 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %118 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %117, i32 0, i32 5
  %119 = load i32, i32* @GFP_KERNEL, align 4
  %120 = call i64 %109(i32 %112, i32 %116, i32* %118, i32 %119)
  %121 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %122 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %121, i32 0, i32 4
  store i64 %120, i64* %122, align 8
  %123 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %124 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %123, i32 0, i32 4
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %130, label %127

127:                                              ; preds = %99
  %128 = load i32, i32* @ENOMEM, align 4
  %129 = sub nsw i32 0, %128
  store i32 %129, i32* %3, align 4
  br label %154

130:                                              ; preds = %99
  %131 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %132 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %131, i32 0, i32 4
  %133 = load i64, i64* %132, align 8
  %134 = and i64 %133, 63
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %146

136:                                              ; preds = %130
  %137 = load %struct.niu*, %struct.niu** %4, align 8
  %138 = getelementptr inbounds %struct.niu, %struct.niu* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %141 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %140, i32 0, i32 4
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @netdev_err(i32 %139, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i64 %142)
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %3, align 4
  br label %154

146:                                              ; preds = %130
  %147 = load i32, i32* @MAX_RBR_RING_SIZE, align 4
  %148 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %149 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %148, i32 0, i32 1
  store i32 %147, i32* %149, align 4
  %150 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %151 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %150, i32 0, i32 3
  store i64 0, i64* %151, align 8
  %152 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %153 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %152, i32 0, i32 2
  store i64 0, i64* %153, align 8
  store i32 0, i32* %3, align 4
  br label %154

154:                                              ; preds = %146, %136, %127, %89, %80, %47, %38, %16
  %155 = load i32, i32* %3, align 4
  ret i32 %155
}

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
