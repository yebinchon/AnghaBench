; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_alloc_tx_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/smsc/extr_smsc9420.c_smsc9420_alloc_tx_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smsc9420_pdata = type { i32, i64, i64, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64, i64, i64, i64 }
%struct.TYPE_4__ = type { i64, i32* }

@TX_RING_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TDES1_TER_ = common dso_local global i64 0, align 8
@TX_BASE_ADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.smsc9420_pdata*)* @smsc9420_alloc_tx_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smsc9420_alloc_tx_ring(%struct.smsc9420_pdata* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.smsc9420_pdata*, align 8
  %4 = alloca i32, align 4
  store %struct.smsc9420_pdata* %0, %struct.smsc9420_pdata** %3, align 8
  %5 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %6 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %5, i32 0, i32 3
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = icmp ne %struct.TYPE_3__* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load i32, i32* @TX_RING_SIZE, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.TYPE_4__* @kmalloc_array(i32 %12, i32 4, i32 %13)
  %15 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %15, i32 0, i32 4
  store %struct.TYPE_4__* %14, %struct.TYPE_4__** %16, align 8
  %17 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %18 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = icmp ne %struct.TYPE_4__* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %98

24:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %25

25:                                               ; preds = %72, %24
  %26 = load i32, i32* %4, align 4
  %27 = load i32, i32* @TX_RING_SIZE, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %75

29:                                               ; preds = %25
  %30 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %31 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %30, i32 0, i32 4
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = load i32, i32* %4, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %38 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %37, i32 0, i32 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  store i64 0, i64* %43, align 8
  %44 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %45 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %44, i32 0, i32 3
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 3
  store i64 0, i64* %50, align 8
  %51 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %52 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %51, i32 0, i32 3
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  store i64 0, i64* %57, align 8
  %58 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %59 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %58, i32 0, i32 3
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = load i32, i32* %4, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %66 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %65, i32 0, i32 3
  %67 = load %struct.TYPE_3__*, %struct.TYPE_3__** %66, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  br label %72

72:                                               ; preds = %29
  %73 = load i32, i32* %4, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %25

75:                                               ; preds = %25
  %76 = load i64, i64* @TDES1_TER_, align 8
  %77 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %78 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %77, i32 0, i32 3
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = load i32, i32* @TX_RING_SIZE, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  store i64 %76, i64* %84, align 8
  %85 = call i32 (...) @wmb()
  %86 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %87 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %86, i32 0, i32 2
  store i64 0, i64* %87, align 8
  %88 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %89 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %88, i32 0, i32 1
  store i64 0, i64* %89, align 8
  %90 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %91 = load i32, i32* @TX_BASE_ADDR, align 4
  %92 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %93 = getelementptr inbounds %struct.smsc9420_pdata, %struct.smsc9420_pdata* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @smsc9420_reg_write(%struct.smsc9420_pdata* %90, i32 %91, i32 %94)
  %96 = load %struct.smsc9420_pdata*, %struct.smsc9420_pdata** %3, align 8
  %97 = call i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %75, %21
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_4__* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @smsc9420_reg_write(%struct.smsc9420_pdata*, i32, i32) #1

declare dso_local i32 @smsc9420_pci_flush_write(%struct.smsc9420_pdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
