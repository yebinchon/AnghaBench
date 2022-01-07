; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-risc.c_tw68_risc_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-risc.c_tw68_risc_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@RISC_JUMP = common dso_local global i32 0, align 4
@RISC_SYNCO = common dso_local global i32 0, align 4
@RISC_SYNCE = common dso_local global i32 0, align 4
@RISC_LINESTART = common dso_local global i32 0, align 4
@RISC_INLINE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32)* @tw68_risc_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @tw68_risc_field(i32* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.scatterlist*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.scatterlist*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %21 = load i32, i32* %16, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %8
  %24 = load i32, i32* @RISC_JUMP, align 4
  %25 = call i8* @cpu_to_le32(i32 %24)
  %26 = ptrtoint i8* %25 to i32
  %27 = load i32*, i32** %9, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %9, align 8
  store i32 %26, i32* %27, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %9, align 8
  store i32 0, i32* %29, align 4
  br label %31

31:                                               ; preds = %23, %8
  %32 = load i32, i32* %12, align 4
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %40

34:                                               ; preds = %31
  %35 = load i32, i32* @RISC_SYNCO, align 4
  %36 = call i8* @cpu_to_le32(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load i32*, i32** %9, align 8
  %39 = getelementptr inbounds i32, i32* %38, i32 1
  store i32* %39, i32** %9, align 8
  store i32 %37, i32* %38, align 4
  br label %46

40:                                               ; preds = %31
  %41 = load i32, i32* @RISC_SYNCE, align 4
  %42 = call i8* @cpu_to_le32(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %9, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %9, align 8
  store i32 %43, i32* %44, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = load i32*, i32** %9, align 8
  %48 = getelementptr inbounds i32, i32* %47, i32 1
  store i32* %48, i32** %9, align 8
  store i32 0, i32* %47, align 4
  %49 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %49, %struct.scatterlist** %17, align 8
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %184, %46
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %187

54:                                               ; preds = %50
  br label %55

55:                                               ; preds = %65, %54
  %56 = load i32, i32* %11, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i32, i32* %11, align 4
  %60 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %61 = call i32 @sg_dma_len(%struct.scatterlist* %60)
  %62 = icmp uge i32 %59, %61
  br label %63

63:                                               ; preds = %58, %55
  %64 = phi i1 [ false, %55 ], [ %62, %58 ]
  br i1 %64, label %65, label %72

65:                                               ; preds = %63
  %66 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %67 = call i32 @sg_dma_len(%struct.scatterlist* %66)
  %68 = load i32, i32* %11, align 4
  %69 = sub i32 %68, %67
  store i32 %69, i32* %11, align 4
  %70 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %71 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %70)
  store %struct.scatterlist* %71, %struct.scatterlist** %17, align 8
  br label %55

72:                                               ; preds = %63
  %73 = load i32, i32* %13, align 4
  %74 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %75 = call i32 @sg_dma_len(%struct.scatterlist* %74)
  %76 = load i32, i32* %11, align 4
  %77 = sub i32 %75, %76
  %78 = icmp ule i32 %73, %77
  br i1 %78, label %79, label %98

79:                                               ; preds = %72
  %80 = load i32, i32* @RISC_LINESTART, align 4
  %81 = load i32, i32* %13, align 4
  %82 = or i32 %80, %81
  %83 = call i8* @cpu_to_le32(i32 %82)
  %84 = ptrtoint i8* %83 to i32
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %9, align 8
  store i32 %84, i32* %85, align 4
  %87 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %88 = call i32 @sg_dma_address(%struct.scatterlist* %87)
  %89 = load i32, i32* %11, align 4
  %90 = add i32 %88, %89
  %91 = call i8* @cpu_to_le32(i32 %90)
  %92 = ptrtoint i8* %91 to i32
  %93 = load i32*, i32** %9, align 8
  %94 = getelementptr inbounds i32, i32* %93, i32 1
  store i32* %94, i32** %9, align 8
  store i32 %92, i32* %93, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %11, align 4
  %97 = add i32 %96, %95
  store i32 %97, i32* %11, align 4
  br label %180

98:                                               ; preds = %72
  %99 = load i32, i32* %13, align 4
  store i32 %99, i32* %19, align 4
  %100 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %101 = call i32 @sg_dma_len(%struct.scatterlist* %100)
  %102 = load i32, i32* %11, align 4
  %103 = sub i32 %101, %102
  store i32 %103, i32* %20, align 4
  %104 = load i32, i32* @RISC_LINESTART, align 4
  %105 = or i32 %104, 117440512
  %106 = load i32, i32* %20, align 4
  %107 = or i32 %105, %106
  %108 = call i8* @cpu_to_le32(i32 %107)
  %109 = ptrtoint i8* %108 to i32
  %110 = load i32*, i32** %9, align 8
  %111 = getelementptr inbounds i32, i32* %110, i32 1
  store i32* %111, i32** %9, align 8
  store i32 %109, i32* %110, align 4
  %112 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %113 = call i32 @sg_dma_address(%struct.scatterlist* %112)
  %114 = load i32, i32* %11, align 4
  %115 = add i32 %113, %114
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %120 = load i32, i32* %20, align 4
  %121 = load i32, i32* %19, align 4
  %122 = sub i32 %121, %120
  store i32 %122, i32* %19, align 4
  %123 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %124 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %123)
  store %struct.scatterlist* %124, %struct.scatterlist** %17, align 8
  br label %125

125:                                              ; preds = %130, %98
  %126 = load i32, i32* %19, align 4
  %127 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %128 = call i32 @sg_dma_len(%struct.scatterlist* %127)
  %129 = icmp ugt i32 %126, %128
  br i1 %129, label %130, label %158

130:                                              ; preds = %125
  %131 = load i32, i32* @RISC_INLINE, align 4
  %132 = load i32, i32* %20, align 4
  %133 = shl i32 %132, 12
  %134 = or i32 %131, %133
  %135 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %136 = call i32 @sg_dma_len(%struct.scatterlist* %135)
  %137 = or i32 %134, %136
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32*, i32** %9, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %9, align 8
  store i32 %139, i32* %140, align 4
  %142 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %143 = call i32 @sg_dma_address(%struct.scatterlist* %142)
  %144 = call i8* @cpu_to_le32(i32 %143)
  %145 = ptrtoint i8* %144 to i32
  %146 = load i32*, i32** %9, align 8
  %147 = getelementptr inbounds i32, i32* %146, i32 1
  store i32* %147, i32** %9, align 8
  store i32 %145, i32* %146, align 4
  %148 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %149 = call i32 @sg_dma_len(%struct.scatterlist* %148)
  %150 = load i32, i32* %19, align 4
  %151 = sub i32 %150, %149
  store i32 %151, i32* %19, align 4
  %152 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %153 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %152)
  store %struct.scatterlist* %153, %struct.scatterlist** %17, align 8
  %154 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %155 = call i32 @sg_dma_len(%struct.scatterlist* %154)
  %156 = load i32, i32* %20, align 4
  %157 = add i32 %156, %155
  store i32 %157, i32* %20, align 4
  br label %125

