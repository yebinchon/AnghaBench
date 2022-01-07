; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_add_volume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_attach.c_add_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_ainf_volume = type { i32, i32, i32, i32 }
%struct.ubi_attach_info = type { i32 }
%struct.ubi_vid_hdr = type { i64, i32, i32, i32, i32 }

@UBI_VID_DYNAMIC = common dso_local global i64 0, align 8
@UBI_DYNAMIC_VOLUME = common dso_local global i32 0, align 4
@UBI_STATIC_VOLUME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ubi_ainf_volume* (%struct.ubi_attach_info*, i32, i32, %struct.ubi_vid_hdr*)* @add_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ubi_ainf_volume* @add_volume(%struct.ubi_attach_info* %0, i32 %1, i32 %2, %struct.ubi_vid_hdr* %3) #0 {
  %5 = alloca %struct.ubi_ainf_volume*, align 8
  %6 = alloca %struct.ubi_attach_info*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ubi_vid_hdr*, align 8
  %10 = alloca %struct.ubi_ainf_volume*, align 8
  %11 = alloca i32, align 4
  store %struct.ubi_attach_info* %0, %struct.ubi_attach_info** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.ubi_vid_hdr* %3, %struct.ubi_vid_hdr** %9, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %14 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @be32_to_cpu(i32 %15)
  %17 = icmp eq i32 %12, %16
  %18 = zext i1 %17 to i32
  %19 = call i32 @ubi_assert(i32 %18)
  %20 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.ubi_ainf_volume* @ubi_find_or_add_av(%struct.ubi_attach_info* %20, i32 %21, i32* %11)
  store %struct.ubi_ainf_volume* %22, %struct.ubi_ainf_volume** %10, align 8
  %23 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %10, align 8
  %24 = call i64 @IS_ERR(%struct.ubi_ainf_volume* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %4
  %27 = load i32, i32* %11, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26, %4
  %30 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %10, align 8
  store %struct.ubi_ainf_volume* %30, %struct.ubi_ainf_volume** %5, align 8
  br label %63

31:                                               ; preds = %26
  %32 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %33 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @be32_to_cpu(i32 %34)
  %36 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %10, align 8
  %37 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %39 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @be32_to_cpu(i32 %40)
  %42 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %10, align 8
  %43 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %45 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %10, align 8
  %48 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %9, align 8
  %50 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @UBI_VID_DYNAMIC, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %31
  %55 = load i32, i32* @UBI_DYNAMIC_VOLUME, align 4
  br label %58

56:                                               ; preds = %31
  %57 = load i32, i32* @UBI_STATIC_VOLUME, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %10, align 8
  %61 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %60, i32 0, i32 2
  store i32 %59, i32* %61, align 4
  %62 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %10, align 8
  store %struct.ubi_ainf_volume* %62, %struct.ubi_ainf_volume** %5, align 8
  br label %63

63:                                               ; preds = %58, %29
  %64 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %5, align 8
  ret %struct.ubi_ainf_volume* %64
}

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.ubi_ainf_volume* @ubi_find_or_add_av(%struct.ubi_attach_info*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.ubi_ainf_volume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
