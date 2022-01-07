; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_firmware_cb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_firmware_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.firmware = type { i32, i32 }
%struct.vpdma_data = type { %struct.TYPE_3__*, i32 (%struct.TYPE_3__*)* }
%struct.TYPE_3__ = type { i32 }
%struct.vpdma_buf = type { i64, i32 }

@.str = private unnamed_addr constant [19 x i8] c"firmware callback\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"couldn't get firmware\0A\00", align 1
@VPDMA_LIST_ATTR = common dso_local global i32 0, align 4
@VPDMA_LIST_RDY_MASK = common dso_local global i32 0, align 4
@VPDMA_LIST_RDY_SHFT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"failed to allocate dma buffer for firmware\0A\00", align 1
@VPDMA_LIST_ADDR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"firmware upload failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.firmware*, i8*)* @vpdma_firmware_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vpdma_firmware_cb(%struct.firmware* %0, i8* %1) #0 {
  %3 = alloca %struct.firmware*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.vpdma_data*, align 8
  %6 = alloca %struct.vpdma_buf, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.firmware* %0, %struct.firmware** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.vpdma_data*
  store %struct.vpdma_data* %10, %struct.vpdma_data** %5, align 8
  %11 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %12 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = call i32 @dev_dbg(i32* %14, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.firmware*, %struct.firmware** %3, align 8
  %17 = icmp ne %struct.firmware* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.firmware*, %struct.firmware** %3, align 8
  %20 = getelementptr inbounds %struct.firmware, %struct.firmware* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %18, %2
  %24 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %25 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = call i32 @dev_err(i32* %27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %115

29:                                               ; preds = %18
  %30 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %31 = load i32, i32* @VPDMA_LIST_ATTR, align 4
  %32 = load i32, i32* @VPDMA_LIST_RDY_MASK, align 4
  %33 = load i32, i32* @VPDMA_LIST_RDY_SHFT, align 4
  %34 = call i64 @read_field_reg(%struct.vpdma_data* %30, i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %44

36:                                               ; preds = %29
  %37 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %38 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %37, i32 0, i32 1
  %39 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %38, align 8
  %40 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %41 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %40, i32 0, i32 0
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = call i32 %39(%struct.TYPE_3__* %42)
  br label %115

44:                                               ; preds = %29
  %45 = load %struct.firmware*, %struct.firmware** %3, align 8
  %46 = getelementptr inbounds %struct.firmware, %struct.firmware* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @vpdma_alloc_desc_buf(%struct.vpdma_buf* %6, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44
  %52 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %53 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @dev_err(i32* %55, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  br label %112

57:                                               ; preds = %44
  %58 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %6, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.firmware*, %struct.firmware** %3, align 8
  %61 = getelementptr inbounds %struct.firmware, %struct.firmware* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.firmware*, %struct.firmware** %3, align 8
  %64 = getelementptr inbounds %struct.firmware, %struct.firmware* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @memcpy(i32 %59, i32 %62, i32 %65)
  %67 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %68 = call i32 @vpdma_map_desc_buf(%struct.vpdma_data* %67, %struct.vpdma_buf* %6)
  %69 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %70 = load i32, i32* @VPDMA_LIST_ADDR, align 4
  %71 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %6, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @write_reg(%struct.vpdma_data* %69, i32 %70, i32 %73)
  store i32 0, i32* %7, align 4
  br label %75

75:                                               ; preds = %88, %57
  %76 = load i32, i32* %7, align 4
  %77 = icmp slt i32 %76, 100
  br i1 %77, label %78, label %91

78:                                               ; preds = %75
  %79 = call i32 @msleep_interruptible(i32 10)
  %80 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %81 = load i32, i32* @VPDMA_LIST_ATTR, align 4
  %82 = load i32, i32* @VPDMA_LIST_RDY_MASK, align 4
  %83 = load i32, i32* @VPDMA_LIST_RDY_SHFT, align 4
  %84 = call i64 @read_field_reg(%struct.vpdma_data* %80, i32 %81, i32 %82, i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %78
  br label %91

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %75

91:                                               ; preds = %86, %75
  %92 = load i32, i32* %7, align 4
  %93 = icmp eq i32 %92, 100
  br i1 %93, label %94, label %100

94:                                               ; preds = %91
  %95 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %96 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %95, i32 0, i32 0
  %97 = load %struct.TYPE_3__*, %struct.TYPE_3__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = call i32 @dev_err(i32* %98, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %108

100:                                              ; preds = %91
  %101 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %102 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %101, i32 0, i32 1
  %103 = load i32 (%struct.TYPE_3__*)*, i32 (%struct.TYPE_3__*)** %102, align 8
  %104 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %105 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %104, i32 0, i32 0
  %106 = load %struct.TYPE_3__*, %struct.TYPE_3__** %105, align 8
  %107 = call i32 %103(%struct.TYPE_3__* %106)
  br label %108

108:                                              ; preds = %100, %94
  %109 = load %struct.vpdma_data*, %struct.vpdma_data** %5, align 8
  %110 = call i32 @vpdma_unmap_desc_buf(%struct.vpdma_data* %109, %struct.vpdma_buf* %6)
  %111 = call i32 @vpdma_free_desc_buf(%struct.vpdma_buf* %6)
  br label %112

112:                                              ; preds = %108, %51
  %113 = load %struct.firmware*, %struct.firmware** %3, align 8
  %114 = call i32 @release_firmware(%struct.firmware* %113)
  br label %115

115:                                              ; preds = %112, %36, %23
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @read_field_reg(%struct.vpdma_data*, i32, i32, i32) #1

declare dso_local i32 @vpdma_alloc_desc_buf(%struct.vpdma_buf*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @vpdma_map_desc_buf(%struct.vpdma_data*, %struct.vpdma_buf*) #1

declare dso_local i32 @write_reg(%struct.vpdma_data*, i32, i32) #1

declare dso_local i32 @msleep_interruptible(i32) #1

declare dso_local i32 @vpdma_unmap_desc_buf(%struct.vpdma_data*, %struct.vpdma_buf*) #1

declare dso_local i32 @vpdma_free_desc_buf(%struct.vpdma_buf*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
