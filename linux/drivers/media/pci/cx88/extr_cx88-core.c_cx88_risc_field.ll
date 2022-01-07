; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_risc_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx88/extr_cx88-core.c_cx88_risc_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scatterlist = type { i32 }

@RISC_JUMP = common dso_local global i32 0, align 4
@NO_SYNC_LINE = common dso_local global i32 0, align 4
@RISC_RESYNC = common dso_local global i32 0, align 4
@RISC_SOL = common dso_local global i32 0, align 4
@RISC_IRQ1 = common dso_local global i32 0, align 4
@RISC_CNT_INC = common dso_local global i32 0, align 4
@RISC_WRITE = common dso_local global i32 0, align 4
@RISC_EOL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32, i32)* @cx88_risc_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cx88_risc_field(i32* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32*, align 8
  %11 = alloca %struct.scatterlist*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.scatterlist*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %10, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %23 = load i32, i32* %18, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %9
  %26 = load i32, i32* @RISC_JUMP, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i32 1
  store i32* %32, i32** %10, align 8
  store i32 0, i32* %31, align 4
  br label %33

33:                                               ; preds = %25, %9
  %34 = load i32, i32* %13, align 4
  %35 = load i32, i32* @NO_SYNC_LINE, align 4
  %36 = icmp ne i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %33
  %38 = load i32, i32* @RISC_RESYNC, align 4
  %39 = load i32, i32* %13, align 4
  %40 = or i32 %38, %39
  %41 = call i8* @cpu_to_le32(i32 %40)
  %42 = ptrtoint i8* %41 to i32
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 1
  store i32* %44, i32** %10, align 8
  store i32 %42, i32* %43, align 4
  br label %45

45:                                               ; preds = %37, %33
  %46 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %46, %struct.scatterlist** %19, align 8
  store i32 0, i32* %20, align 4
  br label %47

47:                                               ; preds = %197, %45
  %48 = load i32, i32* %20, align 4
  %49 = load i32, i32* %16, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %200

51:                                               ; preds = %47
  br label %52

52:                                               ; preds = %62, %51
  %53 = load i32, i32* %12, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %52
  %56 = load i32, i32* %12, align 4
  %57 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %58 = call i32 @sg_dma_len(%struct.scatterlist* %57)
  %59 = icmp uge i32 %56, %58
  br label %60

60:                                               ; preds = %55, %52
  %61 = phi i1 [ false, %52 ], [ %59, %55 ]
  br i1 %61, label %62, label %69

62:                                               ; preds = %60
  %63 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %64 = call i32 @sg_dma_len(%struct.scatterlist* %63)
  %65 = load i32, i32* %12, align 4
  %66 = sub i32 %65, %64
  store i32 %66, i32* %12, align 4
  %67 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %68 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %67)
  store %struct.scatterlist* %68, %struct.scatterlist** %19, align 8
  br label %52

69:                                               ; preds = %60
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %86

72:                                               ; preds = %69
  %73 = load i32, i32* %20, align 4
  %74 = icmp ugt i32 %73, 0
  br i1 %74, label %75, label %86

75:                                               ; preds = %72
  %76 = load i32, i32* %20, align 4
  %77 = load i32, i32* %17, align 4
  %78 = urem i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* @RISC_SOL, align 4
  %82 = load i32, i32* @RISC_IRQ1, align 4
  %83 = or i32 %81, %82
  %84 = load i32, i32* @RISC_CNT_INC, align 4
  %85 = or i32 %83, %84
  store i32 %85, i32* %22, align 4
  br label %88

86:                                               ; preds = %75, %72, %69
  %87 = load i32, i32* @RISC_SOL, align 4
  store i32 %87, i32* %22, align 4
  br label %88

88:                                               ; preds = %86, %80
  %89 = load i32, i32* %14, align 4
  %90 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %91 = call i32 @sg_dma_len(%struct.scatterlist* %90)
  %92 = load i32, i32* %12, align 4
  %93 = sub i32 %91, %92
  %94 = icmp ule i32 %89, %93
  br i1 %94, label %95, label %118

95:                                               ; preds = %88
  %96 = load i32, i32* @RISC_WRITE, align 4
  %97 = load i32, i32* %22, align 4
  %98 = or i32 %96, %97
  %99 = load i32, i32* @RISC_EOL, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* %14, align 4
  %102 = or i32 %100, %101
  %103 = call i8* @cpu_to_le32(i32 %102)
  %104 = ptrtoint i8* %103 to i32
  %105 = load i32*, i32** %10, align 8
  %106 = getelementptr inbounds i32, i32* %105, i32 1
  store i32* %106, i32** %10, align 8
  store i32 %104, i32* %105, align 4
  %107 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %108 = call i32 @sg_dma_address(%struct.scatterlist* %107)
  %109 = load i32, i32* %12, align 4
  %110 = add i32 %108, %109
  %111 = call i8* @cpu_to_le32(i32 %110)
  %112 = ptrtoint i8* %111 to i32
  %113 = load i32*, i32** %10, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %10, align 8
  store i32 %112, i32* %113, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %12, align 4
  %117 = add i32 %116, %115
  store i32 %117, i32* %12, align 4
  br label %193

