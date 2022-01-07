; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.c_cxgbi_ppm_make_ppod_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/chelsio/libcxgb/extr_libcxgb_ppm.c_cxgbi_ppm_make_ppod_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_ppm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cxgbi_pagepod_hdr = type { i8*, i8*, i8*, i64, i8* }

@PPOD_VALID_FLAG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"ippm: tag 0x%x, tid 0x%x, xfer %u, off %u.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgbi_ppm_make_ppod_hdr(%struct.cxgbi_ppm* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.cxgbi_pagepod_hdr* %5) #0 {
  %7 = alloca %struct.cxgbi_ppm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cxgbi_pagepod_hdr*, align 8
  store %struct.cxgbi_ppm* %0, %struct.cxgbi_ppm** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store %struct.cxgbi_pagepod_hdr* %5, %struct.cxgbi_pagepod_hdr** %12, align 8
  %13 = load i32, i32* %8, align 4
  %14 = and i32 %13, 1073741823
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* @PPOD_VALID_FLAG, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @PPOD_TID(i32 %16)
  %18 = or i32 %15, %17
  %19 = call i8* @htonl(i32 %18)
  %20 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %12, align 8
  %21 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %20, i32 0, i32 4
  store i8* %19, i8** %21, align 8
  %22 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %12, align 8
  %23 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.cxgbi_ppm*, %struct.cxgbi_ppm** %7, align 8
  %26 = getelementptr inbounds %struct.cxgbi_ppm, %struct.cxgbi_ppm* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %24, %28
  %30 = call i8* @htonl(i32 %29)
  %31 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %12, align 8
  %32 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %11, align 4
  %34 = call i8* @htonl(i32 %33)
  %35 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %12, align 8
  %36 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i8* @htonl(i32 %37)
  %39 = load %struct.cxgbi_pagepod_hdr*, %struct.cxgbi_pagepod_hdr** %12, align 8
  %40 = getelementptr inbounds %struct.cxgbi_pagepod_hdr, %struct.cxgbi_pagepod_hdr* %39, i32 0, i32 0
  store i8* %38, i8** %40, align 8
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %10, align 4
  %45 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42, i32 %43, i32 %44)
  ret void
}

declare dso_local i8* @htonl(i32) #1

declare dso_local i32 @PPOD_TID(i32) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
