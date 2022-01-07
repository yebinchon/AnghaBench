; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_dma_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/broadcom/b43legacy/extr_dma.c_b43legacy_dma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_wldev = type { i32, i32, %struct.TYPE_4__*, %struct.b43legacy_dma }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.b43legacy_dma = type { %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring*, i32 }
%struct.b43legacy_dmaring = type { i32 }

@.str = private unnamed_addr constant [66 x i8] c"DMA for this device not supported and no PIO support compiled in\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"%u-bit DMA initialized\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43legacy_dma_init(%struct.b43legacy_wldev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_wldev*, align 8
  %4 = alloca %struct.b43legacy_dma*, align 8
  %5 = alloca %struct.b43legacy_dmaring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.b43legacy_wldev* %0, %struct.b43legacy_wldev** %3, align 8
  %8 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %9 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %8, i32 0, i32 3
  store %struct.b43legacy_dma* %9, %struct.b43legacy_dma** %4, align 8
  %10 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %11 = call i32 @b43legacy_engine_type(%struct.b43legacy_wldev* %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %13 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @DMA_BIT_MASK(i32 %17)
  %19 = call i32 @dma_set_mask_and_coherent(i32 %16, i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %1
  %23 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %24 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @b43legacyerr(i32 %25, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EOPNOTSUPP, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %2, align 4
  br label %183

29:                                               ; preds = %1
  %30 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %31 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = call i32 @ssb_dma_translation(%struct.TYPE_4__* %32)
  %34 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %35 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %38, i32 0, i32 1, i32 %39)
  store %struct.b43legacy_dmaring* %40, %struct.b43legacy_dmaring** %5, align 8
  %41 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %42 = icmp ne %struct.b43legacy_dmaring* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %29
  br label %132

44:                                               ; preds = %29
  %45 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %46 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %47 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %46, i32 0, i32 0
  store %struct.b43legacy_dmaring* %45, %struct.b43legacy_dmaring** %47, align 8
  %48 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %48, i32 1, i32 1, i32 %49)
  store %struct.b43legacy_dmaring* %50, %struct.b43legacy_dmaring** %5, align 8
  %51 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %52 = icmp ne %struct.b43legacy_dmaring* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %44
  br label %176

54:                                               ; preds = %44
  %55 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %56 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %57 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %56, i32 0, i32 1
  store %struct.b43legacy_dmaring* %55, %struct.b43legacy_dmaring** %57, align 8
  %58 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %58, i32 2, i32 1, i32 %59)
  store %struct.b43legacy_dmaring* %60, %struct.b43legacy_dmaring** %5, align 8
  %61 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %62 = icmp ne %struct.b43legacy_dmaring* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %54
  br label %169

64:                                               ; preds = %54
  %65 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %66 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %67 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %66, i32 0, i32 2
  store %struct.b43legacy_dmaring* %65, %struct.b43legacy_dmaring** %67, align 8
  %68 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %69 = load i32, i32* %6, align 4
  %70 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %68, i32 3, i32 1, i32 %69)
  store %struct.b43legacy_dmaring* %70, %struct.b43legacy_dmaring** %5, align 8
  %71 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %72 = icmp ne %struct.b43legacy_dmaring* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %64
  br label %162

74:                                               ; preds = %64
  %75 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %76 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %77 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %76, i32 0, i32 3
  store %struct.b43legacy_dmaring* %75, %struct.b43legacy_dmaring** %77, align 8
  %78 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %78, i32 4, i32 1, i32 %79)
  store %struct.b43legacy_dmaring* %80, %struct.b43legacy_dmaring** %5, align 8
  %81 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %82 = icmp ne %struct.b43legacy_dmaring* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %74
  br label %155

84:                                               ; preds = %74
  %85 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %86 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %87 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %86, i32 0, i32 4
  store %struct.b43legacy_dmaring* %85, %struct.b43legacy_dmaring** %87, align 8
  %88 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %88, i32 5, i32 1, i32 %89)
  store %struct.b43legacy_dmaring* %90, %struct.b43legacy_dmaring** %5, align 8
  %91 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %92 = icmp ne %struct.b43legacy_dmaring* %91, null
  br i1 %92, label %94, label %93

93:                                               ; preds = %84
  br label %148

94:                                               ; preds = %84
  %95 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %96 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %97 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %96, i32 0, i32 5
  store %struct.b43legacy_dmaring* %95, %struct.b43legacy_dmaring** %97, align 8
  %98 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %98, i32 0, i32 0, i32 %99)
  store %struct.b43legacy_dmaring* %100, %struct.b43legacy_dmaring** %5, align 8
  %101 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %102 = icmp ne %struct.b43legacy_dmaring* %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %94
  br label %141

