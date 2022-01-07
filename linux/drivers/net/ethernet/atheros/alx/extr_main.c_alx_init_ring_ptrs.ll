; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_init_ring_ptrs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/atheros/alx/extr_main.c_alx_init_ring_ptrs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alx_priv = type { i32, i32, i32, i32, %struct.alx_napi**, %struct.TYPE_4__, %struct.alx_hw }
%struct.alx_napi = type { %struct.TYPE_6__*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i64, i64, i64 }
%struct.TYPE_5__ = type { i64, i32, i64, i64 }
%struct.TYPE_4__ = type { i64 }
%struct.alx_hw = type { i32 }

@txring_header_reg = common dso_local global i32* null, align 8
@ALX_RRD_ADDR_LO = common dso_local global i32 0, align 4
@ALX_RFD_ADDR_LO = common dso_local global i32 0, align 4
@ALX_TX_BASE_ADDR_HI = common dso_local global i32 0, align 4
@ALX_TPD_RING_SZ = common dso_local global i32 0, align 4
@ALX_RX_BASE_ADDR_HI = common dso_local global i32 0, align 4
@ALX_RRD_RING_SZ = common dso_local global i32 0, align 4
@ALX_RFD_RING_SZ = common dso_local global i32 0, align 4
@ALX_RFD_BUF_SZ = common dso_local global i32 0, align 4
@ALX_SRAM9 = common dso_local global i32 0, align 4
@ALX_SRAM_LOAD_PTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.alx_priv*)* @alx_init_ring_ptrs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alx_init_ring_ptrs(%struct.alx_priv* %0) #0 {
  %2 = alloca %struct.alx_priv*, align 8
  %3 = alloca %struct.alx_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.alx_napi*, align 8
  %6 = alloca i32, align 4
  store %struct.alx_priv* %0, %struct.alx_priv** %2, align 8
  %7 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %8 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %7, i32 0, i32 6
  store %struct.alx_hw* %8, %struct.alx_hw** %3, align 8
  %9 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %10 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = ashr i32 %13, 32
  store i32 %14, i32* %4, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %92, %1
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %18 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %95

21:                                               ; preds = %15
  %22 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %23 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %22, i32 0, i32 4
  %24 = load %struct.alx_napi**, %struct.alx_napi*** %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.alx_napi*, %struct.alx_napi** %24, i64 %26
  %28 = load %struct.alx_napi*, %struct.alx_napi** %27, align 8
  store %struct.alx_napi* %28, %struct.alx_napi** %5, align 8
  %29 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %30 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = icmp ne %struct.TYPE_5__* %31, null
  br i1 %32, label %33, label %57

33:                                               ; preds = %21
  %34 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %35 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %34, i32 0, i32 1
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 3
  store i64 0, i64* %37, align 8
  %38 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %39 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 2
  store i64 0, i64* %41, align 8
  %42 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %43 = load i32*, i32** @txring_header_reg, align 8
  %44 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %45 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %44, i32 0, i32 1
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %52 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @alx_write_mem32(%struct.alx_hw* %42, i32 %50, i32 %55)
  br label %57

57:                                               ; preds = %33, %21
  %58 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %59 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %58, i32 0, i32 0
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = icmp ne %struct.TYPE_6__* %60, null
  br i1 %61, label %62, label %91

62:                                               ; preds = %57
  %63 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %64 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 4
  store i64 0, i64* %66, align 8
  %67 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %68 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %67, i32 0, i32 0
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 3
  store i64 0, i64* %70, align 8
  %71 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %72 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %71, i32 0, i32 0
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 2
  store i64 0, i64* %74, align 8
  %75 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %76 = load i32, i32* @ALX_RRD_ADDR_LO, align 4
  %77 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %78 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %77, i32 0, i32 0
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @alx_write_mem32(%struct.alx_hw* %75, i32 %76, i32 %81)
  %83 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %84 = load i32, i32* @ALX_RFD_ADDR_LO, align 4
  %85 = load %struct.alx_napi*, %struct.alx_napi** %5, align 8
  %86 = getelementptr inbounds %struct.alx_napi, %struct.alx_napi* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @alx_write_mem32(%struct.alx_hw* %83, i32 %84, i32 %89)
  br label %91

91:                                               ; preds = %62, %57
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %6, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %6, align 4
  br label %15

95:                                               ; preds = %15
  %96 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %97 = load i32, i32* @ALX_TX_BASE_ADDR_HI, align 4
  %98 = load i32, i32* %4, align 4
  %99 = call i32 @alx_write_mem32(%struct.alx_hw* %96, i32 %97, i32 %98)
  %100 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %101 = load i32, i32* @ALX_TPD_RING_SZ, align 4
  %102 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %103 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @alx_write_mem32(%struct.alx_hw* %100, i32 %101, i32 %104)
  %106 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %107 = load i32, i32* @ALX_RX_BASE_ADDR_HI, align 4
  %108 = load i32, i32* %4, align 4
  %109 = call i32 @alx_write_mem32(%struct.alx_hw* %106, i32 %107, i32 %108)
  %110 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %111 = load i32, i32* @ALX_RRD_RING_SZ, align 4
  %112 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %113 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @alx_write_mem32(%struct.alx_hw* %110, i32 %111, i32 %114)
  %116 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %117 = load i32, i32* @ALX_RFD_RING_SZ, align 4
  %118 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %119 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @alx_write_mem32(%struct.alx_hw* %116, i32 %117, i32 %120)
  %122 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %123 = load i32, i32* @ALX_RFD_BUF_SZ, align 4
  %124 = load %struct.alx_priv*, %struct.alx_priv** %2, align 8
  %125 = getelementptr inbounds %struct.alx_priv, %struct.alx_priv* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @alx_write_mem32(%struct.alx_hw* %122, i32 %123, i32 %126)
  %128 = load %struct.alx_hw*, %struct.alx_hw** %3, align 8
  %129 = load i32, i32* @ALX_SRAM9, align 4
  %130 = load i32, i32* @ALX_SRAM_LOAD_PTR, align 4
  %131 = call i32 @alx_write_mem32(%struct.alx_hw* %128, i32 %129, i32 %130)
  ret void
}

declare dso_local i32 @alx_write_mem32(%struct.alx_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
