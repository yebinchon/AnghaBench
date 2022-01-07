; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_create_vtbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_vtbl.c_create_vtbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32 }
%struct.ubi_attach_info = type { i32, i32 }
%struct.ubi_vid_io_buf = type { i32 }
%struct.ubi_vid_hdr = type { i32, i8*, i8*, i8*, i8*, i32, i8*, i32 }
%struct.ubi_ainf_peb = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"create volume table (copy #%d)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UBI_LAYOUT_VOLUME_TYPE = common dso_local global i32 0, align 4
@UBI_LAYOUT_VOLUME_ID = common dso_local global i32 0, align 4
@UBI_LAYOUT_VOLUME_COMPAT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ubi_device*, %struct.ubi_attach_info*, i32, i8*)* @create_vtbl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @create_vtbl(%struct.ubi_device* %0, %struct.ubi_attach_info* %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca %struct.ubi_attach_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.ubi_vid_io_buf*, align 8
  %13 = alloca %struct.ubi_vid_hdr*, align 8
  %14 = alloca %struct.ubi_ainf_peb*, align 8
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store %struct.ubi_attach_info* %1, %struct.ubi_attach_info** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* %8, align 4
  %16 = add nsw i32 %15, 1
  %17 = call i32 @dbg_gen(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device* %18, i32 %19)
  store %struct.ubi_vid_io_buf* %20, %struct.ubi_vid_io_buf** %12, align 8
  %21 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %12, align 8
  %22 = icmp ne %struct.ubi_vid_io_buf* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %4
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %131

26:                                               ; preds = %4
  %27 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %12, align 8
  %28 = call %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf* %27)
  store %struct.ubi_vid_hdr* %28, %struct.ubi_vid_hdr** %13, align 8
  br label %29

29:                                               ; preds = %116, %26
  %30 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %31 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %32 = call %struct.ubi_ainf_peb* @ubi_early_get_peb(%struct.ubi_device* %30, %struct.ubi_attach_info* %31)
  store %struct.ubi_ainf_peb* %32, %struct.ubi_ainf_peb** %14, align 8
  %33 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %14, align 8
  %34 = call i64 @IS_ERR(%struct.ubi_ainf_peb* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %14, align 8
  %38 = call i32 @PTR_ERR(%struct.ubi_ainf_peb* %37)
  store i32 %38, i32* %10, align 4
  br label %127

39:                                               ; preds = %29
  %40 = load i32, i32* @UBI_LAYOUT_VOLUME_TYPE, align 4
  %41 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %13, align 8
  %42 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %41, i32 0, i32 7
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @UBI_LAYOUT_VOLUME_ID, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %13, align 8
  %46 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %45, i32 0, i32 6
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* @UBI_LAYOUT_VOLUME_COMPAT, align 4
  %48 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %13, align 8
  %49 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %48, i32 0, i32 5
  store i32 %47, i32* %49, align 8
  %50 = call i8* @cpu_to_be32(i32 0)
  %51 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %13, align 8
  %52 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %51, i32 0, i32 2
  store i8* %50, i8** %52, align 8
  %53 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %13, align 8
  %54 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %53, i32 0, i32 3
  store i8* %50, i8** %54, align 8
  %55 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %13, align 8
  %56 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %55, i32 0, i32 4
  store i8* %50, i8** %56, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i8* @cpu_to_be32(i32 %57)
  %59 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %13, align 8
  %60 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %59, i32 0, i32 1
  store i8* %58, i8** %60, align 8
  %61 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %62 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %62, align 4
  %65 = call i32 @cpu_to_be64(i32 %64)
  %66 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %13, align 8
  %67 = getelementptr inbounds %struct.ubi_vid_hdr, %struct.ubi_vid_hdr* %66, i32 0, i32 0
  store i32 %65, i32* %67, align 8
  %68 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %69 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %14, align 8
  %70 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %12, align 8
  %73 = call i32 @ubi_io_write_vid_hdr(%struct.ubi_device* %68, i32 %71, %struct.ubi_vid_io_buf* %72)
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %39
  br label %107

77:                                               ; preds = %39
  %78 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %79 = load i8*, i8** %9, align 8
  %80 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %14, align 8
  %81 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %84 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @ubi_io_write_data(%struct.ubi_device* %78, i8* %79, i32 %82, i32 0, i32 %85)
  store i32 %86, i32* %10, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %77
  br label %107

90:                                               ; preds = %77
  %91 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %92 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %93 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %14, align 8
  %94 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %14, align 8
  %97 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.ubi_vid_hdr*, %struct.ubi_vid_hdr** %13, align 8
  %100 = call i32 @ubi_add_to_av(%struct.ubi_device* %91, %struct.ubi_attach_info* %92, i32 %95, i32 %98, %struct.ubi_vid_hdr* %99, i32 0)
  store i32 %100, i32* %10, align 4
  %101 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %102 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %14, align 8
  %103 = call i32 @ubi_free_aeb(%struct.ubi_attach_info* %101, %struct.ubi_ainf_peb* %102)
  %104 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %12, align 8
  %105 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %104)
  %106 = load i32, i32* %10, align 4
  store i32 %106, i32* %5, align 4
  br label %131