104:                                              ; preds = %94
  %105 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %106 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %107 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %106, i32 0, i32 6
  store %struct.b43legacy_dmaring* %105, %struct.b43legacy_dmaring** %107, align 8
  %108 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %109 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %108, i32 0, i32 2
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = icmp slt i32 %113, 5
  br i1 %114, label %115, label %126

115:                                              ; preds = %104
  %116 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %117 = load i32, i32* %6, align 4
  %118 = call %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev* %116, i32 3, i32 0, i32 %117)
  store %struct.b43legacy_dmaring* %118, %struct.b43legacy_dmaring** %5, align 8
  %119 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %120 = icmp ne %struct.b43legacy_dmaring* %119, null
  br i1 %120, label %122, label %121

121:                                              ; preds = %115
  br label %134

122:                                              ; preds = %115
  %123 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %5, align 8
  %124 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %125 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %124, i32 0, i32 7
  store %struct.b43legacy_dmaring* %123, %struct.b43legacy_dmaring** %125, align 8
  br label %126

126:                                              ; preds = %122, %104
  %127 = load %struct.b43legacy_wldev*, %struct.b43legacy_wldev** %3, align 8
  %128 = getelementptr inbounds %struct.b43legacy_wldev, %struct.b43legacy_wldev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @b43legacydbg(i32 %129, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %130)
  store i32 0, i32* %7, align 4
  br label %132

132:                                              ; preds = %176, %126, %43
  %133 = load i32, i32* %7, align 4
  store i32 %133, i32* %2, align 4
  br label %183

134:                                              ; preds = %121
  %135 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %136 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %135, i32 0, i32 6
  %137 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %136, align 8
  %138 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %137)
  %139 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %140 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %139, i32 0, i32 6
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %140, align 8
  br label %141

141:                                              ; preds = %134, %103
  %142 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %143 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %142, i32 0, i32 5
  %144 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %143, align 8
  %145 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %144)
  %146 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %147 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %146, i32 0, i32 5
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %147, align 8
  br label %148

148:                                              ; preds = %141, %93
  %149 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %150 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %149, i32 0, i32 4
  %151 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %150, align 8
  %152 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %151)
  %153 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %154 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %153, i32 0, i32 4
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %154, align 8
  br label %155

155:                                              ; preds = %148, %83
  %156 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %157 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %156, i32 0, i32 3
  %158 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %157, align 8
  %159 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %158)
  %160 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %161 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %160, i32 0, i32 3
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %161, align 8
  br label %162

162:                                              ; preds = %155, %73
  %163 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %164 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %163, i32 0, i32 2
  %165 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %164, align 8
  %166 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %165)
  %167 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %168 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %167, i32 0, i32 2
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %168, align 8
  br label %169

169:                                              ; preds = %162, %63
  %170 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %171 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %170, i32 0, i32 1
  %172 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %171, align 8
  %173 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %172)
  %174 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %175 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %174, i32 0, i32 1
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %175, align 8
  br label %176

176:                                              ; preds = %169, %53
  %177 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %178 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %177, i32 0, i32 0
  %179 = load %struct.b43legacy_dmaring*, %struct.b43legacy_dmaring** %178, align 8
  %180 = call i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring* %179)
  %181 = load %struct.b43legacy_dma*, %struct.b43legacy_dma** %4, align 8
  %182 = getelementptr inbounds %struct.b43legacy_dma, %struct.b43legacy_dma* %181, i32 0, i32 0
  store %struct.b43legacy_dmaring* null, %struct.b43legacy_dmaring** %182, align 8
  br label %132

183:                                              ; preds = %132, %22
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @b43legacy_engine_type(%struct.b43legacy_wldev*) #1

declare dso_local i32 @dma_set_mask_and_coherent(i32, i32) #1

declare dso_local i32 @DMA_BIT_MASK(i32) #1

declare dso_local i32 @b43legacyerr(i32, i8*) #1

declare dso_local i32 @ssb_dma_translation(%struct.TYPE_4__*) #1

declare dso_local %struct.b43legacy_dmaring* @b43legacy_setup_dmaring(%struct.b43legacy_wldev*, i32, i32, i32) #1

declare dso_local i32 @b43legacydbg(i32, i8*, i32) #1

declare dso_local i32 @b43legacy_destroy_dmaring(%struct.b43legacy_dmaring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
