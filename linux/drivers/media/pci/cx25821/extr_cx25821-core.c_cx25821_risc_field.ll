; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_risc_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx25821/extr_cx25821-core.c_cx25821_risc_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@RISC_JUMP = common dso_local global i32 0, align 4
@NO_SYNC_LINE = common dso_local global i32 0, align 4
@RISC_RESYNC = common dso_local global i32 0, align 4
@RISC_WRITE = common dso_local global i32 0, align 4
@RISC_SOL = common dso_local global i32 0, align 4
@RISC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32)* @cx25821_risc_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cx25821_risc_field(i32* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
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
  store i32* %0, i32** %9, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %10, align 8
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  %20 = load i32, i32* %16, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %8
  %23 = load i32, i32* @RISC_JUMP, align 4
  %24 = call i8* @cpu_to_le32(i32 %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %9, align 8
  store i32 %25, i32* %26, align 4
  %28 = call i8* @cpu_to_le32(i32 0)
  %29 = ptrtoint i8* %28 to i32
  %30 = load i32*, i32** %9, align 8
  %31 = getelementptr inbounds i32, i32* %30, i32 1
  store i32* %31, i32** %9, align 8
  store i32 %29, i32* %30, align 4
  %32 = call i8* @cpu_to_le32(i32 0)
  %33 = ptrtoint i8* %32 to i32
  %34 = load i32*, i32** %9, align 8
  %35 = getelementptr inbounds i32, i32* %34, i32 1
  store i32* %35, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  br label %36

36:                                               ; preds = %22, %8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @NO_SYNC_LINE, align 4
  %39 = icmp ne i32 %37, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %36
  %41 = load i32, i32* @RISC_RESYNC, align 4
  %42 = load i32, i32* %12, align 4
  %43 = or i32 %41, %42
  %44 = call i8* @cpu_to_le32(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load i32*, i32** %9, align 8
  %47 = getelementptr inbounds i32, i32* %46, i32 1
  store i32* %47, i32** %9, align 8
  store i32 %45, i32* %46, align 4
  br label %48

48:                                               ; preds = %40, %36
  %49 = load %struct.scatterlist*, %struct.scatterlist** %10, align 8
  store %struct.scatterlist* %49, %struct.scatterlist** %17, align 8
  store i32 0, i32* %18, align 4
  br label %50

50:                                               ; preds = %197, %48
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %15, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %200

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
  br i1 %78, label %79, label %106

79:                                               ; preds = %72
  %80 = load i32, i32* @RISC_WRITE, align 4
  %81 = load i32, i32* @RISC_SOL, align 4
  %82 = or i32 %80, %81
  %83 = load i32, i32* @RISC_EOL, align 4
  %84 = or i32 %82, %83
  %85 = load i32, i32* %13, align 4
  %86 = or i32 %84, %85
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  %89 = load i32*, i32** %9, align 8
  %90 = getelementptr inbounds i32, i32* %89, i32 1
  store i32* %90, i32** %9, align 8
  store i32 %88, i32* %89, align 4
  %91 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %92 = call i32 @sg_dma_address(%struct.scatterlist* %91)
  %93 = load i32, i32* %11, align 4
  %94 = add i32 %92, %93
  %95 = call i8* @cpu_to_le32(i32 %94)
  %96 = ptrtoint i8* %95 to i32
  %97 = load i32*, i32** %9, align 8
  %98 = getelementptr inbounds i32, i32* %97, i32 1
  store i32* %98, i32** %9, align 8
  store i32 %96, i32* %97, align 4
  %99 = call i8* @cpu_to_le32(i32 0)
  %100 = ptrtoint i8* %99 to i32
  %101 = load i32*, i32** %9, align 8
  %102 = getelementptr inbounds i32, i32* %101, i32 1
  store i32* %102, i32** %9, align 8
  store i32 %100, i32* %101, align 4
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %11, align 4
  %105 = add i32 %104, %103
  store i32 %105, i32* %11, align 4
  br label %193

106:                                              ; preds = %72
  %107 = load i32, i32* %13, align 4
  store i32 %107, i32* %19, align 4
  %108 = load i32, i32* @RISC_WRITE, align 4
  %109 = load i32, i32* @RISC_SOL, align 4
  %110 = or i32 %108, %109
  %111 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %112 = call i32 @sg_dma_len(%struct.scatterlist* %111)
  %113 = load i32, i32* %11, align 4
  %114 = sub i32 %112, %113
  %115 = or i32 %110, %114
  %116 = call i8* @cpu_to_le32(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load i32*, i32** %9, align 8
  %119 = getelementptr inbounds i32, i32* %118, i32 1
  store i32* %119, i32** %9, align 8
  store i32 %117, i32* %118, align 4
  %120 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %121 = call i32 @sg_dma_address(%struct.scatterlist* %120)
  %122 = load i32, i32* %11, align 4
  %123 = add i32 %121, %122
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = ptrtoint i8* %124 to i32
  %126 = load i32*, i32** %9, align 8
  %127 = getelementptr inbounds i32, i32* %126, i32 1
  store i32* %127, i32** %9, align 8
  store i32 %125, i32* %126, align 4
  %128 = call i8* @cpu_to_le32(i32 0)
  %129 = ptrtoint i8* %128 to i32
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %9, align 8
  store i32 %129, i32* %130, align 4
  %132 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %133 = call i32 @sg_dma_len(%struct.scatterlist* %132)
  %134 = load i32, i32* %11, align 4
  %135 = sub i32 %133, %134
  %136 = load i32, i32* %19, align 4
  %137 = sub i32 %136, %135
  store i32 %137, i32* %19, align 4
  store i32 0, i32* %11, align 4
  %138 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %139 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %138)
  store %struct.scatterlist* %139, %struct.scatterlist** %17, align 8
  br label %140

140:                                              ; preds = %145, %106
  %141 = load i32, i32* %19, align 4
  %142 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %143 = call i32 @sg_dma_len(%struct.scatterlist* %142)
  %144 = icmp ugt i32 %141, %143
  br i1 %144, label %145, label %170

145:                                              ; preds = %140
  %146 = load i32, i32* @RISC_WRITE, align 4
  %147 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %148 = call i32 @sg_dma_len(%struct.scatterlist* %147)
  %149 = or i32 %146, %148
  %150 = call i8* @cpu_to_le32(i32 %149)
  %151 = ptrtoint i8* %150 to i32
  %152 = load i32*, i32** %9, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  %154 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %155 = call i32 @sg_dma_address(%struct.scatterlist* %154)
  %156 = call i8* @cpu_to_le32(i32 %155)
  %157 = ptrtoint i8* %156 to i32
  %158 = load i32*, i32** %9, align 8
  %159 = getelementptr inbounds i32, i32* %158, i32 1
  store i32* %159, i32** %9, align 8
  store i32 %157, i32* %158, align 4
  %160 = call i8* @cpu_to_le32(i32 0)
  %161 = ptrtoint i8* %160 to i32
  %162 = load i32*, i32** %9, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 1
  store i32* %163, i32** %9, align 8
  store i32 %161, i32* %162, align 4
  %164 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %165 = call i32 @sg_dma_len(%struct.scatterlist* %164)
  %166 = load i32, i32* %19, align 4
  %167 = sub i32 %166, %165
  store i32 %167, i32* %19, align 4
  %168 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %169 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %168)
  store %struct.scatterlist* %169, %struct.scatterlist** %17, align 8
  br label %140

170:                                              ; preds = %140
  %171 = load i32, i32* @RISC_WRITE, align 4
  %172 = load i32, i32* @RISC_EOL, align 4
  %173 = or i32 %171, %172
  %174 = load i32, i32* %19, align 4
  %175 = or i32 %173, %174
  %176 = call i8* @cpu_to_le32(i32 %175)
  %177 = ptrtoint i8* %176 to i32
  %178 = load i32*, i32** %9, align 8
  %179 = getelementptr inbounds i32, i32* %178, i32 1
  store i32* %179, i32** %9, align 8
  store i32 %177, i32* %178, align 4
  %180 = load %struct.scatterlist*, %struct.scatterlist** %17, align 8
  %181 = call i32 @sg_dma_address(%struct.scatterlist* %180)
  %182 = call i8* @cpu_to_le32(i32 %181)
  %183 = ptrtoint i8* %182 to i32
  %184 = load i32*, i32** %9, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %9, align 8
  store i32 %183, i32* %184, align 4
  %186 = call i8* @cpu_to_le32(i32 0)
  %187 = ptrtoint i8* %186 to i32
  %188 = load i32*, i32** %9, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %9, align 8
  store i32 %187, i32* %188, align 4
  %190 = load i32, i32* %19, align 4
  %191 = load i32, i32* %11, align 4
  %192 = add i32 %191, %190
  store i32 %192, i32* %11, align 4
  br label %193

193:                                              ; preds = %170, %79
  %194 = load i32, i32* %14, align 4
  %195 = load i32, i32* %11, align 4
  %196 = add i32 %195, %194
  store i32 %196, i32* %11, align 4
  br label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %18, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %18, align 4
  br label %50

200:                                              ; preds = %50
  %201 = load i32*, i32** %9, align 8
  ret i32* %201
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
