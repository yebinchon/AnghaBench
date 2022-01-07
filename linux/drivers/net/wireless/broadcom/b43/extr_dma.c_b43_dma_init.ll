; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43/extr_dma.c_b43_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__*, %struct.b43_dma }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.b43_dma = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [66 x i8] c"The machine/kernel does not support the required %u-bit DMA mask\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%u-bit DMA initialized\0A\00", align 1
@tx_ring_mcast = common dso_local global i32 0, align 4
@tx_ring_AC_VO = common dso_local global i32 0, align 4
@tx_ring_AC_VI = common dso_local global i32 0, align 4
@tx_ring_AC_BE = common dso_local global i32 0, align 4
@tx_ring_AC_BK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_dma_init(%struct.b43_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43_wldev*, align 8
  %4 = alloca %struct.b43_dma*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %3, align 8
  %7 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %8 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %7, i32 0, i32 2
  store %struct.b43_dma* %8, %struct.b43_dma** %4, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %10 = call i32 @b43_engine_type(%struct.b43_wldev* %9)
  store i32 %10, i32* %5, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @DMA_BIT_MASK(i32 %16)
  %18 = call i32 @dma_set_mask_and_coherent(i32 %15, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %1
  %22 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %23 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @b43err(i32 %24, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %2, align 4
  br label %146

28:                                               ; preds = %1
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %30 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %34 [
  ]

34:                                               ; preds = %28
  %35 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @b43_dma_translation_in_low_word(%struct.b43_wldev* %35, i32 %36)
  %38 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %39 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %38, i32 0, i32 7
  store i32 %37, i32* %39, align 8
  %40 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %41 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  %44 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %44, i32 0, i32 1, i32 %45)
  %47 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %48 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %47, i32 0, i32 6
  store i8* %46, i8** %48, align 8
  %49 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %50 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %49, i32 0, i32 6
  %51 = load i8*, i8** %50, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %34
  br label %123

54:                                               ; preds = %34
  %55 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %56 = load i32, i32* %5, align 4
  %57 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %55, i32 1, i32 1, i32 %56)
  %58 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %59 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %61 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %60, i32 0, i32 5
  %62 = load i8*, i8** %61, align 8
  %63 = icmp ne i8* %62, null
  br i1 %63, label %65, label %64

64:                                               ; preds = %54
  br label %141

65:                                               ; preds = %54
  %66 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %67 = load i32, i32* %5, align 4
  %68 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %66, i32 2, i32 1, i32 %67)
  %69 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %70 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %69, i32 0, i32 4
  store i8* %68, i8** %70, align 8
  %71 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %72 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %71, i32 0, i32 4
  %73 = load i8*, i8** %72, align 8
  %74 = icmp ne i8* %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %65
  br label %137

76:                                               ; preds = %65
  %77 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %78 = load i32, i32* %5, align 4
  %79 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %77, i32 3, i32 1, i32 %78)
  %80 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %81 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %80, i32 0, i32 3
  store i8* %79, i8** %81, align 8
  %82 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %83 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %82, i32 0, i32 3
  %84 = load i8*, i8** %83, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %87, label %86

86:                                               ; preds = %76
  br label %133

87:                                               ; preds = %76
  %88 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %89 = load i32, i32* %5, align 4
  %90 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %88, i32 4, i32 1, i32 %89)
  %91 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %92 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %91, i32 0, i32 2
  store i8* %90, i8** %92, align 8
  %93 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %94 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %93, i32 0, i32 2
  %95 = load i8*, i8** %94, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %87
  br label %129

98:                                               ; preds = %87
  %99 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = call i8* @b43_setup_dmaring(%struct.b43_wldev* %99, i32 0, i32 0, i32 %100)
  %102 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %103 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %102, i32 0, i32 1
  store i8* %101, i8** %103, align 8
  %104 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %105 = getelementptr inbounds %struct.b43_dma, %struct.b43_dma* %104, i32 0, i32 1
  %106 = load i8*, i8** %105, align 8
  %107 = icmp ne i8* %106, null
  br i1 %107, label %109, label %108

108:                                              ; preds = %98
  br label %125

109:                                              ; preds = %98
  %110 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %111 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %110, i32 0, i32 1
  %112 = load %struct.TYPE_2__*, %struct.TYPE_2__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = icmp slt i32 %114, 5
  %116 = zext i1 %115 to i32
  %117 = call i32 @B43_WARN_ON(i32 %116)
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %3, align 8
  %119 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = load i32, i32* %5, align 4
  %122 = call i32 @b43dbg(i32 %120, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  store i32 0, i32* %6, align 4
  br label %123

123:                                              ; preds = %109, %53
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %2, align 4
  br label %146

125:                                              ; preds = %108
  %126 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %127 = load i32, i32* @tx_ring_mcast, align 4
  %128 = call i32 @destroy_ring(%struct.b43_dma* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %97
  %130 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %131 = load i32, i32* @tx_ring_AC_VO, align 4
  %132 = call i32 @destroy_ring(%struct.b43_dma* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %86
  %134 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %135 = load i32, i32* @tx_ring_AC_VI, align 4
  %136 = call i32 @destroy_ring(%struct.b43_dma* %134, i32 %135)
  br label %137

137:                                              ; preds = %133, %75
  %138 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %139 = load i32, i32* @tx_ring_AC_BE, align 4
  %140 = call i32 @destroy_ring(%struct.b43_dma* %138, i32 %139)
  br label %141

141:                                              ; preds = %137, %64
  %142 = load %struct.b43_dma*, %struct.b43_dma** %4, align 8
  %143 = load i32, i32* @tx_ring_AC_BK, align 4
  %144 = call i32 @destroy_ring(%struct.b43_dma* %142, i32 %143)
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %146

146:                                              ; preds = %141, %123, %21
  %147 = load i32, i32* %2, align 4
  ret i32 %147
}

declare dso_local i32 @b43_engine_type(%struct.b43_wldev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @b43err(i32, i8*, i32) #1

declare dso_local i32 @b43_dma_translation_in_low_word(%struct.b43_wldev*, i32) #1

declare dso_local i8* @b43_setup_dmaring(%struct.b43_wldev*, i32, i32, i32) #1

declare dso_local i32 @B43_WARN_ON(i32) #1

declare dso_local i32 @b43dbg(i32, i8*, i32) #1

declare dso_local i32 @destroy_ring(%struct.b43_dma*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
