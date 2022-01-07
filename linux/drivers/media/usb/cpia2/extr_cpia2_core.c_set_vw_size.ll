; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_set_vw_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/cpia2/extr_cpia2_core.c_set_vw_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.camera_data = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"Setting size to VGA\0A\00", align 1
@STV_IMAGE_VGA_COLS = common dso_local global i8* null, align 8
@STV_IMAGE_VGA_ROWS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Setting size to CIF\0A\00", align 1
@STV_IMAGE_CIF_COLS = common dso_local global i8* null, align 8
@STV_IMAGE_CIF_ROWS = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [22 x i8] c"Setting size to QVGA\0A\00", align 1
@STV_IMAGE_QVGA_COLS = common dso_local global i8* null, align 8
@STV_IMAGE_QVGA_ROWS = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [22 x i8] c"Setting size to QCIF\0A\00", align 1
@STV_IMAGE_QCIF_COLS = common dso_local global i8* null, align 8
@STV_IMAGE_QCIF_ROWS = common dso_local global i8* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.camera_data*, i32)* @set_vw_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_vw_size(%struct.camera_data* %0, i32 %1) #0 {
  %3 = alloca %struct.camera_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.camera_data* %0, %struct.camera_data** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %8 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  store i32 %6, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  switch i32 %11, label %152 [
    i32 128, label %12
    i32 131, label %34
    i32 129, label %56
    i32 132, label %78
    i32 133, label %91
    i32 134, label %104
    i32 135, label %117
    i32 130, label %130
  ]

12:                                               ; preds = %2
  %13 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %14 = load i8*, i8** @STV_IMAGE_VGA_COLS, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %17 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store i32 %15, i32* %19, align 4
  %20 = load i8*, i8** @STV_IMAGE_VGA_ROWS, align 8
  %21 = ptrtoint i8* %20 to i32
  %22 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %23 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %21, i32* %25, align 4
  %26 = load i8*, i8** @STV_IMAGE_VGA_COLS, align 8
  %27 = ptrtoint i8* %26 to i32
  %28 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %29 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i8*, i8** @STV_IMAGE_VGA_ROWS, align 8
  %31 = ptrtoint i8* %30 to i32
  %32 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %33 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %155

34:                                               ; preds = %2
  %35 = call i32 @DBG(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i8*, i8** @STV_IMAGE_CIF_COLS, align 8
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %39 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 %37, i32* %41, align 4
  %42 = load i8*, i8** @STV_IMAGE_CIF_ROWS, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %45 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 1
  store i32 %43, i32* %47, align 4
  %48 = load i8*, i8** @STV_IMAGE_CIF_COLS, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %51 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = load i8*, i8** @STV_IMAGE_CIF_ROWS, align 8
  %53 = ptrtoint i8* %52 to i32
  %54 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %55 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 4
  br label %155

56:                                               ; preds = %2
  %57 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i8*, i8** @STV_IMAGE_QVGA_COLS, align 8
  %59 = ptrtoint i8* %58 to i32
  %60 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %61 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i32 %59, i32* %63, align 4
  %64 = load i8*, i8** @STV_IMAGE_QVGA_ROWS, align 8
  %65 = ptrtoint i8* %64 to i32
  %66 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %67 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i32 %65, i32* %69, align 4
  %70 = load i8*, i8** @STV_IMAGE_QVGA_COLS, align 8
  %71 = ptrtoint i8* %70 to i32
  %72 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %73 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %72, i32 0, i32 0
  store i32 %71, i32* %73, align 4
  %74 = load i8*, i8** @STV_IMAGE_QVGA_ROWS, align 8
  %75 = ptrtoint i8* %74 to i32
  %76 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %77 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  br label %155

78:                                               ; preds = %2
  %79 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %80 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  store i32 288, i32* %82, align 4
  %83 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %84 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 216, i32* %86, align 4
  %87 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %88 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %87, i32 0, i32 0
  store i32 288, i32* %88, align 4
  %89 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %90 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %89, i32 0, i32 1
  store i32 216, i32* %90, align 4
  br label %155

91:                                               ; preds = %2
  %92 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %93 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %92, i32 0, i32 0
  store i32 256, i32* %93, align 4
  %94 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %95 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %94, i32 0, i32 1
  store i32 192, i32* %95, align 4
  %96 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %97 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  store i32 256, i32* %99, align 4
  %100 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %101 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %100, i32 0, i32 2
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i32 0, i32 1
  store i32 192, i32* %103, align 4
  br label %155

104:                                              ; preds = %2
  %105 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %106 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %105, i32 0, i32 0
  store i32 224, i32* %106, align 4
  %107 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %108 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %107, i32 0, i32 1
  store i32 168, i32* %108, align 4
  %109 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %110 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %109, i32 0, i32 2
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 0
  store i32 224, i32* %112, align 4
  %113 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %114 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store i32 168, i32* %116, align 4
  br label %155

117:                                              ; preds = %2
  %118 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %119 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %118, i32 0, i32 0
  store i32 192, i32* %119, align 4
  %120 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %121 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %120, i32 0, i32 1
  store i32 144, i32* %121, align 4
  %122 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %123 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %124, i32 0, i32 0
  store i32 192, i32* %125, align 4
  %126 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %127 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i32 144, i32* %129, align 4
  br label %155

130:                                              ; preds = %2
  %131 = call i32 @DBG(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0))
  %132 = load i8*, i8** @STV_IMAGE_QCIF_COLS, align 8
  %133 = ptrtoint i8* %132 to i32
  %134 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %135 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 0
  store i32 %133, i32* %137, align 4
  %138 = load i8*, i8** @STV_IMAGE_QCIF_ROWS, align 8
  %139 = ptrtoint i8* %138 to i32
  %140 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %141 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 1
  store i32 %139, i32* %143, align 4
  %144 = load i8*, i8** @STV_IMAGE_QCIF_COLS, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %147 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %146, i32 0, i32 0
  store i32 %145, i32* %147, align 4
  %148 = load i8*, i8** @STV_IMAGE_QCIF_ROWS, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.camera_data*, %struct.camera_data** %3, align 8
  %151 = getelementptr inbounds %struct.camera_data, %struct.camera_data* %150, i32 0, i32 1
  store i32 %149, i32* %151, align 4
  br label %155

152:                                              ; preds = %2
  %153 = load i32, i32* @EINVAL, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %152, %130, %117, %104, %91, %78, %56, %34, %12
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