158:                                              ; preds = %125
  %159 = load i32, i32* %19, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %178

161:                                              ; preds = %158
  %162 = load i32, i32* @RISC_INLINE, align 4
  %163 = load i32, i32* %20, align 4
  %164 = shl i32 %163, 12
  %165 = or i32 %162, %164
  %166 = load i32, i32* %19, align 4
  %167 = or i32 %165, %166
  %168 = call i8* @cpu_to_le32(i32 %167)
  %169 = ptrtoint i8* %168 to i32
  %170 = load i32*, i32** %9, align 8
  %171 = getelementptr inbounds i32, i32* %170, i32 1
  store i32* %171, i32** %9, align 8
  store i32 %169, i32* %170, align 4
  %172 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %173 = call i32 @sg_dma_address(%struct.scatterlist* %172)
  %174 = call i8* @cpu_to_le32(i32 %173)
  %175 = ptrtoint i8* %174 to i32
  %176 = load i32*, i32** %9, align 8
  %177 = getelementptr inbounds i32, i32* %176, i32 1
  store i32* %177, i32** %9, align 8
  store i32 %175, i32* %176, align 4
  br label %178

178:                                              ; preds = %161, %158
  %179 = load i32, i32* %19, align 4
  store i32 %179, i32* %11, align 4
  br label %180

180:                                              ; preds = %178, %79
  %181 = load i32, i32* %14, align 4
  %182 = load i32, i32* %11, align 4
  %183 = add i32 %182, %181
  store i32 %183, i32* %11, align 4
  br label %184

184:                                              ; preds = %180
  %185 = load i32, i32* %18, align 4
  %186 = add i32 %185, 1
  store i32 %186, i32* %18, align 4
  br label %50

187:                                              ; preds = %50
  %188 = load i32*, i32** %9, align 8
  ret i32* %188
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @sg_dma_len(%struct.scatterlist*) #1

declare dso_local %struct.scatterlist* @sg_next(%struct.scatterlist*) #1

declare dso_local i32 @sg_dma_address(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
