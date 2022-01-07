; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_ring_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/microchip/extr_lan743x_main.c_lan743x_tx_ring_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lan743x_tx = type { i32, i64, i32, i8*, %struct.TYPE_2__*, %struct.lan743x_tx_buffer_info*, i8*, %struct.lan743x_tx_descriptor* }
%struct.TYPE_2__ = type { i32 }
%struct.lan743x_tx_buffer_info = type { i32 }
%struct.lan743x_tx_descriptor = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LAN743X_TX_RING_SIZE = common dso_local global i32 0, align 4
@TX_CFG_B_TX_RING_LEN_MASK_ = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lan743x_tx*)* @lan743x_tx_ring_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lan743x_tx_ring_init(%struct.lan743x_tx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.lan743x_tx*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.lan743x_tx* %0, %struct.lan743x_tx** %3, align 8
  store i64 0, i64* %4, align 8
  store i8* null, i8** %5, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load i32, i32* @LAN743X_TX_RING_SIZE, align 4
  %11 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %12 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 8
  %13 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %14 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @TX_CFG_B_TX_RING_LEN_MASK_, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %99

23:                                               ; preds = %1
  %24 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %25 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 4
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i64 @ALIGN(i32 %29, i32 %30)
  store i64 %31, i64* %4, align 8
  store i8* null, i8** %6, align 8
  %32 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %33 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %32, i32 0, i32 4
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i64, i64* %4, align 8
  %38 = trunc i64 %37 to i32
  %39 = call i8* @pci_zalloc_consistent(i32 %36, i32 %38, i8** %6)
  store i8* %39, i8** %5, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %23
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %99

45:                                               ; preds = %23
  %46 = load i64, i64* %4, align 8
  %47 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %48 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %47, i32 0, i32 1
  store i64 %46, i64* %48, align 8
  %49 = load i8*, i8** %5, align 8
  %50 = bitcast i8* %49 to %struct.lan743x_tx_descriptor*
  %51 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %52 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %51, i32 0, i32 7
  store %struct.lan743x_tx_descriptor* %50, %struct.lan743x_tx_descriptor** %52, align 8
  %53 = load i8*, i8** %6, align 8
  %54 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %55 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %54, i32 0, i32 6
  store i8* %53, i8** %55, align 8
  %56 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %57 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call i8* @kcalloc(i32 %58, i32 4, i32 %59)
  store i8* %60, i8** %5, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = icmp ne i8* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %45
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %7, align 4
  br label %99

66:                                               ; preds = %45
  %67 = load i8*, i8** %5, align 8
  %68 = bitcast i8* %67 to %struct.lan743x_tx_buffer_info*
  %69 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %70 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %69, i32 0, i32 5
  store %struct.lan743x_tx_buffer_info* %68, %struct.lan743x_tx_buffer_info** %70, align 8
  store i8* null, i8** %6, align 8
  %71 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %72 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %71, i32 0, i32 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @pci_zalloc_consistent(i32 %75, i32 1, i8** %6)
  store i8* %76, i8** %5, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = icmp ne i8* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %66
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %7, align 4
  br label %99

82:                                               ; preds = %66
  %83 = load i8*, i8** %5, align 8
  %84 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %85 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %84, i32 0, i32 3
  store i8* %83, i8** %85, align 8
  %86 = load i8*, i8** %6, align 8
  %87 = ptrtoint i8* %86 to i32
  %88 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %89 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %88, i32 0, i32 2
  store i32 %87, i32* %89, align 8
  %90 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %91 = getelementptr inbounds %struct.lan743x_tx, %struct.lan743x_tx* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = and i32 %92, 3
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %98

95:                                               ; preds = %82
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %7, align 4
  br label %99

98:                                               ; preds = %82
  store i32 0, i32* %2, align 4
  br label %103

99:                                               ; preds = %95, %79, %63, %42, %20
  %100 = load %struct.lan743x_tx*, %struct.lan743x_tx** %3, align 8
  %101 = call i32 @lan743x_tx_ring_cleanup(%struct.lan743x_tx* %100)
  %102 = load i32, i32* %7, align 4
  store i32 %102, i32* %2, align 4
  br label %103

103:                                              ; preds = %99, %98
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i8* @pci_zalloc_consistent(i32, i32, i8**) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @lan743x_tx_ring_cleanup(%struct.lan743x_tx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
