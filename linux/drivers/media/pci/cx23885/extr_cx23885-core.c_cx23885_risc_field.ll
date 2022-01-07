; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_risc_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/cx23885/extr_cx23885-core.c_cx23885_risc_field.c"
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.scatterlist*, i32, i32, i32, i32, i32, i32, i32)* @cx23885_risc_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @cx23885_risc_field(i32* %0, %struct.scatterlist* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
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
  br i1 %24, label %25, label %39

25:                                               ; preds = %9
  %26 = load i32, i32* @RISC_JUMP, align 4
  %27 = call i8* @cpu_to_le32(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i32 1
  store i32* %30, i32** %10, align 8
  store i32 %28, i32* %29, align 4
  %31 = call i8* @cpu_to_le32(i32 0)
  %32 = ptrtoint i8* %31 to i32
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %10, align 8
  store i32 %32, i32* %33, align 4
  %35 = call i8* @cpu_to_le32(i32 0)
  %36 = ptrtoint i8* %35 to i32
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i32 1
  store i32* %38, i32** %10, align 8
  store i32 %36, i32* %37, align 4
  br label %39

39:                                               ; preds = %25, %9
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* @NO_SYNC_LINE, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load i32, i32* @RISC_RESYNC, align 4
  %45 = load i32, i32* %13, align 4
  %46 = or i32 %44, %45
  %47 = call i8* @cpu_to_le32(i32 %46)
  %48 = ptrtoint i8* %47 to i32
  %49 = load i32*, i32** %10, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %10, align 8
  store i32 %48, i32* %49, align 4
  br label %51

51:                                               ; preds = %43, %39
  %52 = load %struct.scatterlist*, %struct.scatterlist** %11, align 8
  store %struct.scatterlist* %52, %struct.scatterlist** %19, align 8
  store i32 0, i32* %20, align 4
  br label %53

53:                                               ; preds = %219, %51
  %54 = load i32, i32* %20, align 4
  %55 = load i32, i32* %16, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %222

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %68, %57
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %58
  %62 = load i32, i32* %12, align 4
  %63 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %64 = call i32 @sg_dma_len(%struct.scatterlist* %63)
  %65 = icmp uge i32 %62, %64
  br label %66

66:                                               ; preds = %61, %58
  %67 = phi i1 [ false, %58 ], [ %65, %61 ]
  br i1 %67, label %68, label %75

68:                                               ; preds = %66
  %69 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %70 = call i32 @sg_dma_len(%struct.scatterlist* %69)
  %71 = load i32, i32* %12, align 4
  %72 = sub i32 %71, %70
  store i32 %72, i32* %12, align 4
  %73 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %74 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %73)
  store %struct.scatterlist* %74, %struct.scatterlist** %19, align 8
  br label %58

75:                                               ; preds = %66
  %76 = load i32, i32* %17, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %92

78:                                               ; preds = %75
  %79 = load i32, i32* %20, align 4
  %80 = icmp ugt i32 %79, 0
  br i1 %80, label %81, label %92

81:                                               ; preds = %78
  %82 = load i32, i32* %20, align 4
  %83 = load i32, i32* %17, align 4
  %84 = urem i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %92, label %86

86:                                               ; preds = %81
  %87 = load i32, i32* @RISC_SOL, align 4
  %88 = load i32, i32* @RISC_IRQ1, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @RISC_CNT_INC, align 4
  %91 = or i32 %89, %90
  store i32 %91, i32* %22, align 4
  br label %94

92:                                               ; preds = %81, %78, %75
  %93 = load i32, i32* @RISC_SOL, align 4
  store i32 %93, i32* %22, align 4
  br label %94

94:                                               ; preds = %92, %86
  %95 = load i32, i32* %14, align 4
  %96 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %97 = call i32 @sg_dma_len(%struct.scatterlist* %96)
  %98 = load i32, i32* %12, align 4
  %99 = sub i32 %97, %98
  %100 = icmp ule i32 %95, %99
  br i1 %100, label %101, label %128

101:                                              ; preds = %94
  %102 = load i32, i32* @RISC_WRITE, align 4
  %103 = load i32, i32* %22, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @RISC_EOL, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* %14, align 4
  %108 = or i32 %106, %107
  %109 = call i8* @cpu_to_le32(i32 %108)
  %110 = ptrtoint i8* %109 to i32
  %111 = load i32*, i32** %10, align 8
  %112 = getelementptr inbounds i32, i32* %111, i32 1
  store i32* %112, i32** %10, align 8
  store i32 %110, i32* %111, align 4
  %113 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %114 = call i32 @sg_dma_address(%struct.scatterlist* %113)
  %115 = load i32, i32* %12, align 4
  %116 = add i32 %114, %115
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = ptrtoint i8* %117 to i32
  %119 = load i32*, i32** %10, align 8
  %120 = getelementptr inbounds i32, i32* %119, i32 1
  store i32* %120, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  %121 = call i8* @cpu_to_le32(i32 0)
  %122 = ptrtoint i8* %121 to i32
  %123 = load i32*, i32** %10, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %10, align 8
  store i32 %122, i32* %123, align 4
  %125 = load i32, i32* %14, align 4
  %126 = load i32, i32* %12, align 4
  %127 = add i32 %126, %125
  store i32 %127, i32* %12, align 4
  br label %215

128:                                              ; preds = %94
  %129 = load i32, i32* %14, align 4
  store i32 %129, i32* %21, align 4
  %130 = load i32, i32* @RISC_WRITE, align 4
  %131 = load i32, i32* %22, align 4
  %132 = or i32 %130, %131
  %133 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %134 = call i32 @sg_dma_len(%struct.scatterlist* %133)
  %135 = load i32, i32* %12, align 4
  %136 = sub i32 %134, %135
  %137 = or i32 %132, %136
  %138 = call i8* @cpu_to_le32(i32 %137)
  %139 = ptrtoint i8* %138 to i32
  %140 = load i32*, i32** %10, align 8
  %141 = getelementptr inbounds i32, i32* %140, i32 1
  store i32* %141, i32** %10, align 8
  store i32 %139, i32* %140, align 4
  %142 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %143 = call i32 @sg_dma_address(%struct.scatterlist* %142)
  %144 = load i32, i32* %12, align 4
  %145 = add i32 %143, %144
  %146 = call i8* @cpu_to_le32(i32 %145)
  %147 = ptrtoint i8* %146 to i32
  %148 = load i32*, i32** %10, align 8
  %149 = getelementptr inbounds i32, i32* %148, i32 1
  store i32* %149, i32** %10, align 8
  store i32 %147, i32* %148, align 4
  %150 = call i8* @cpu_to_le32(i32 0)
  %151 = ptrtoint i8* %150 to i32
  %152 = load i32*, i32** %10, align 8
  %153 = getelementptr inbounds i32, i32* %152, i32 1
  store i32* %153, i32** %10, align 8
  store i32 %151, i32* %152, align 4
  %154 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %155 = call i32 @sg_dma_len(%struct.scatterlist* %154)
  %156 = load i32, i32* %12, align 4
  %157 = sub i32 %155, %156
  %158 = load i32, i32* %21, align 4
  %159 = sub i32 %158, %157
  store i32 %159, i32* %21, align 4
  store i32 0, i32* %12, align 4
  %160 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %161 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %160)
  store %struct.scatterlist* %161, %struct.scatterlist** %19, align 8
  br label %162

