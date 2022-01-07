; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c__mic_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_boot.c__mic_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cosm_device = type { i32 }
%struct.mic_device = type { i32, i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_6__*, i32*, i32, %struct.TYPE_5__*, i32, i32, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { i32 (%struct.mic_device*, i32*)*, i32 (%struct.mic_device*)*, i32 (%struct.mic_device*, i32, i32)* }
%struct.TYPE_6__ = type { i32 (%struct.mic_device*)* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_8__ = type { i32 }

@MBUS_DEV_DMA_HOST = common dso_local global i32 0, align 4
@mic_dma_ops = common dso_local global i32 0, align 4
@mbus_hw_ops = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@MIC_SCIF_DEV = common dso_local global i32 0, align 4
@__mic_dma_ops = common dso_local global i32 0, align 4
@scif_hw_ops = common dso_local global i32 0, align 4
@VOP_DEV_TRNSP = common dso_local global i32 0, align 4
@_mic_dma_ops = common dso_local global i32 0, align 4
@vop_hw_ops = common dso_local global i32 0, align 4
@MIC_DPLO_SPAD = common dso_local global i32 0, align 4
@MIC_DPHI_SPAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cosm_device*, i32)* @_mic_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_mic_start(%struct.cosm_device* %0, i32 %1) #0 {
  %3 = alloca %struct.cosm_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mic_device*, align 8
  %6 = alloca i32, align 4
  store %struct.cosm_device* %0, %struct.cosm_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.cosm_device*, %struct.cosm_device** %3, align 8
  %8 = call %struct.mic_device* @cosmdev_to_mdev(%struct.cosm_device* %7)
  store %struct.mic_device* %8, %struct.mic_device** %5, align 8
  %9 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %10 = call i32 @mic_bootparam_init(%struct.mic_device* %9)
  %11 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %12 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %11, i32 0, i32 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  %15 = load i32, i32* @MBUS_DEV_DMA_HOST, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %18 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %17, i32 0, i32 11
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mbus_register_device(i32* %14, i32 %15, i32* @mic_dma_ops, i32* @mbus_hw_ops, i32 %16, i32 %20)
  %22 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %23 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %25 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @IS_ERR(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %2
  %30 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %31 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @PTR_ERR(i32 %32)
  store i32 %33, i32* %6, align 4
  br label %174

34:                                               ; preds = %2
  %35 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %36 = call i32 @mic_request_dma_chans(%struct.mic_device* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %169

41:                                               ; preds = %34
  %42 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %43 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %42, i32 0, i32 8
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* @MIC_SCIF_DEV, align 4
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 1
  %49 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %50 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %49, i32 0, i32 11
  %51 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %52 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %51, i32 0, i32 7
  %53 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %54 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %57 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %56, i32 0, i32 6
  %58 = load i32*, i32** %57, align 8
  %59 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %60 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %59, i32 0, i32 9
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @scif_register_device(i32* %45, i32 %46, i32* @__mic_dma_ops, i32* @scif_hw_ops, i32 %48, i32 0, %struct.TYPE_8__* %50, i32* %52, i32 %55, i32* null, i32* %58, i32 %61, i32 1)
  %63 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %64 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %63, i32 0, i32 2
  store i32 %62, i32* %64, align 8
  %65 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %66 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @IS_ERR(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %41
  %71 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %72 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @PTR_ERR(i32 %73)
  store i32 %74, i32* %6, align 4
  br label %166

75:                                               ; preds = %41
  %76 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %77 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %76, i32 0, i32 8
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = load i32, i32* @VOP_DEV_TRNSP, align 4
  %81 = load i32, i32* %4, align 4
  %82 = add nsw i32 %81, 1
  %83 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %84 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %83, i32 0, i32 7
  %85 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %86 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @vop_register_device(i32* %79, i32 %80, i32* @_mic_dma_ops, i32* @vop_hw_ops, i32 %82, i32* %84, i32 %89)
  %91 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %92 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %94 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @IS_ERR(i32 %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %75
  %99 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %100 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @PTR_ERR(i32 %101)
  store i32 %102, i32* %6, align 4
  br label %161

103:                                              ; preds = %75
  %104 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %105 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %104, i32 0, i32 4
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32 (%struct.mic_device*, i32*)*, i32 (%struct.mic_device*, i32*)** %107, align 8
  %109 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %110 = call i32 %108(%struct.mic_device* %109, i32* null)
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %103
  br label %156

114:                                              ; preds = %103
  %115 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %116 = call i32 @mic_smpt_restore(%struct.mic_device* %115)
  %117 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %118 = call i32 @mic_intr_restore(%struct.mic_device* %117)
  %119 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %120 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %119, i32 0, i32 5
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32 (%struct.mic_device*)*, i32 (%struct.mic_device*)** %122, align 8
  %124 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %125 = call i32 %123(%struct.mic_device* %124)
  %126 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %127 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %126, i32 0, i32 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 2
  %130 = load i32 (%struct.mic_device*, i32, i32)*, i32 (%struct.mic_device*, i32, i32)** %129, align 8
  %131 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %132 = load i32, i32* @MIC_DPLO_SPAD, align 4
  %133 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %134 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 %130(%struct.mic_device* %131, i32 %132, i32 %135)
  %137 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %138 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %137, i32 0, i32 4
  %139 = load %struct.TYPE_7__*, %struct.TYPE_7__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 2
  %141 = load i32 (%struct.mic_device*, i32, i32)*, i32 (%struct.mic_device*, i32, i32)** %140, align 8
  %142 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %143 = load i32, i32* @MIC_DPHI_SPAD, align 4
  %144 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %145 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = ashr i32 %146, 32
  %148 = call i32 %141(%struct.mic_device* %142, i32 %143, i32 %147)
  %149 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %150 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %149, i32 0, i32 4
  %151 = load %struct.TYPE_7__*, %struct.TYPE_7__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 1
  %153 = load i32 (%struct.mic_device*)*, i32 (%struct.mic_device*)** %152, align 8
  %154 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %155 = call i32 %153(%struct.mic_device* %154)
  br label %174

156:                                              ; preds = %113
  %157 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %158 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @vop_unregister_device(i32 %159)
  br label %161

161:                                              ; preds = %156, %98
  %162 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %163 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @scif_unregister_device(i32 %164)
  br label %166

166:                                              ; preds = %161, %70
  %167 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %168 = call i32 @mic_free_dma_chans(%struct.mic_device* %167)
  br label %169

169:                                              ; preds = %166, %38
  %170 = load %struct.mic_device*, %struct.mic_device** %5, align 8
  %171 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @mbus_unregister_device(i32 %172)
  br label %174

174:                                              ; preds = %169, %114, %29
  %175 = load i32, i32* %6, align 4
  ret i32 %175
}

declare dso_local %struct.mic_device* @cosmdev_to_mdev(%struct.cosm_device*) #1

declare dso_local i32 @mic_bootparam_init(%struct.mic_device*) #1

declare dso_local i32 @mbus_register_device(i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i64 @IS_ERR(i32) #1

declare dso_local i32 @PTR_ERR(i32) #1

declare dso_local i32 @mic_request_dma_chans(%struct.mic_device*) #1

declare dso_local i32 @scif_register_device(i32*, i32, i32*, i32*, i32, i32, %struct.TYPE_8__*, i32*, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @vop_register_device(i32*, i32, i32*, i32*, i32, i32*, i32) #1

declare dso_local i32 @mic_smpt_restore(%struct.mic_device*) #1

declare dso_local i32 @mic_intr_restore(%struct.mic_device*) #1

declare dso_local i32 @vop_unregister_device(i32) #1

declare dso_local i32 @scif_unregister_device(i32) #1

declare dso_local i32 @mic_free_dma_chans(%struct.mic_device*) #1

declare dso_local i32 @mbus_unregister_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
