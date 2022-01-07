; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_free_tx_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/pasemi/extr_pasemi_mac.c_pasemi_mac_free_tx_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pasemi_mac = type { i32 }
%struct.pasemi_mac_txring = type { i32, i32, i32, %struct.pasemi_mac_buffer* }
%struct.pasemi_mac_buffer = type { i64, i64 }
%struct.TYPE_2__ = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@TX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pasemi_mac*)* @pasemi_mac_free_tx_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_mac_free_tx_resources(%struct.pasemi_mac* %0) #0 {
  %2 = alloca %struct.pasemi_mac*, align 8
  %3 = alloca %struct.pasemi_mac_txring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.pasemi_mac_buffer*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pasemi_mac* %0, %struct.pasemi_mac** %2, align 8
  %13 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %14 = call %struct.pasemi_mac_txring* @tx_ring(%struct.pasemi_mac* %13)
  store %struct.pasemi_mac_txring* %14, %struct.pasemi_mac_txring** %3, align 8
  %15 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %16 = add nsw i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %7, align 8
  %19 = alloca i64, i64 %17, align 16
  store i64 %17, i64* %8, align 8
  %20 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %21 = getelementptr inbounds %struct.pasemi_mac_txring, %struct.pasemi_mac_txring* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %11, align 4
  %23 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %24 = getelementptr inbounds %struct.pasemi_mac_txring, %struct.pasemi_mac_txring* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %11, align 4
  %27 = load i32, i32* %12, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @TX_RING_SIZE, align 4
  %31 = load i32, i32* %12, align 4
  %32 = add nsw i32 %31, %30
  store i32 %32, i32* %12, align 4
  br label %33

33:                                               ; preds = %29, %1
  %34 = load i32, i32* %11, align 4
  store i32 %34, i32* %4, align 4
  br label %35

35:                                               ; preds = %100, %33
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ult i32 %36, %37
  br i1 %38, label %39, label %104

39:                                               ; preds = %35
  %40 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %41 = getelementptr inbounds %struct.pasemi_mac_txring, %struct.pasemi_mac_txring* %40, i32 0, i32 3
  %42 = load %struct.pasemi_mac_buffer*, %struct.pasemi_mac_buffer** %41, align 8
  %43 = load i32, i32* %4, align 4
  %44 = add i32 %43, 1
  %45 = load i32, i32* @TX_RING_SIZE, align 4
  %46 = sub nsw i32 %45, 1
  %47 = and i32 %44, %46
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.pasemi_mac_buffer, %struct.pasemi_mac_buffer* %42, i64 %48
  store %struct.pasemi_mac_buffer* %49, %struct.pasemi_mac_buffer** %6, align 8
  %50 = load %struct.pasemi_mac_buffer*, %struct.pasemi_mac_buffer** %6, align 8
  %51 = getelementptr inbounds %struct.pasemi_mac_buffer, %struct.pasemi_mac_buffer* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %98

54:                                               ; preds = %39
  %55 = load %struct.pasemi_mac_buffer*, %struct.pasemi_mac_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.pasemi_mac_buffer, %struct.pasemi_mac_buffer* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %98

59:                                               ; preds = %54
  %60 = load %struct.pasemi_mac_buffer*, %struct.pasemi_mac_buffer** %6, align 8
  %61 = getelementptr inbounds %struct.pasemi_mac_buffer, %struct.pasemi_mac_buffer* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call %struct.TYPE_2__* @skb_shinfo(i64 %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  store i32 %65, i32* %10, align 4
  store i32 0, i32* %5, align 4
  br label %66

66:                                               ; preds = %88, %59
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %10, align 4
  %69 = icmp ule i32 %67, %68
  br i1 %69, label %70, label %91

70:                                               ; preds = %66
  %71 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %72 = getelementptr inbounds %struct.pasemi_mac_txring, %struct.pasemi_mac_txring* %71, i32 0, i32 3
  %73 = load %struct.pasemi_mac_buffer*, %struct.pasemi_mac_buffer** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = add i32 %74, 1
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %75, %76
  %78 = load i32, i32* @TX_RING_SIZE, align 4
  %79 = sub nsw i32 %78, 1
  %80 = and i32 %77, %79
  %81 = zext i32 %80 to i64
  %82 = getelementptr inbounds %struct.pasemi_mac_buffer, %struct.pasemi_mac_buffer* %73, i64 %81
  %83 = getelementptr inbounds %struct.pasemi_mac_buffer, %struct.pasemi_mac_buffer* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* %5, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds i64, i64* %19, i64 %86
  store i64 %84, i64* %87, align 8
  br label %88

88:                                               ; preds = %70
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load %struct.pasemi_mac*, %struct.pasemi_mac** %2, align 8
  %93 = load i32, i32* %10, align 4
  %94 = load %struct.pasemi_mac_buffer*, %struct.pasemi_mac_buffer** %6, align 8
  %95 = getelementptr inbounds %struct.pasemi_mac_buffer, %struct.pasemi_mac_buffer* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @pasemi_mac_unmap_tx_skb(%struct.pasemi_mac* %92, i32 %93, i64 %96, i64* %19)
  store i32 %97, i32* %9, align 4
  br label %99

98:                                               ; preds = %54, %39
  store i32 2, i32* %9, align 4
  br label %99

99:                                               ; preds = %98, %91
  br label %100

100:                                              ; preds = %99
  %101 = load i32, i32* %9, align 4
  %102 = load i32, i32* %4, align 4
  %103 = add i32 %102, %101
  store i32 %103, i32* %4, align 4
  br label %35

104:                                              ; preds = %35
  %105 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %106 = getelementptr inbounds %struct.pasemi_mac_txring, %struct.pasemi_mac_txring* %105, i32 0, i32 3
  %107 = load %struct.pasemi_mac_buffer*, %struct.pasemi_mac_buffer** %106, align 8
  %108 = call i32 @kfree(%struct.pasemi_mac_buffer* %107)
  %109 = load %struct.pasemi_mac_txring*, %struct.pasemi_mac_txring** %3, align 8
  %110 = getelementptr inbounds %struct.pasemi_mac_txring, %struct.pasemi_mac_txring* %109, i32 0, i32 2
  %111 = call i32 @pasemi_dma_free_chan(i32* %110)
  %112 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %112)
  ret void
}

declare dso_local %struct.pasemi_mac_txring* @tx_ring(%struct.pasemi_mac*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.TYPE_2__* @skb_shinfo(i64) #1

declare dso_local i32 @pasemi_mac_unmap_tx_skb(%struct.pasemi_mac*, i32, i64, i64*) #1

declare dso_local i32 @kfree(%struct.pasemi_mac_buffer*) #1

declare dso_local i32 @pasemi_dma_free_chan(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