162:                                              ; preds = %167, %128
  %163 = load i32, i32* %21, align 4
  %164 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %165 = call i32 @sg_dma_len(%struct.scatterlist* %164)
  %166 = icmp ugt i32 %163, %165
  br i1 %166, label %167, label %192

167:                                              ; preds = %162
  %168 = load i32, i32* @RISC_WRITE, align 4
  %169 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %170 = call i32 @sg_dma_len(%struct.scatterlist* %169)
  %171 = or i32 %168, %170
  %172 = call i8* @cpu_to_le32(i32 %171)
  %173 = ptrtoint i8* %172 to i32
  %174 = load i32*, i32** %10, align 8
  %175 = getelementptr inbounds i32, i32* %174, i32 1
  store i32* %175, i32** %10, align 8
  store i32 %173, i32* %174, align 4
  %176 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %177 = call i32 @sg_dma_address(%struct.scatterlist* %176)
  %178 = call i8* @cpu_to_le32(i32 %177)
  %179 = ptrtoint i8* %178 to i32
  %180 = load i32*, i32** %10, align 8
  %181 = getelementptr inbounds i32, i32* %180, i32 1
  store i32* %181, i32** %10, align 8
  store i32 %179, i32* %180, align 4
  %182 = call i8* @cpu_to_le32(i32 0)
  %183 = ptrtoint i8* %182 to i32
  %184 = load i32*, i32** %10, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %10, align 8
  store i32 %183, i32* %184, align 4
  %186 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %187 = call i32 @sg_dma_len(%struct.scatterlist* %186)
  %188 = load i32, i32* %21, align 4
  %189 = sub i32 %188, %187
  store i32 %189, i32* %21, align 4
  %190 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %191 = call %struct.scatterlist* @sg_next(%struct.scatterlist* %190)
  store %struct.scatterlist* %191, %struct.scatterlist** %19, align 8
  br label %162

192:                                              ; preds = %162
  %193 = load i32, i32* @RISC_WRITE, align 4
  %194 = load i32, i32* @RISC_EOL, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* %21, align 4
  %197 = or i32 %195, %196
  %198 = call i8* @cpu_to_le32(i32 %197)
  %199 = ptrtoint i8* %198 to i32
  %200 = load i32*, i32** %10, align 8
  %201 = getelementptr inbounds i32, i32* %200, i32 1
  store i32* %201, i32** %10, align 8
  store i32 %199, i32* %200, align 4
  %202 = load %struct.scatterlist*, %struct.scatterlist** %19, align 8
  %203 = call i32 @sg_dma_address(%struct.scatterlist* %202)
  %204 = call i8* @cpu_to_le32(i32 %203)
  %205 = ptrtoint i8* %204 to i32
  %206 = load i32*, i32** %10, align 8
  %207 = getelementptr inbounds i32, i32* %206, i32 1
  store i32* %207, i32** %10, align 8
  store i32 %205, i32* %206, align 4
  %208 = call i8* @cpu_to_le32(i32 0)
  %209 = ptrtoint i8* %208 to i32
  %210 = load i32*, i32** %10, align 8
  %211 = getelementptr inbounds i32, i32* %210, i32 1
  store i32* %211, i32** %10, align 8
  store i32 %209, i32* %210, align 4
  %212 = load i32, i32* %21, align 4
  %213 = load i32, i32* %12, align 4
  %214 = add i32 %213, %212
  store i32 %214, i32* %12, align 4
  br label %215

215:                                              ; preds = %192, %101
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %12, align 4
  %218 = add i32 %217, %216
  store i32 %218, i32* %12, align 4
  br label %219

219:                                              ; preds = %215
  %220 = load i32, i32* %20, align 4
  %221 = add i32 %220, 1
  store i32 %221, i32* %20, align 4
  br label %53

222:                                              ; preds = %53
  %223 = load i32*, i32** %10, align 8
  ret i32* %223
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
