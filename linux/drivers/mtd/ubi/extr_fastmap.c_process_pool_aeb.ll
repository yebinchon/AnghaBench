; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_process_pool_aeb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_fastmap.c_process_pool_aeb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_attach_info = type { i32 }
%struct.ubi_vid_hdr = type { i32 }
%struct.ubi_ainf_peb = type { i32 }
%struct.ubi_ainf_volume = type { i32 }

@UBI_FM_SB_VOLUME_ID = common dso_local global i32 0, align 4
@UBI_FM_DATA_VOLUME_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"orphaned volume in fastmap pool!\00", align 1
@UBI_BAD_FASTMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_attach_info*, %struct.ubi_vid_hdr*, %struct.ubi_ainf_peb*)* @process_pool_aeb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_pool_aeb(%struct.ubi_device* %0, %struct.ubi_attach_info* %1, %struct.ubi_vid_hdr* %2, %struct.ubi_ainf_peb* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_attach_info*, align 8
  %8 = alloca %struct.ubi_vid_hdr*, align 8
  %9 = alloca %struct.ubi_ainf_peb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ubi_ainf_volume*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_attach_info* %1, %struct.ubi_attach_info** %7, align 8
  store %struct.ubi_vid_hdr* %2, %struct.ubi_vid_hdr** %8, align 8
  store %struct.ubi_ainf_peb* %3, %struct.ubi_ainf_peb** %9, align 8
  %12 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %13 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @UBI_FM_SB_VOLUME_ID, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %23, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* @UBI_FM_DATA_VOLUME_ID, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %19, %4
  %24 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %25 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %9, align 8
  %26 = call i32 @ubi_free_aeb(%struct.ubi_attach_info* %24, %struct.ubi_ainf_peb* %25)
  store i32 0, i32* %5, align 4
  br label %54

27:                                               ; preds = %19
  %28 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call %struct.ubi_ainf_volume* @ubi_find_av(%struct.ubi_attach_info* %28, i32 %29)
  store %struct.ubi_ainf_volume* %30, %struct.ubi_ainf_volume** %11, align 8
  %31 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %11, align 8
  %32 = icmp ne %struct.ubi_ainf_volume* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %35 = call i32 @ubi_err(%struct.ubi_device* %34, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %37 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %9, align 8
  %38 = call i32 @ubi_free_aeb(%struct.ubi_attach_info* %36, %struct.ubi_ainf_peb* %37)
  %39 = load i32, i32* @UBI_BAD_FASTMAP, align 4
  store i32 %39, i32* %5, align 4
  br label %54

40:                                               ; preds = %27
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %11, align 8
  %43 = getelementptr inbounds %struct.ubi_ainf_volume, %struct.ubi_ainf_volume* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = icmp eq i32 %41, %44
  %46 = zext i1 %45 to i32
  %47 = call i32 @ubi_assert(i32 %46)
  %48 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %49 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %50 = load %struct.ubi_ainf_volume*, %struct.ubi_ainf_volume** %11, align 8
  %51 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %8, align 8
  %52 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %9, align 8
  %53 = call i32 @update_vol(%struct.ubi_device* %48, %struct.ubi_attach_info* %49, %struct.ubi_ainf_volume* %50, %struct.ubi_vid_hdr* %51, %struct.ubi_ainf_peb* %52)
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %40, %33, %23
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ubi_free_aeb(%struct.ubi_attach_info*, %struct.ubi_ainf_peb*) #1

declare dso_local %struct.ubi_ainf_volume* @ubi_find_av(%struct.ubi_attach_info*, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*) #1

declare dso_local i32 @ubi_assert(i32) #1

declare dso_local i32 @update_vol(%struct.ubi_device*, %struct.ubi_attach_info*, %struct.ubi_ainf_volume*, %struct.ubi_vid_hdr*, %struct.ubi_ainf_peb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