118:                                              ; preds = %88
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %21, align 4
  %120 = load i32, i32* @RISC_WRITE, align 4
  %121 = load i32, i32* %22, align 4
  %122 = or i32 %120, %121
  %123 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %124 = call i32 @sg_dma_len(%struct.scatterlist* %123)
  %125 = load i32, i32* %12, align 4
  %126 = sub i32 %124, %125
  %127 = or i32 %122, %126
  %128 = call i8* @cpu_to_le32(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  %130 = load i32*, i32** %10, align 8
  %131 = getelementptr inbounds i32, i32* %130, i32 1
  store i32* %131, i32** %10, align 8
  store i32 %129, i32* %130, align 4
  %132 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %133 = call i32 @sg_dma_address(%struct.scatterlist* %132)
  %134 = load i32, i32* %12, align 4
  %135 = add i32 %133, %134
  %136 = call i8* @cpu_to_le32(i32 %135)
  %137 = ptrtoint i8* %136 to i32
  %138 = load i32*, i32** %10, align 8
  %139 = getelementptr inbounds i32, i32* %138, i32 1
  store i32* %139, i32** %10, align 8
  store i32 %137, i32* %138, align 4
  %140 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %141 = call i32 @sg_dma_len(%struct.scatterlist* %140)
  %142 = load i32, i32* %12, align 4
  %143 = sub i32 %141, %142
  %144 = load i32, i32* %21, align 4
  %145 = sub i32 %144, %143
  store i32 %145, i32* %21, align 4
  store i32 0, i32* %12, align 4
  %146 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %147 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %146)
  store %struct.scatterlist* %147, %struct.scatterlist** %19, align 8
  br label %148

148:                                              ; preds = %153, %118
  %149 = load i32, i32* %21, align 4
  %150 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %151 = call i32 @sg_dma_len(%struct.scatterlist* %150)
  %152 = icmp ugt i32 %149, %151
  br i1 %152, label %153, label %174

153:                                              ; preds = %148
  %154 = load i32, i32* @RISC_WRITE, align 4
  %155 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %156 = call i32 @sg_dma_len(%struct.scatterlist* %155)
  %157 = or i32 %154, %156
  %158 = call i8* @cpu_to_le32(i32 %157)
  %159 = ptrtoint i8* %158 to i32
  %160 = load i32*, i32** %10, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %10, align 8
  store i32 %159, i32* %160, align 4
  %162 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %163 = call i32 @sg_dma_address(%struct.scatterlist* %162)
  %164 = call i8* @cpu_to_le32(i32 %163)
  %165 = ptrtoint i8* %164 to i32
  %166 = load i32*, i32** %10, align 8
  %167 = getelementptr inbounds i32, i32* %166, i32 1
  store i32* %167, i32** %10, align 8
  store i32 %165, i32* %166, align 4
  %168 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %169 = call i32 @sg_dma_len(%struct.scatterlist* %168)
  %170 = load i32, i32* %21, align 4
  %171 = sub i32 %170, %169
  store i32 %171, i32* %21, align 4
  %172 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %173 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %172)
  store %struct.scatterlist* %173, %struct.scatterlist** %19, align 8
  br label %148

174:                                              ; preds = %148
  %175 = load i32, i32* @RISC_WRITE, align 4
  %176 = load i32, i32* @RISC_EOL, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* %21, align 4
  %179 = or i32 %177, %178
  %180 = call i8* @cpu_to_le32(i32 %179)
  %181 = ptrtoint i8* %180 to i32
  %182 = load i32*, i32** %10, align 8
  %183 = getelementptr inbounds i32, i32* %182, i32 1
  store i32* %183, i32** %10, align 8
  store i32 %181, i32* %182, align 4
  %184 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %185 = call i32 @sg_dma_address(%struct.scatterlist* %184)
  %186 = call i8* @cpu_to_le32(i32 %185)
  %187 = ptrtoint i8* %186 to i32
  %188 = load i32*, i32** %10, align 8
  %189 = getelementptr inbounds i32, i32* %188, i32 1
  store i32* %189, i32** %10, align 8
  store i32 %187, i32* %188, align 4
  %190 = load i32, i32* %21, align 4
  %191 = load i32, i32* %12, align 4
  %192 = add i32 %191, %190
  store i32 %192, i32* %12, align 4
  br label %193

193:                                              ; preds = %174, %95
  %194 = load i32, i32* %15, align 4
  %195 = load i32, i32* %12, align 4
  %196 = add i32 %195, %194
  store i32 %196, i32* %12, align 4
  br label %197

197:                                              ; preds = %193
  %198 = load i32, i32* %20, align 4
  %199 = add i32 %198, 1
  store i32 %199, i32* %20, align 4
  br label %47

200:                                              ; preds = %47
  %201 = load i32*, i32** %10, align 8
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
