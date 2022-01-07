; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_alloc_cbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/intel/extr_e100.c_e100_alloc_cbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nic = type { i32, %struct.cb*, %struct.cb*, %struct.cb*, %struct.cb*, i64, i32, i32, %struct.TYPE_4__ }
%struct.cb = type { i32, i64, %struct.cb*, %struct.cb* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@cuc_start = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nic*)* @e100_alloc_cbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e100_alloc_cbs(%struct.nic* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nic*, align 8
  %4 = alloca %struct.cb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nic* %0, %struct.nic** %3, align 8
  %7 = load %struct.nic*, %struct.nic** %3, align 8
  %8 = getelementptr inbounds %struct.nic, %struct.nic* %7, i32 0, i32 8
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @cuc_start, align 4
  %13 = load %struct.nic*, %struct.nic** %3, align 8
  %14 = getelementptr inbounds %struct.nic, %struct.nic* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 4
  %15 = load %struct.nic*, %struct.nic** %3, align 8
  %16 = getelementptr inbounds %struct.nic, %struct.nic* %15, i32 0, i32 2
  store %struct.cb* null, %struct.cb** %16, align 8
  %17 = load %struct.nic*, %struct.nic** %3, align 8
  %18 = getelementptr inbounds %struct.nic, %struct.nic* %17, i32 0, i32 3
  store %struct.cb* null, %struct.cb** %18, align 8
  %19 = load %struct.nic*, %struct.nic** %3, align 8
  %20 = getelementptr inbounds %struct.nic, %struct.nic* %19, i32 0, i32 4
  store %struct.cb* null, %struct.cb** %20, align 8
  %21 = load %struct.nic*, %struct.nic** %3, align 8
  %22 = getelementptr inbounds %struct.nic, %struct.nic* %21, i32 0, i32 0
  store i32 0, i32* %22, align 8
  %23 = load %struct.nic*, %struct.nic** %3, align 8
  %24 = getelementptr inbounds %struct.nic, %struct.nic* %23, i32 0, i32 6
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = load %struct.nic*, %struct.nic** %3, align 8
  %28 = getelementptr inbounds %struct.nic, %struct.nic* %27, i32 0, i32 5
  %29 = call %struct.cb* @dma_pool_zalloc(i32 %25, i32 %26, i64* %28)
  %30 = load %struct.nic*, %struct.nic** %3, align 8
  %31 = getelementptr inbounds %struct.nic, %struct.nic* %30, i32 0, i32 1
  store %struct.cb* %29, %struct.cb** %31, align 8
  %32 = load %struct.nic*, %struct.nic** %3, align 8
  %33 = getelementptr inbounds %struct.nic, %struct.nic* %32, i32 0, i32 1
  %34 = load %struct.cb*, %struct.cb** %33, align 8
  %35 = icmp ne %struct.cb* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %1
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %2, align 4
  br label %120

39:                                               ; preds = %1
  %40 = load %struct.nic*, %struct.nic** %3, align 8
  %41 = getelementptr inbounds %struct.nic, %struct.nic* %40, i32 0, i32 1
  %42 = load %struct.cb*, %struct.cb** %41, align 8
  store %struct.cb* %42, %struct.cb** %4, align 8
  store i32 0, i32* %5, align 4
  br label %43

43:                                               ; preds = %102, %39
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ult i32 %44, %45
  br i1 %46, label %47, label %107

47:                                               ; preds = %43
  %48 = load i32, i32* %5, align 4
  %49 = add i32 %48, 1
  %50 = load i32, i32* %6, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load %struct.cb*, %struct.cb** %4, align 8
  %54 = getelementptr inbounds %struct.cb, %struct.cb* %53, i64 1
  br label %59

55:                                               ; preds = %47
  %56 = load %struct.nic*, %struct.nic** %3, align 8
  %57 = getelementptr inbounds %struct.nic, %struct.nic* %56, i32 0, i32 1
  %58 = load %struct.cb*, %struct.cb** %57, align 8
  br label %59

59:                                               ; preds = %55, %52
  %60 = phi %struct.cb* [ %54, %52 ], [ %58, %55 ]
  %61 = load %struct.cb*, %struct.cb** %4, align 8
  %62 = getelementptr inbounds %struct.cb, %struct.cb* %61, i32 0, i32 3
  store %struct.cb* %60, %struct.cb** %62, align 8
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %73

65:                                               ; preds = %59
  %66 = load %struct.nic*, %struct.nic** %3, align 8
  %67 = getelementptr inbounds %struct.nic, %struct.nic* %66, i32 0, i32 1
  %68 = load %struct.cb*, %struct.cb** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.cb, %struct.cb* %68, i64 %70
  %72 = getelementptr inbounds %struct.cb, %struct.cb* %71, i64 -1
  br label %76

73:                                               ; preds = %59
  %74 = load %struct.cb*, %struct.cb** %4, align 8
  %75 = getelementptr inbounds %struct.cb, %struct.cb* %74, i64 -1
  br label %76

76:                                               ; preds = %73, %65
  %77 = phi %struct.cb* [ %72, %65 ], [ %75, %73 ]
  %78 = load %struct.cb*, %struct.cb** %4, align 8
  %79 = getelementptr inbounds %struct.cb, %struct.cb* %78, i32 0, i32 2
  store %struct.cb* %77, %struct.cb** %79, align 8
  %80 = load %struct.nic*, %struct.nic** %3, align 8
  %81 = getelementptr inbounds %struct.nic, %struct.nic* %80, i32 0, i32 5
  %82 = load i64, i64* %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = zext i32 %83 to i64
  %85 = mul i64 %84, 32
  %86 = add i64 %82, %85
  %87 = load %struct.cb*, %struct.cb** %4, align 8
  %88 = getelementptr inbounds %struct.cb, %struct.cb* %87, i32 0, i32 1
  store i64 %86, i64* %88, align 8
  %89 = load %struct.nic*, %struct.nic** %3, align 8
  %90 = getelementptr inbounds %struct.nic, %struct.nic* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i32, i32* %5, align 4
  %93 = add i32 %92, 1
  %94 = load i32, i32* %6, align 4
  %95 = urem i32 %93, %94
  %96 = zext i32 %95 to i64
  %97 = mul i64 %96, 32
  %98 = add i64 %91, %97
  %99 = call i32 @cpu_to_le32(i64 %98)
  %100 = load %struct.cb*, %struct.cb** %4, align 8
  %101 = getelementptr inbounds %struct.cb, %struct.cb* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  br label %102

102:                                              ; preds = %76
  %103 = load %struct.cb*, %struct.cb** %4, align 8
  %104 = getelementptr inbounds %struct.cb, %struct.cb* %103, i32 1
  store %struct.cb* %104, %struct.cb** %4, align 8
  %105 = load i32, i32* %5, align 4
  %106 = add i32 %105, 1
  store i32 %106, i32* %5, align 4
  br label %43

107:                                              ; preds = %43
  %108 = load %struct.nic*, %struct.nic** %3, align 8
  %109 = getelementptr inbounds %struct.nic, %struct.nic* %108, i32 0, i32 1
  %110 = load %struct.cb*, %struct.cb** %109, align 8
  %111 = load %struct.nic*, %struct.nic** %3, align 8
  %112 = getelementptr inbounds %struct.nic, %struct.nic* %111, i32 0, i32 2
  store %struct.cb* %110, %struct.cb** %112, align 8
  %113 = load %struct.nic*, %struct.nic** %3, align 8
  %114 = getelementptr inbounds %struct.nic, %struct.nic* %113, i32 0, i32 3
  store %struct.cb* %110, %struct.cb** %114, align 8
  %115 = load %struct.nic*, %struct.nic** %3, align 8
  %116 = getelementptr inbounds %struct.nic, %struct.nic* %115, i32 0, i32 4
  store %struct.cb* %110, %struct.cb** %116, align 8
  %117 = load i32, i32* %6, align 4
  %118 = load %struct.nic*, %struct.nic** %3, align 8
  %119 = getelementptr inbounds %struct.nic, %struct.nic* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  store i32 0, i32* %2, align 4
  br label %120

120:                                              ; preds = %107, %36
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.cb* @dma_pool_zalloc(i32, i32, i64*) #1

declare dso_local i32 @cpu_to_le32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
