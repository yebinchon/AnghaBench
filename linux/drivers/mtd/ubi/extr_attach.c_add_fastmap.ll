; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_add_fastmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_add_fastmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_attach_info = type { i32 }
%struct.ubi_vid_hdr = type { i32, i32 }
%struct.ubi_ainf_peb = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"add to fastmap list: PEB %d, vol_id %d, sqnum: %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_attach_info*, i32, %struct.ubi_vid_hdr*, i32)* @add_fastmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_fastmap(%struct.ubi_attach_info* %0, i32 %1, %struct.ubi_vid_hdr* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_attach_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ubi_vid_hdr*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ubi_ainf_peb*, align 8
  store %struct.ubi_attach_info* %0, %struct.ubi_attach_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ubi_vid_hdr* %2, %struct.ubi_vid_hdr** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %9, align 4
  %14 = call %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info* %11, i32 %12, i32 %13)
  store %struct.ubi_ainf_peb* %14, %struct.ubi_ainf_peb** %10, align 8
  %15 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %10, align 8
  %16 = icmp ne %struct.ubi_ainf_peb* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %47

20:                                               ; preds = %4
  %21 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %22 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @be32_to_cpu(i32 %23)
  %25 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %10, align 8
  %26 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @be64_to_cpu(i32 %29)
  %31 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %10, align 8
  %32 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %10, align 8
  %34 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %6, align 8
  %37 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %36, i32 0, i32 0
  %38 = call i32 @list_add(i32* %35, i32* %37)
  %39 = load i32, i32* %7, align 4
  %40 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %10, align 8
  %41 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %10, align 8
  %44 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @dbg_bld(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %39, i32 %42, i32 %45)
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %20, %17
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

declare dso_local %struct.ubi_ainf_peb* @ubi_alloc_aeb(%struct.ubi_attach_info*, i32, i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @be64_to_cpu(i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @dbg_bld(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