107:                                              ; preds = %89, %76
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @EIO, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %123

112:                                              ; preds = %107
  %113 = load i32, i32* %11, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %11, align 4
  %115 = icmp sle i32 %114, 5
  br i1 %115, label %116, label %123

116:                                              ; preds = %112
  %117 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %14, align 8
  %118 = getelementptr inbounds %struct.ubi_ainf_peb, %struct.ubi_ainf_peb* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %118, i32 0, i32 0
  %120 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %121 = getelementptr inbounds %struct.ubi_attach_info, %struct.ubi_attach_info* %120, i32 0, i32 0
  %122 = call i32 @list_add(i32* %119, i32* %121)
  br label %29

123:                                              ; preds = %112, %107
  %124 = load %struct.ubi_attach_info*, %struct.ubi_attach_info** %7, align 8
  %125 = load %struct.ubi_ainf_peb*, %struct.ubi_ainf_peb** %14, align 8
  %126 = call i32 @ubi_free_aeb(%struct.ubi_attach_info* %124, %struct.ubi_ainf_peb* %125)
  br label %127

127:                                              ; preds = %123, %36
  %128 = load %struct.ubi_vid_io_buf*, %struct.ubi_vid_io_buf** %12, align 8
  %129 = call i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf* %128)
  %130 = load i32, i32* %10, align 4
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %127, %90, %23
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @dbg_gen(i8*, i32) #1

declare dso_local %struct.ubi_vid_io_buf* @ubi_alloc_vid_buf(%struct.ubi_device*, i32) #1

declare dso_local %struct.ubi_vid_hdr* @ubi_get_vid_hdr(%struct.ubi_vid_io_buf*) #1

declare dso_local %struct.ubi_ainf_peb* @ubi_early_get_peb(%struct.ubi_device*, %struct.ubi_attach_info*) #1

declare dso_local i64 @IS_ERR(%struct.ubi_ainf_peb*) #1

declare dso_local i32 @PTR_ERR(%struct.ubi_ainf_peb*) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i32 @ubi_io_write_vid_hdr(%struct.ubi_device*, i32, %struct.ubi_vid_io_buf*) #1

declare dso_local i32 @ubi_io_write_data(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @ubi_add_to_av(%struct.ubi_device*, %struct.ubi_attach_info*, i32, i32, %struct.ubi_vid_hdr*, i32) #1

declare dso_local i32 @ubi_free_aeb(%struct.ubi_attach_info*, %struct.ubi_ainf_peb*) #1

declare dso_local i32 @ubi_free_vid_buf(%struct.ubi_vid_io_buf*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
