; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_op32_fill_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_op32_fill_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_dmaring = type { i32, i32, %struct.TYPE_4__*, %struct.b43legacy_dmadesc32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.b43legacy_dmadesc32 = type { i8*, i8* }

@SSB_DMA_TRANSLATION_MASK = common dso_local global i32 0, align 4
@SSB_DMA_TRANSLATION_SHIFT = common dso_local global i32 0, align 4
@B43legacy_DMA32_DCTL_BYTECNT = common dso_local global i32 0, align 4
@B43legacy_DMA32_DCTL_DTABLEEND = common dso_local global i32 0, align 4
@B43legacy_DMA32_DCTL_FRAMESTART = common dso_local global i32 0, align 4
@B43legacy_DMA32_DCTL_FRAMEEND = common dso_local global i32 0, align 4
@B43legacy_DMA32_DCTL_IRQ = common dso_local global i32 0, align 4
@B43legacy_DMA32_DCTL_ADDREXT_SHIFT = common dso_local global i32 0, align 4
@B43legacy_DMA32_DCTL_ADDREXT_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_dmaring*, %struct.b43legacy_dmadesc32*, i32, i32, i32, i32, i32)* @op32_fill_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @op32_fill_descriptor(%struct.b43legacy_dmaring* %0, %struct.b43legacy_dmadesc32* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.b43legacy_dmaring*, align 8
  %9 = alloca %struct.b43legacy_dmadesc32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.b43legacy_dmadesc32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.b43legacy_dmaring* %0, %struct.b43legacy_dmaring** %8, align 8
  store %struct.b43legacy_dmadesc32* %1, %struct.b43legacy_dmadesc32** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  %20 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %8, align 8
  %21 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %20, i32 0, i32 3
  %22 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %21, align 8
  store %struct.b43legacy_dmadesc32* %22, %struct.b43legacy_dmadesc32** %15, align 8
  %23 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %9, align 8
  %24 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %15, align 8
  %25 = ptrtoint %struct.b43legacy_dmadesc32* %23 to i64
  %26 = ptrtoint %struct.b43legacy_dmadesc32* %24 to i64
  %27 = sub i64 %25, %26
  %28 = sdiv exact i64 %27, 16
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %16, align 4
  %30 = load i32, i32* %16, align 4
  %31 = icmp sge i32 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %7
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %8, align 8
  %35 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br label %38

38:                                               ; preds = %32, %7
  %39 = phi i1 [ false, %7 ], [ %37, %32 ]
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @B43legacy_WARN_ON(i32 %41)
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @SSB_DMA_TRANSLATION_MASK, align 4
  %45 = xor i32 %44, -1
  %46 = and i32 %43, %45
  store i32 %46, i32* %18, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* @SSB_DMA_TRANSLATION_MASK, align 4
  %49 = and i32 %47, %48
  %50 = load i32, i32* @SSB_DMA_TRANSLATION_SHIFT, align 4
  %51 = ashr i32 %49, %50
  store i32 %51, i32* %19, align 4
  %52 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %8, align 8
  %53 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %18, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %18, align 4
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %8, align 8
  %62 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = sub nsw i32 %60, %63
  %65 = load i32, i32* @B43legacy_DMA32_DCTL_BYTECNT, align 4
  %66 = and i32 %64, %65
  store i32 %66, i32* %17, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %8, align 8
  %69 = getelementptr inbounds %struct.b43legacy_dmaring, %struct.b43legacy_dmaring* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = sub nsw i32 %70, 1
  %72 = icmp eq i32 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %38
  %74 = load i32, i32* @B43legacy_DMA32_DCTL_DTABLEEND, align 4
  %75 = load i32, i32* %17, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %17, align 4
  br label %77

77:                                               ; preds = %73, %38
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i32, i32* @B43legacy_DMA32_DCTL_FRAMESTART, align 4
  %82 = load i32, i32* %17, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %17, align 4
  br label %84

84:                                               ; preds = %80, %77
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %84
  %88 = load i32, i32* @B43legacy_DMA32_DCTL_FRAMEEND, align 4
  %89 = load i32, i32* %17, align 4
  %90 = or i32 %89, %88
  store i32 %90, i32* %17, align 4
  br label %91

91:                                               ; preds = %87, %84
  %92 = load i32, i32* %14, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* @B43legacy_DMA32_DCTL_IRQ, align 4
  %96 = load i32, i32* %17, align 4
  %97 = or i32 %96, %95
  store i32 %97, i32* %17, align 4
  br label %98

98:                                               ; preds = %94, %91
  %99 = load i32, i32* %19, align 4
  %100 = load i32, i32* @B43legacy_DMA32_DCTL_ADDREXT_SHIFT, align 4
  %101 = shl i32 %99, %100
  %102 = load i32, i32* @B43legacy_DMA32_DCTL_ADDREXT_MASK, align 4
  %103 = and i32 %101, %102
  %104 = load i32, i32* %17, align 4
  %105 = or i32 %104, %103
  store i32 %105, i32* %17, align 4
  %106 = load i32, i32* %17, align 4
  %107 = call i8* @cpu_to_le32(i32 %106)
  %108 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %9, align 8
  %109 = getelementptr inbounds %struct.b43legacy_dmadesc32, %struct.b43legacy_dmadesc32* %108, i32 0, i32 1
  store i8* %107, i8** %109, align 8
  %110 = load i32, i32* %18, align 4
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = load %struct.b43legacy_dmadesc32*, %struct.b43legacy_dmadesc32** %9, align 8
  %113 = getelementptr inbounds %struct.b43legacy_dmadesc32, %struct.b43legacy_dmadesc32* %112, i32 0, i32 0
  store i8* %111, i8** %113, align 8
  ret void
}

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i8* @cpu_to_le32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
