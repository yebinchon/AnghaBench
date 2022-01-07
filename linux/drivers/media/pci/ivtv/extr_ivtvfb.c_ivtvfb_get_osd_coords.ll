; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_get_osd_coords.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_get_osd_coords.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.osd_info* }
%struct.osd_info = type { i8*, i32, i32 }
%struct.ivtv_osd_coords = type { i32, i8*, i8*, i8*, i8*, i8* }

@CX2341X_MBOX_MAX_DATA = common dso_local global i32 0, align 4
@CX2341X_OSD_GET_OSD_COORDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*, %struct.ivtv_osd_coords*)* @ivtvfb_get_osd_coords to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_get_osd_coords(%struct.ivtv* %0, %struct.ivtv_osd_coords* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.ivtv_osd_coords*, align 8
  %5 = alloca %struct.osd_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.ivtv_osd_coords* %1, %struct.ivtv_osd_coords** %4, align 8
  %8 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %9 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %8, i32 0, i32 0
  %10 = load %struct.osd_info*, %struct.osd_info** %9, align 8
  store %struct.osd_info* %10, %struct.osd_info** %5, align 8
  %11 = load i32, i32* @CX2341X_MBOX_MAX_DATA, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8*, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  %15 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %16 = load i32, i32* @CX2341X_OSD_GET_OSD_COORDS, align 4
  %17 = call i32 @ivtv_vapi_result(%struct.ivtv* %15, i8** %14, i32 %16, i32 0)
  %18 = getelementptr inbounds i8*, i8** %14, i64 0
  %19 = load i8*, i8** %18, align 16
  %20 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %21 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %20, i32 0, i32 0
  %22 = load i8*, i8** %21, align 8
  %23 = ptrtoint i8* %19 to i64
  %24 = ptrtoint i8* %22 to i64
  %25 = sub i64 %23, %24
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %28 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %30 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.osd_info*, %struct.osd_info** %5, align 8
  %33 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %31, %34
  %36 = mul nsw i32 %35, 4
  %37 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %38 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 8
  %39 = getelementptr inbounds i8*, i8** %14, i64 1
  %40 = load i8*, i8** %39, align 8
  %41 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %42 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %41, i32 0, i32 4
  store i8* %40, i8** %42, align 8
  %43 = getelementptr inbounds i8*, i8** %14, i64 2
  %44 = load i8*, i8** %43, align 16
  %45 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %46 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %45, i32 0, i32 3
  store i8* %44, i8** %46, align 8
  %47 = getelementptr inbounds i8*, i8** %14, i64 3
  %48 = load i8*, i8** %47, align 8
  %49 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %50 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %49, i32 0, i32 2
  store i8* %48, i8** %50, align 8
  %51 = getelementptr inbounds i8*, i8** %14, i64 4
  %52 = load i8*, i8** %51, align 16
  %53 = load %struct.ivtv_osd_coords*, %struct.ivtv_osd_coords** %4, align 8
  %54 = getelementptr inbounds %struct.ivtv_osd_coords, %struct.ivtv_osd_coords* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ivtv_vapi_result(%struct.ivtv*, i8**, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
