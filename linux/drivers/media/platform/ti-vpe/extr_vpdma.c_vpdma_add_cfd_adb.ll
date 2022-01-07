; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_add_cfd_adb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_add_cfd_adb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_desc_list = type { %struct.vpdma_cfd*, %struct.TYPE_2__ }
%struct.vpdma_cfd = type { i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.vpdma_buf = type { i32, i32 }

@VPDMA_ADB_SIZE_ALIGN = common dso_local global i32 0, align 4
@VPDMA_DESC_ALIGN = common dso_local global i32 0, align 4
@CFD_INDIRECT = common dso_local global i32 0, align 4
@CFD_CLS_ADB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpdma_add_cfd_adb(%struct.vpdma_desc_list* %0, i32 %1, %struct.vpdma_buf* %2) #0 {
  %4 = alloca %struct.vpdma_desc_list*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vpdma_buf*, align 8
  %7 = alloca %struct.vpdma_cfd*, align 8
  %8 = alloca i32, align 4
  store %struct.vpdma_desc_list* %0, %struct.vpdma_desc_list** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.vpdma_buf* %2, %struct.vpdma_buf** %6, align 8
  %9 = load %struct.vpdma_buf*, %struct.vpdma_buf** %6, align 8
  %10 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @VPDMA_ADB_SIZE_ALIGN, align 4
  %14 = and i32 %12, %13
  %15 = call i32 @WARN_ON(i32 %14)
  %16 = load %struct.vpdma_buf*, %struct.vpdma_buf** %6, align 8
  %17 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @VPDMA_DESC_ALIGN, align 4
  %20 = and i32 %18, %19
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %4, align 8
  %23 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %22, i32 0, i32 0
  %24 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %23, align 8
  store %struct.vpdma_cfd* %24, %struct.vpdma_cfd** %7, align 8
  %25 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %7, align 8
  %26 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %25, i64 1
  %27 = bitcast %struct.vpdma_cfd* %26 to i8*
  %28 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %4, align 8
  %29 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  %32 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %4, align 8
  %33 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = getelementptr i8, i8* %31, i64 %36
  %38 = icmp ugt i8* %27, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %7, align 8
  %42 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %41, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %7, align 8
  %44 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.vpdma_buf*, %struct.vpdma_buf** %6, align 8
  %46 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = zext i32 %47 to i64
  %49 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %7, align 8
  %50 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* @CFD_INDIRECT, align 4
  %52 = load i32, i32* @CFD_CLS_ADB, align 4
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %8, align 4
  %55 = lshr i32 %54, 4
  %56 = call i32 @cfd_pkt_payload_len(i32 %51, i32 %52, i32 %53, i32 %55)
  %57 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %7, align 8
  %58 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %7, align 8
  %60 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %59, i64 1
  %61 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %4, align 8
  %62 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %61, i32 0, i32 0
  store %struct.vpdma_cfd* %60, %struct.vpdma_cfd** %62, align 8
  %63 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %7, align 8
  %64 = call i32 @dump_cfd(%struct.vpdma_cfd* %63)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @cfd_pkt_payload_len(i32, i32, i32, i32) #1

declare dso_local i32 @dump_cfd(%struct.vpdma_cfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
