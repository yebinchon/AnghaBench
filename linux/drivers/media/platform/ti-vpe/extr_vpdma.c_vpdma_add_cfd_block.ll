; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_add_cfd_block.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_add_cfd_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_desc_list = type { %struct.vpdma_cfd*, %struct.TYPE_2__ }
%struct.vpdma_cfd = type { i32, i32, i8*, i8* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.vpdma_buf = type { i32, i32 }

@VPDMA_DESC_ALIGN = common dso_local global i32 0, align 4
@CFD_INDIRECT = common dso_local global i32 0, align 4
@CFD_CLS_BLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpdma_add_cfd_block(%struct.vpdma_desc_list* %0, i32 %1, %struct.vpdma_buf* %2, i8* %3) #0 {
  %5 = alloca %struct.vpdma_desc_list*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.vpdma_buf*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.vpdma_cfd*, align 8
  %10 = alloca i32, align 4
  store %struct.vpdma_desc_list* %0, %struct.vpdma_desc_list** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.vpdma_buf* %2, %struct.vpdma_buf** %7, align 8
  store i8* %3, i8** %8, align 8
  %11 = load %struct.vpdma_buf*, %struct.vpdma_buf** %7, align 8
  %12 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %10, align 4
  %14 = load %struct.vpdma_buf*, %struct.vpdma_buf** %7, align 8
  %15 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @VPDMA_DESC_ALIGN, align 4
  %18 = and i32 %16, %17
  %19 = call i32 @WARN_ON(i32 %18)
  %20 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %5, align 8
  %21 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %20, i32 0, i32 0
  %22 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %21, align 8
  store %struct.vpdma_cfd* %22, %struct.vpdma_cfd** %9, align 8
  %23 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %9, align 8
  %24 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %23, i64 1
  %25 = bitcast %struct.vpdma_cfd* %24 to i8*
  %26 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %5, align 8
  %27 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %5, align 8
  %31 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = sext i32 %33 to i64
  %35 = getelementptr i8, i8* %29, i64 %34
  %36 = icmp ugt i8* %25, %35
  %37 = zext i1 %36 to i32
  %38 = call i32 @WARN_ON(i32 %37)
  %39 = load i8*, i8** %8, align 8
  %40 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %9, align 8
  %41 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %40, i32 0, i32 3
  store i8* %39, i8** %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %9, align 8
  %44 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.vpdma_buf*, %struct.vpdma_buf** %7, align 8
  %46 = getelementptr inbounds %struct.vpdma_buf, %struct.vpdma_buf* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %9, align 8
  %51 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  %52 = load i32, i32* @CFD_INDIRECT, align 4
  %53 = load i32, i32* @CFD_CLS_BLOCK, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %10, align 4
  %56 = ashr i32 %55, 4
  %57 = call i32 @cfd_pkt_payload_len(i32 %52, i32 %53, i32 %54, i32 %56)
  %58 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %9, align 8
  %59 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %9, align 8
  %61 = getelementptr inbounds %struct.vpdma_cfd, %struct.vpdma_cfd* %60, i64 1
  %62 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %5, align 8
  %63 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %62, i32 0, i32 0
  store %struct.vpdma_cfd* %61, %struct.vpdma_cfd** %63, align 8
  %64 = load %struct.vpdma_cfd*, %struct.vpdma_cfd** %9, align 8
  %65 = call i32 @dump_cfd(%struct.vpdma_cfd* %64)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cfd_pkt_payload_len(i32, i32, i32, i32) #1

declare dso_local i32 @dump_cfd(%struct.vpdma_cfd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
