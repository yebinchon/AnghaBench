; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_napi_poll.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/cortina/extr_gemini.c_gmac_napi_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.napi_struct = type { i32 }
%struct.gemini_ethernet_port = type { i32, i32, i32, %struct.gemini_ethernet* }
%struct.gemini_ethernet = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.napi_struct*, i32)* @gmac_napi_poll to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gmac_napi_poll(%struct.napi_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.napi_struct*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.gemini_ethernet_port*, align 8
  %6 = alloca %struct.gemini_ethernet*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.napi_struct* %0, %struct.napi_struct** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %10 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.gemini_ethernet_port* @netdev_priv(i32 %11)
  store %struct.gemini_ethernet_port* %12, %struct.gemini_ethernet_port** %5, align 8
  %13 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %14 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %13, i32 0, i32 3
  %15 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %14, align 8
  store %struct.gemini_ethernet* %15, %struct.gemini_ethernet** %6, align 8
  %16 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %6, align 8
  %17 = getelementptr inbounds %struct.gemini_ethernet, %struct.gemini_ethernet* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %18, 1
  %20 = shl i32 1, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %22 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %21, i32 0, i32 1
  %23 = call i32 @u64_stats_update_begin(i32* %22)
  %24 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %25 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @gmac_rx(i32 %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ult i32 %29, %30
  br i1 %31, label %32, label %46

32:                                               ; preds = %2
  %33 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %34 = call i32 @napi_gro_flush(%struct.napi_struct* %33, i32 0)
  %35 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @napi_complete_done(%struct.napi_struct* %35, i32 %36)
  %38 = load %struct.napi_struct*, %struct.napi_struct** %3, align 8
  %39 = getelementptr inbounds %struct.napi_struct, %struct.napi_struct* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @gmac_enable_rx_irq(i32 %40, i32 1)
  %42 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %43 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 8
  br label %46

46:                                               ; preds = %32, %2
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* %8, align 4
  %49 = sub i32 %47, %48
  %50 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %51 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add i32 %52, %49
  store i32 %53, i32* %51, align 8
  %54 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %55 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = icmp ugt i32 %56, %57
  br i1 %58, label %59, label %67

59:                                               ; preds = %46
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %62 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sub i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.gemini_ethernet*, %struct.gemini_ethernet** %6, align 8
  %66 = call i32 @geth_fill_freeq(%struct.gemini_ethernet* %65, i32 1)
  br label %67

67:                                               ; preds = %59, %46
  %68 = load %struct.gemini_ethernet_port*, %struct.gemini_ethernet_port** %5, align 8
  %69 = getelementptr inbounds %struct.gemini_ethernet_port, %struct.gemini_ethernet_port* %68, i32 0, i32 1
  %70 = call i32 @u64_stats_update_end(i32* %69)
  %71 = load i32, i32* %8, align 4
  ret i32 %71
}

declare dso_local %struct.gemini_ethernet_port* @netdev_priv(i32) #1

declare dso_local i32 @u64_stats_update_begin(i32*) #1

declare dso_local i32 @gmac_rx(i32, i32) #1

declare dso_local i32 @napi_gro_flush(%struct.napi_struct*, i32) #1

declare dso_local i32 @napi_complete_done(%struct.napi_struct*, i32) #1

declare dso_local i32 @gmac_enable_rx_irq(i32, i32) #1

declare dso_local i32 @geth_fill_freeq(%struct.gemini_ethernet*, i32) #1

declare dso_local i32 @u64_stats_update_end(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
