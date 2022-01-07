; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_request_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/host/extr_mic_intr.c_mic_request_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mic_irq = type { i32 }
%struct.mic_device = type { %struct.pci_dev*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.pci_dev = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.mic_device*, i64, i64, i32)* }
%struct.TYPE_3__ = type { i32, i32* }
%struct.msix_entry = type { i64, i64 }
%struct.mic_intr_cb = type { i64 }

@MIC_NUM_OFFSETS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"Error mapping index %d to a valid source id.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"No MSIx vectors available for use.\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"request irq failed rc = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"irq: %d assigned for src: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"No available callback entries for use\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"callback %d registered for src: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.mic_irq* @mic_request_threaded_irq(%struct.mic_device* %0, i32 %1, i32 %2, i8* %3, i8* %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.mic_irq*, align 8
  %9 = alloca %struct.mic_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.msix_entry*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.mic_intr_cb*, align 8
  %22 = alloca %struct.pci_dev*, align 8
  store %struct.mic_device* %0, %struct.mic_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store %struct.msix_entry* null, %struct.msix_entry** %18, align 8
  store i64 0, i64* %19, align 8
  %23 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %24 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %23, i32 0, i32 0
  %25 = load %struct.pci_dev*, %struct.pci_dev** %24, align 8
  store %struct.pci_dev* %25, %struct.pci_dev** %22, align 8
  %26 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* %15, align 4
  %29 = call i64 @mic_map_src_to_offset(%struct.mic_device* %26, i32 %27, i32 %28)
  store i64 %29, i64* %16, align 8
  %30 = load i64, i64* %16, align 8
  %31 = load i64, i64* @MIC_NUM_OFFSETS, align 8
  %32 = icmp uge i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %7
  %34 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %35 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %34, i32 0, i32 0
  %36 = load %struct.pci_dev*, %struct.pci_dev** %35, align 8
  %37 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %14, align 4
  %39 = call i32 (i32*, i8*, ...) @dev_err(i32* %37, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %17, align 4
  br label %176

42:                                               ; preds = %7
  %43 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %44 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %115

48:                                               ; preds = %42
  %49 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %50 = call %struct.msix_entry* @mic_get_available_vector(%struct.mic_device* %49)
  store %struct.msix_entry* %50, %struct.msix_entry** %18, align 8
  %51 = load %struct.msix_entry*, %struct.msix_entry** %18, align 8
  %52 = icmp ne %struct.msix_entry* %51, null
  br i1 %52, label %61, label %53

53:                                               ; preds = %48
  %54 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %55 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %54, i32 0, i32 0
  %56 = load %struct.pci_dev*, %struct.pci_dev** %55, align 8
  %57 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %56, i32 0, i32 0
  %58 = call i32 (i32*, i8*, ...) @dev_err(i32* %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  %59 = load i32, i32* @ENOSPC, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %17, align 4
  br label %176

61:                                               ; preds = %48
  %62 = load %struct.msix_entry*, %struct.msix_entry** %18, align 8
  %63 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* %11, align 4
  %67 = load i8*, i8** %12, align 8
  %68 = load i8*, i8** %13, align 8
  %69 = call i32 @request_threaded_irq(i64 %64, i32 %65, i32 %66, i32 0, i8* %67, i8* %68)
  store i32 %69, i32* %17, align 4
  %70 = load i32, i32* %17, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %61
  %73 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %74 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %73, i32 0, i32 0
  %75 = load %struct.pci_dev*, %struct.pci_dev** %74, align 8
  %76 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %75, i32 0, i32 0
  %77 = load i32, i32* %17, align 4
  %78 = sext i32 %77 to i64
  %79 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i64 %78)
  br label %176

80:                                               ; preds = %61
  %81 = load %struct.msix_entry*, %struct.msix_entry** %18, align 8
  %82 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  store i64 %83, i64* %20, align 8
  %84 = load i64, i64* %16, align 8
  %85 = call i32 @BIT(i64 %84)
  %86 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %87 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = load i64, i64* %20, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %85
  store i32 %93, i32* %91, align 4
  %94 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %95 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %94, i32 0, i32 1
  %96 = load %struct.TYPE_4__*, %struct.TYPE_4__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i32 (%struct.mic_device*, i64, i64, i32)*, i32 (%struct.mic_device*, i64, i64, i32)** %97, align 8
  %99 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %100 = load i64, i64* %20, align 8
  %101 = load i64, i64* %16, align 8
  %102 = call i32 %98(%struct.mic_device* %99, i64 %100, i64 %101, i32 1)
  %103 = load i64, i64* %20, align 8
  %104 = load i64, i64* %16, align 8
  %105 = call i64 @MK_COOKIE(i64 %103, i64 %104)
  store i64 %105, i64* %19, align 8
  %106 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %107 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %106, i32 0, i32 0
  %108 = load %struct.pci_dev*, %struct.pci_dev** %107, align 8
  %109 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %108, i32 0, i32 0
  %110 = load %struct.msix_entry*, %struct.msix_entry** %18, align 8
  %111 = getelementptr inbounds %struct.msix_entry, %struct.msix_entry* %110, i32 0, i32 0
  %112 = load i64, i64* %111, align 8
  %113 = load i32, i32* %14, align 4
  %114 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %109, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %112, i32 %113)
  br label %173

115:                                              ; preds = %42
  %116 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %117 = load i64, i64* %16, align 8
  %118 = load i32, i32* %10, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i8*, i8** %13, align 8
  %121 = call %struct.mic_intr_cb* @mic_register_intr_callback(%struct.mic_device* %116, i64 %117, i32 %118, i32 %119, i8* %120)
  store %struct.mic_intr_cb* %121, %struct.mic_intr_cb** %21, align 8
  %122 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %21, align 8
  %123 = call i64 @IS_ERR(%struct.mic_intr_cb* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %133

125:                                              ; preds = %115
  %126 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %127 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %126, i32 0, i32 0
  %128 = load %struct.pci_dev*, %struct.pci_dev** %127, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 0
  %130 = call i32 (i32*, i8*, ...) @dev_err(i32* %129, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %21, align 8
  %132 = call i32 @PTR_ERR(%struct.mic_intr_cb* %131)
  store i32 %132, i32* %17, align 4
  br label %176

133:                                              ; preds = %115
  store i64 0, i64* %20, align 8
  %134 = load %struct.pci_dev*, %struct.pci_dev** %22, align 8
  %135 = call i64 @pci_dev_msi_enabled(%struct.pci_dev* %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %158

137:                                              ; preds = %133
  %138 = load i64, i64* %16, align 8
  %139 = trunc i64 %138 to i32
  %140 = shl i32 1, %139
  %141 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %142 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %141, i32 0, i32 2
  %143 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = load i64, i64* %20, align 8
  %146 = getelementptr inbounds i32, i32* %144, i64 %145
  %147 = load i32, i32* %146, align 4
  %148 = or i32 %147, %140
  store i32 %148, i32* %146, align 4
  %149 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %150 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %149, i32 0, i32 1
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = load i32 (%struct.mic_device*, i64, i64, i32)*, i32 (%struct.mic_device*, i64, i64, i32)** %152, align 8
  %154 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %155 = load i64, i64* %20, align 8
  %156 = load i64, i64* %16, align 8
  %157 = call i32 %153(%struct.mic_device* %154, i64 %155, i64 %156, i32 1)
  br label %158

158:                                              ; preds = %137, %133
  %159 = load i64, i64* %20, align 8
  %160 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %21, align 8
  %161 = getelementptr inbounds %struct.mic_intr_cb, %struct.mic_intr_cb* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = call i64 @MK_COOKIE(i64 %159, i64 %162)
  store i64 %163, i64* %19, align 8
  %164 = load %struct.mic_device*, %struct.mic_device** %9, align 8
  %165 = getelementptr inbounds %struct.mic_device, %struct.mic_device* %164, i32 0, i32 0
  %166 = load %struct.pci_dev*, %struct.pci_dev** %165, align 8
  %167 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %166, i32 0, i32 0
  %168 = load %struct.mic_intr_cb*, %struct.mic_intr_cb** %21, align 8
  %169 = getelementptr inbounds %struct.mic_intr_cb, %struct.mic_intr_cb* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = load i32, i32* %14, align 4
  %172 = call i32 (i32*, i8*, i64, ...) @dev_dbg(i32* %167, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i64 %170, i32 %171)
  br label %173

173:                                              ; preds = %158, %80
  %174 = load i64, i64* %19, align 8
  %175 = inttoptr i64 %174 to %struct.mic_irq*
  store %struct.mic_irq* %175, %struct.mic_irq** %8, align 8
  br label %179

176:                                              ; preds = %125, %72, %53, %33
  %177 = load i32, i32* %17, align 4
  %178 = call %struct.mic_irq* @ERR_PTR(i32 %177)
  store %struct.mic_irq* %178, %struct.mic_irq** %8, align 8
  br label %179

179:                                              ; preds = %176, %173
  %180 = load %struct.mic_irq*, %struct.mic_irq** %8, align 8
  ret %struct.mic_irq* %180
}

declare dso_local i64 @mic_map_src_to_offset(%struct.mic_device*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local %struct.msix_entry* @mic_get_available_vector(%struct.mic_device*) #1

declare dso_local i32 @request_threaded_irq(i64, i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i64, ...) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i64 @MK_COOKIE(i64, i64) #1

declare dso_local %struct.mic_intr_cb* @mic_register_intr_callback(%struct.mic_device*, i64, i32, i32, i8*) #1

declare dso_local i64 @IS_ERR(%struct.mic_intr_cb*) #1

declare dso_local i32 @PTR_ERR(%struct.mic_intr_cb*) #1

declare dso_local i64 @pci_dev_msi_enabled(%struct.pci_dev*) #1

declare dso_local %struct.mic_irq* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
