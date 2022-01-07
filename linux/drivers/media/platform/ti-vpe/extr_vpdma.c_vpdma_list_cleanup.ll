; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_list_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_list_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_data = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.vpdma_desc_list = type { i32 }

@VPDMA_LIST_ATTR = common dso_local global i32 0, align 4
@VPDMA_LIST_NUM_SHFT = common dso_local global i32 0, align 4
@VPDMA_LIST_STOP_SHFT = common dso_local global i32 0, align 4
@VPDMA_LIST_TYPE_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Timed out cleaning up VPDMA list\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vpdma_list_cleanup(%struct.vpdma_data* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vpdma_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.vpdma_desc_list, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.vpdma_data* %0, %struct.vpdma_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 500, i32* %13, align 4
  %14 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %15 = load i32, i32* @VPDMA_LIST_ATTR, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @VPDMA_LIST_NUM_SHFT, align 4
  %18 = shl i32 %16, %17
  %19 = load i32, i32* @VPDMA_LIST_STOP_SHFT, align 4
  %20 = shl i32 1, %19
  %21 = or i32 %18, %20
  %22 = call i32 @write_reg(%struct.vpdma_data* %14, i32 %15, i32 %21)
  %23 = load i32, i32* %9, align 4
  %24 = icmp sle i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %4
  %26 = load i32*, i32** %8, align 8
  %27 = icmp ne i32* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %102

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @VPDMA_LIST_TYPE_NORMAL, align 4
  %35 = call i32 @vpdma_create_desc_list(%struct.vpdma_desc_list* %10, i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load i32, i32* %12, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %29
  %39 = load i32, i32* %12, align 4
  store i32 %39, i32* %5, align 4
  br label %102

40:                                               ; preds = %29
  store i32 0, i32* %11, align 4
  br label %41

41:                                               ; preds = %52, %40
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* %9, align 4
  %44 = icmp slt i32 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %41
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @vpdma_add_abort_channel_ctd(%struct.vpdma_desc_list* %10, i32 %50)
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %11, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %11, align 4
  br label %41

55:                                               ; preds = %41
  %56 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %57 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %10, i32 0, i32 0
  %58 = call i32 @vpdma_map_desc_buf(%struct.vpdma_data* %56, i32* %57)
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %55
  br label %98

62:                                               ; preds = %55
  %63 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @vpdma_submit_descs(%struct.vpdma_data* %63, %struct.vpdma_desc_list* %10, i32 %64)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %94

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %81, %69
  %71 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i64 @vpdma_list_busy(%struct.vpdma_data* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br label %79

79:                                               ; preds = %75, %70
  %80 = phi i1 [ false, %70 ], [ %78, %75 ]
  br i1 %80, label %81, label %82

81:                                               ; preds = %79
  br label %70

82:                                               ; preds = %79
  %83 = load i32, i32* %13, align 4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

85:                                               ; preds = %82
  %86 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %87 = getelementptr inbounds %struct.vpdma_data, %struct.vpdma_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @EBUSY, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %12, align 4
  br label %93

93:                                               ; preds = %85, %82
  br label %94

94:                                               ; preds = %93, %68
  %95 = load %struct.vpdma_data*, %struct.vpdma_data** %6, align 8
  %96 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %10, i32 0, i32 0
  %97 = call i32 @vpdma_unmap_desc_buf(%struct.vpdma_data* %95, i32* %96)
  br label %98

98:                                               ; preds = %94, %61
  %99 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %10, i32 0, i32 0
  %100 = call i32 @vpdma_free_desc_buf(i32* %99)
  %101 = load i32, i32* %12, align 4
  store i32 %101, i32* %5, align 4
  br label %102

102:                                              ; preds = %98, %38, %28
  %103 = load i32, i32* %5, align 4
  ret i32 %103
}

declare dso_local i32 @write_reg(%struct.vpdma_data*, i32, i32) #1

declare dso_local i32 @vpdma_create_desc_list(%struct.vpdma_desc_list*, i32, i32) #1

declare dso_local i32 @vpdma_add_abort_channel_ctd(%struct.vpdma_desc_list*, i32) #1

declare dso_local i32 @vpdma_map_desc_buf(%struct.vpdma_data*, i32*) #1

declare dso_local i32 @vpdma_submit_descs(%struct.vpdma_data*, %struct.vpdma_desc_list*, i32) #1

declare dso_local i64 @vpdma_list_busy(%struct.vpdma_data*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @vpdma_unmap_desc_buf(%struct.vpdma_data*, i32*) #1

declare dso_local i32 @vpdma_free_desc_buf(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
