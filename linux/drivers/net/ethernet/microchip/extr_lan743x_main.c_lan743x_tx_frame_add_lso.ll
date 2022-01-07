; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_frame_add_lso.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_frame_add_lso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i32, i64, %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_descriptor* }
%struct.lan743x_tx_buffer_info = type { i32, i64, i64, i32* }
%struct.lan743x_tx_descriptor = type { i32, i64, i64, i64 }

@TX_DESC_DATA0_EXT_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_LS_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_IOC_ = common dso_local global i32 0, align 4
@TX_BUFFER_INFO_FLAG_ACTIVE = common dso_local global i32 0, align 4
@TX_DESC_DATA0_EXT_PAY_LENGTH_MASK_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_DTYPE_EXT_ = common dso_local global i32 0, align 4
@TX_DESC_DATA0_EXT_LSO_ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lan743x_tx*, i32, i32)* @lan743x_tx_frame_add_lso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lan743x_tx_frame_add_lso(%struct.lan743x_tx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.lan743x_tx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.lan743x_tx_descriptor*, align 8
  %8 = alloca %struct.lan743x_tx_buffer_info*, align 8
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.lan743x_tx_descriptor* null, %struct.lan743x_tx_descriptor** %7, align 8
  store %struct.lan743x_tx_buffer_info* null, %struct.lan743x_tx_buffer_info** %8, align 8
  %9 = load i32, i32* @TX_DESC_DATA0_EXT_, align 4
  %10 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %11 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, %9
  store i32 %13, i32* %11, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp sle i32 %14, 0
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load i32, i32* @TX_DESC_DATA0_LS_, align 4
  %18 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %19 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = load i32, i32* @TX_DESC_DATA0_IOC_, align 4
  %23 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %24 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 8
  br label %27

27:                                               ; preds = %16, %3
  %28 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %29 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %28, i32 0, i32 3
  %30 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %29, align 8
  %31 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %32 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %30, i64 %33
  store %struct.lan743x_tx_descriptor* %34, %struct.lan743x_tx_descriptor** %7, align 8
  %35 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %36 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %7, align 8
  %39 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %41 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %42 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = call i64 @lan743x_tx_next_index(%struct.lan743x_tx* %40, i64 %43)
  %45 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %46 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %45, i32 0, i32 1
  store i64 %44, i64* %46, align 8
  %47 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %48 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %47, i32 0, i32 3
  %49 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %48, align 8
  %50 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %51 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %49, i64 %52
  store %struct.lan743x_tx_descriptor* %53, %struct.lan743x_tx_descriptor** %7, align 8
  %54 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %55 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %54, i32 0, i32 2
  %56 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %55, align 8
  %57 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %58 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %56, i64 %59
  store %struct.lan743x_tx_buffer_info* %60, %struct.lan743x_tx_buffer_info** %8, align 8
  %61 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %7, align 8
  %62 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %61, i32 0, i32 3
  store i64 0, i64* %62, align 8
  %63 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %7, align 8
  %64 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %63, i32 0, i32 2
  store i64 0, i64* %64, align 8
  %65 = load %struct.lan743x_tx_descriptor*, %struct.lan743x_tx_descriptor** %7, align 8
  %66 = getelementptr inbounds %struct.lan743x_tx_descriptor, %struct.lan743x_tx_descriptor* %65, i32 0, i32 1
  store i64 0, i64* %66, align 8
  %67 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %8, align 8
  %68 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %67, i32 0, i32 3
  store i32* null, i32** %68, align 8
  %69 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %8, align 8
  %70 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %69, i32 0, i32 2
  store i64 0, i64* %70, align 8
  %71 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %8, align 8
  %72 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %71, i32 0, i32 1
  store i64 0, i64* %72, align 8
  %73 = load i32, i32* @TX_BUFFER_INFO_FLAG_ACTIVE, align 4
  %74 = load %struct.lan743x_tx_buffer_info*, %struct.lan743x_tx_buffer_info** %8, align 8
  %75 = getelementptr inbounds %struct.lan743x_tx_buffer_info, %struct.lan743x_tx_buffer_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = or i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @TX_DESC_DATA0_EXT_PAY_LENGTH_MASK_, align 4
  %80 = and i32 %78, %79
  %81 = load i32, i32* @TX_DESC_DATA0_DTYPE_EXT_, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @TX_DESC_DATA0_EXT_LSO_, align 4
  %84 = or i32 %82, %83
  %85 = load %struct.lan743x_tx*, %struct.lan743x_tx** %4, align 8
  %86 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  ret void
}

declare dso_local i64 @lan743x_tx_next_index(%struct.lan743x_tx*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
