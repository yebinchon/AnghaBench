; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_save_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cavium/thunder/extr_thunder_bgx.c_bgx_lmac_save_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lmac = type { i64, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lmac*, i64, i64)* @bgx_lmac_save_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bgx_lmac_save_filter(%struct.lmac* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lmac*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.lmac* %0, %struct.lmac** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.lmac*, %struct.lmac** %5, align 8
  %10 = icmp ne %struct.lmac* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %77

12:                                               ; preds = %3
  store i64 0, i64* %8, align 8
  br label %13

13:                                               ; preds = %41, %12
  %14 = load i64, i64* %8, align 8
  %15 = load %struct.lmac*, %struct.lmac** %5, align 8
  %16 = getelementptr inbounds %struct.lmac, %struct.lmac* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ult i64 %14, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %13
  %20 = load %struct.lmac*, %struct.lmac** %5, align 8
  %21 = getelementptr inbounds %struct.lmac, %struct.lmac* %20, i32 0, i32 2
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %6, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %40

29:                                               ; preds = %19
  %30 = load i64, i64* %7, align 8
  %31 = call i32 @BIT_ULL(i64 %30)
  %32 = load %struct.lmac*, %struct.lmac** %5, align 8
  %33 = getelementptr inbounds %struct.lmac, %struct.lmac* %32, i32 0, i32 2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = or i32 %38, %31
  store i32 %39, i32* %37, align 8
  store i32 -1, i32* %4, align 4
  br label %77

40:                                               ; preds = %19
  br label %41

41:                                               ; preds = %40
  %42 = load i64, i64* %8, align 8
  %43 = add i64 %42, 1
  store i64 %43, i64* %8, align 8
  br label %13

44:                                               ; preds = %13
  %45 = load %struct.lmac*, %struct.lmac** %5, align 8
  %46 = getelementptr inbounds %struct.lmac, %struct.lmac* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.lmac*, %struct.lmac** %5, align 8
  %49 = getelementptr inbounds %struct.lmac, %struct.lmac* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %47, %50
  br i1 %51, label %53, label %52

52:                                               ; preds = %44
  store i32 -1, i32* %4, align 4
  br label %77

53:                                               ; preds = %44
  %54 = load i64, i64* %6, align 8
  %55 = load %struct.lmac*, %struct.lmac** %5, align 8
  %56 = getelementptr inbounds %struct.lmac, %struct.lmac* %55, i32 0, i32 2
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = load %struct.lmac*, %struct.lmac** %5, align 8
  %59 = getelementptr inbounds %struct.lmac, %struct.lmac* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %54, i64* %62, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call i32 @BIT_ULL(i64 %63)
  %65 = load %struct.lmac*, %struct.lmac** %5, align 8
  %66 = getelementptr inbounds %struct.lmac, %struct.lmac* %65, i32 0, i32 2
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load %struct.lmac*, %struct.lmac** %5, align 8
  %69 = getelementptr inbounds %struct.lmac, %struct.lmac* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 1
  store i32 %64, i32* %72, align 8
  %73 = load %struct.lmac*, %struct.lmac** %5, align 8
  %74 = getelementptr inbounds %struct.lmac, %struct.lmac* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %74, align 8
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %53, %52, %29, %11
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @BIT_ULL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
