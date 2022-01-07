; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_add_abort_channel_ctd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/ti-vpe/extr_vpdma.c_vpdma_add_abort_channel_ctd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vpdma_desc_list = type { %struct.vpdma_ctd*, %struct.TYPE_2__ }
%struct.vpdma_ctd = type { i32, i64, i64, i64 }
%struct.TYPE_2__ = type { i8*, i32 }

@CTD_TYPE_ABORT_CHANNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vpdma_add_abort_channel_ctd(%struct.vpdma_desc_list* %0, i32 %1) #0 {
  %3 = alloca %struct.vpdma_desc_list*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vpdma_ctd*, align 8
  store %struct.vpdma_desc_list* %0, %struct.vpdma_desc_list** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %3, align 8
  %7 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %6, i32 0, i32 0
  %8 = load %struct.vpdma_ctd*, %struct.vpdma_ctd** %7, align 8
  store %struct.vpdma_ctd* %8, %struct.vpdma_ctd** %5, align 8
  %9 = load %struct.vpdma_ctd*, %struct.vpdma_ctd** %5, align 8
  %10 = getelementptr inbounds %struct.vpdma_ctd, %struct.vpdma_ctd* %9, i64 1
  %11 = bitcast %struct.vpdma_ctd* %10 to i8*
  %12 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %3, align 8
  %13 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8*, i8** %14, align 8
  %16 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %3, align 8
  %17 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = sext i32 %19 to i64
  %21 = getelementptr i8, i8* %15, i64 %20
  %22 = icmp ugt i8* %11, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @WARN_ON(i32 %23)
  %25 = load %struct.vpdma_ctd*, %struct.vpdma_ctd** %5, align 8
  %26 = getelementptr inbounds %struct.vpdma_ctd, %struct.vpdma_ctd* %25, i32 0, i32 3
  store i64 0, i64* %26, align 8
  %27 = load %struct.vpdma_ctd*, %struct.vpdma_ctd** %5, align 8
  %28 = getelementptr inbounds %struct.vpdma_ctd, %struct.vpdma_ctd* %27, i32 0, i32 2
  store i64 0, i64* %28, align 8
  %29 = load %struct.vpdma_ctd*, %struct.vpdma_ctd** %5, align 8
  %30 = getelementptr inbounds %struct.vpdma_ctd, %struct.vpdma_ctd* %29, i32 0, i32 1
  store i64 0, i64* %30, align 8
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @CTD_TYPE_ABORT_CHANNEL, align 4
  %33 = call i32 @ctd_type_source_ctl(i32 %31, i32 %32)
  %34 = load %struct.vpdma_ctd*, %struct.vpdma_ctd** %5, align 8
  %35 = getelementptr inbounds %struct.vpdma_ctd, %struct.vpdma_ctd* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.vpdma_ctd*, %struct.vpdma_ctd** %5, align 8
  %37 = getelementptr inbounds %struct.vpdma_ctd, %struct.vpdma_ctd* %36, i64 1
  %38 = load %struct.vpdma_desc_list*, %struct.vpdma_desc_list** %3, align 8
  %39 = getelementptr inbounds %struct.vpdma_desc_list, %struct.vpdma_desc_list* %38, i32 0, i32 0
  store %struct.vpdma_ctd* %37, %struct.vpdma_ctd** %39, align 8
  %40 = load %struct.vpdma_ctd*, %struct.vpdma_ctd** %5, align 8
  %41 = call i32 @dump_ctd(%struct.vpdma_ctd* %40)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @ctd_type_source_ctl(i32, i32) #1

declare dso_local i32 @dump_ctd(%struct.vpdma_ctd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
