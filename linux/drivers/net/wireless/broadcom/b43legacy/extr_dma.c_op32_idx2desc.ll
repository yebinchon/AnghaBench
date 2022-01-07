; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_op32_idx2desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_op32_idx2desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmadesc32 = type { i32 }
%struct.b43legacy_dmaring = type { %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc_meta* }
%struct.b43legacy_dmadesc_meta = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43legacy_dmadesc32* (%struct.b43legacy_dmaring*, i32, %struct.b43legacy_dmadesc_meta**)* @op32_idx2desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43legacy_dmadesc32* @op32_idx2desc(%struct.b43legacy_dmaring* %0, i32 %1, %struct.b43legacy_dmadesc_meta** %2) #0 {
  %4 = alloca %struct.b43legacy_dmaring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43legacy_dmadesc_meta**, align 8
  %7 = alloca %struct.b43legacy_dmadesc32*, align 8
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.b43legacy_dmadesc_meta** %2, %struct.b43legacy_dmadesc_meta*** %6, align 8
  %8 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %9 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %8, i32 0, i32 1
  %10 = load %struct.b43legacy_dmadesc_meta*, %struct.b43legacy_dmadesc_meta** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.b43legacy_dmadesc_meta, %struct.b43legacy_dmadesc_meta* %10, i64 %12
  %14 = load %struct.b43legacy_dmadesc_meta**, %struct.b43legacy_dmadesc_meta*** %6, align 8
  store %struct.b43legacy_dmadesc_meta* %13, %struct.b43legacy_dmadesc_meta** %14, align 8
  %15 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %4, align 8
  %16 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %15, i32 0, i32 0
  %17 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %16, align 8
  store %struct.b43legacy_dmadesc32* %17, %struct.b43legacy_dmadesc32** %7, align 8
  %18 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %7, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.b43legacy_dmadesc32, %struct.b43legacy_dmadesc32* %18, i64 %20
  store %struct.b43legacy_dmadesc32* %21, %struct.b43legacy_dmadesc32** %7, align 8
  %22 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %7, align 8
  ret %struct.b43legacy_dmadesc32* %22
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
