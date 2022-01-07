; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_boot_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/core/extr_ms_block.c_msb_read_boot_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msb_data = type { i32*, i64, i32, %struct.ms_boot_page* }
%struct.ms_boot_page = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.scatterlist = type { i32 }
%struct.ms_extra_data_register = type { i32 }

@MS_BLOCK_INVALID = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"Start of a scan for the boot blocks\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MS_BLOCK_MAX_BOOT_ADDR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"boot scan: can't read pba %d\00", align 1
@MEMSTICK_MANAGEMENT_SYSFLG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"management flag doesn't indicate boot block %d\00", align 1
@MS_BLOCK_BOOT_ID = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [43 x i8] c"the pba at %d doesn' contain boot block ID\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"media doesn't contain master page, aborting\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [28 x i8] c"End of scan for boot blocks\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.msb_data*)* @msb_read_boot_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @msb_read_boot_blocks(%struct.msb_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.msb_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist, align 4
  %6 = alloca %struct.ms_extra_data_register, align 4
  %7 = alloca %struct.ms_boot_page*, align 8
  store %struct.msb_data* %0, %struct.msb_data** %3, align 8
  store i32 0, i32* %4, align 4
  %8 = load i8*, i8** @MS_BLOCK_INVALID, align 8
  %9 = ptrtoint i8* %8 to i32
  %10 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %11 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 0
  store i32 %9, i32* %13, align 4
  %14 = load i8*, i8** @MS_BLOCK_INVALID, align 8
  %15 = ptrtoint i8* %14 to i32
  %16 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %17 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %15, i32* %19, align 4
  %20 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %21 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = call i32 @dbg_verbose(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %23 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %24 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %23, i32 0, i32 3
  %25 = load %struct.ms_boot_page*, %struct.ms_boot_page** %24, align 8
  %26 = icmp ne %struct.ms_boot_page* %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %1
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.ms_boot_page* @kmalloc_array(i32 2, i32 4, i32 %28)
  store %struct.ms_boot_page* %29, %struct.ms_boot_page** %7, align 8
  %30 = load %struct.ms_boot_page*, %struct.ms_boot_page** %7, align 8
  %31 = icmp ne %struct.ms_boot_page* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %118

35:                                               ; preds = %27
  %36 = load %struct.ms_boot_page*, %struct.ms_boot_page** %7, align 8
  %37 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %38 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %37, i32 0, i32 3
  store %struct.ms_boot_page* %36, %struct.ms_boot_page** %38, align 8
  br label %43

39:                                               ; preds = %1
  %40 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %41 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %40, i32 0, i32 3
  %42 = load %struct.ms_boot_page*, %struct.ms_boot_page** %41, align 8
  store %struct.ms_boot_page* %42, %struct.ms_boot_page** %7, align 8
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* @MS_BLOCK_MAX_BOOT_ADDR, align 4
  %45 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %46 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %45, i32 0, i32 2
  store i32 %44, i32* %46, align 8
  store i32 0, i32* %4, align 4
  br label %47

47:                                               ; preds = %104, %43
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* @MS_BLOCK_MAX_BOOT_ADDR, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %107

51:                                               ; preds = %47
  %52 = load %struct.ms_boot_page*, %struct.ms_boot_page** %7, align 8
  %53 = call i32 @sg_init_one(%struct.scatterlist* %5, %struct.ms_boot_page* %52, i32 4)
  %54 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %55 = load i32, i32* %4, align 4
  %56 = call i64 @msb_read_page(%struct.msb_data* %54, i32 %55, i32 0, %struct.ms_extra_data_register* %6, %struct.scatterlist* %5, i32 0)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %104

61:                                               ; preds = %51
  %62 = getelementptr inbounds %struct.ms_extra_data_register, %struct.ms_extra_data_register* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @MEMSTICK_MANAGEMENT_SYSFLG, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = call i32 @dbg(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %68)
  br label %104

70:                                               ; preds = %61
  %71 = load %struct.ms_boot_page*, %struct.ms_boot_page** %7, align 8
  %72 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @be16_to_cpu(i32 %74)
  %76 = load i64, i64* @MS_BLOCK_BOOT_ID, align 8
  %77 = icmp ne i64 %75, %76
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %4, align 4
  %80 = call i32 @dbg(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %79)
  br label %104

81:                                               ; preds = %70
  %82 = load %struct.ms_boot_page*, %struct.ms_boot_page** %7, align 8
  %83 = call i32 @msb_fix_boot_page_endianness(%struct.ms_boot_page* %82)
  %84 = load i32, i32* %4, align 4
  %85 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %86 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %89 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  store i32 %84, i32* %91, align 4
  %92 = load %struct.ms_boot_page*, %struct.ms_boot_page** %7, align 8
  %93 = getelementptr inbounds %struct.ms_boot_page, %struct.ms_boot_page* %92, i32 1
  store %struct.ms_boot_page* %93, %struct.ms_boot_page** %7, align 8
  %94 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %95 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = add i64 %96, 1
  store i64 %97, i64* %95, align 8
  %98 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %99 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp eq i64 %100, 2
  br i1 %101, label %102, label %103

102:                                              ; preds = %81
  br label %107

103:                                              ; preds = %81
  br label %104

104:                                              ; preds = %103, %78, %67, %58
  %105 = load i32, i32* %4, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %4, align 4
  br label %47

107:                                              ; preds = %102, %47
  %108 = load %struct.msb_data*, %struct.msb_data** %3, align 8
  %109 = getelementptr inbounds %struct.msb_data, %struct.msb_data* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %116, label %112

112:                                              ; preds = %107
  %113 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %114 = load i32, i32* @EIO, align 4
  %115 = sub nsw i32 0, %114
  store i32 %115, i32* %2, align 4
  br label %118

116:                                              ; preds = %107
  %117 = call i32 @dbg_verbose(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %118

118:                                              ; preds = %116, %112, %32
  %119 = load i32, i32* %2, align 4
  ret i32 %119
}

declare dso_local i32 @dbg_verbose(i8*) #1

declare dso_local %struct.ms_boot_page* @kmalloc_array(i32, i32, i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.ms_boot_page*, i32) #1

declare dso_local i64 @msb_read_page(%struct.msb_data*, i32, i32, %struct.ms_extra_data_register*, %struct.scatterlist*, i32) #1

declare dso_local i32 @dbg(i8*, i32) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i32 @msb_fix_boot_page_endianness(%struct.ms_boot_page*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
