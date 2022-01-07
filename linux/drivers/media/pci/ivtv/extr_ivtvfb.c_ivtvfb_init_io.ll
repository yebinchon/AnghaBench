; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_init_io.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_init_io.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, %struct.osd_info* }
%struct.osd_info = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [27 x i8] c"Failed to initialize ivtv\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Firmware failed to respond\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@IVTV_DECODER_OFFSET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"abort, video memory 0x%x @ 0x%lx isn't mapped!\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Framebuffer at 0x%lx, mapped to 0x%p, size %dk\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv*)* @ivtvfb_init_io to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_init_io(%struct.ivtv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.osd_info*, align 8
  %5 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  %6 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 3
  %8 = load %struct.osd_info*, %struct.osd_info** %7, align 8
  store %struct.osd_info* %8, %struct.osd_info** %4, align 8
  store i32 31, i32* %5, align 4
  %9 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %10 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %9, i32 0, i32 2
  %11 = call i32 @mutex_lock(i32* %10)
  %12 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %13 = call i64 @ivtv_init_on_first_open(%struct.ivtv* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %1
  %16 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 2
  %18 = call i32 @mutex_unlock(i32* %17)
  %19 = call i32 (i8*, ...) @IVTVFB_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %155

22:                                               ; preds = %1
  %23 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %24 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %23, i32 0, i32 2
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %27 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %28 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %27, i32 0, i32 0
  %29 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %30 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %29, i32 0, i32 1
  %31 = call i64 @ivtvfb_get_framebuffer(%struct.ivtv* %26, i32* %28, i32* %30)
  %32 = icmp slt i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %22
  %34 = call i32 (i8*, ...) @IVTVFB_ERR(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %155

37:                                               ; preds = %22
  %38 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %39 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %38, i32 0, i32 1
  store i32 1704960, i32* %39, align 4
  %40 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %41 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @IVTV_DECODER_OFFSET, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %46 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = add nsw i32 %44, %47
  %49 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %50 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %52 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %55 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %53, %56
  %58 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %59 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %61 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %74, label %64

64:                                               ; preds = %37
  %65 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %66 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %69 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @IVTVFB_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %67, i32 %70)
  %72 = load i32, i32* @EIO, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %2, align 4
  br label %155

74:                                               ; preds = %37
  %75 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %76 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %79 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %82 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = sdiv i32 %83, 1024
  %85 = call i32 @IVTVFB_INFO(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %77, i32 %80, i32 %84)
  br label %86

86:                                               ; preds = %95, %74
  %87 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %88 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %5, align 4
  %91 = shl i32 1, %90
  %92 = and i32 %89, %91
  %93 = icmp ne i32 %92, 0
  %94 = xor i1 %93, true
  br i1 %94, label %95, label %98

95:                                               ; preds = %86
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, -1
  store i32 %97, i32* %5, align 4
  br label %86

98:                                               ; preds = %86
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  %101 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %102 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %5, align 4
  %105 = shl i32 1, %104
  %106 = sub nsw i32 %105, 1
  %107 = xor i32 %106, -1
  %108 = and i32 %103, %107
  %109 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %110 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %109, i32 0, i32 4
  store i32 %108, i32* %110, align 4
  %111 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %112 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %115 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %113, %116
  %118 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %119 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %118, i32 0, i32 5
  store i32 %117, i32* %119, align 4
  %120 = load i32, i32* %5, align 4
  %121 = shl i32 1, %120
  %122 = sub nsw i32 %121, 1
  %123 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %124 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %123, i32 0, i32 5
  %125 = load i32, i32* %124, align 4
  %126 = add nsw i32 %125, %122
  store i32 %126, i32* %124, align 4
  %127 = load i32, i32* %5, align 4
  %128 = shl i32 1, %127
  %129 = sub nsw i32 %128, 1
  %130 = xor i32 %129, -1
  %131 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %132 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %131, i32 0, i32 5
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, %130
  store i32 %134, i32* %132, align 4
  %135 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %136 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %135, i32 0, i32 4
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %139 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %138, i32 0, i32 5
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %142 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %141, i32 0, i32 4
  %143 = load i32, i32* %142, align 4
  %144 = sub nsw i32 %140, %143
  %145 = call i32 @arch_phys_wc_add(i32 %137, i32 %144)
  %146 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %147 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 4
  %148 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %149 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.osd_info*, %struct.osd_info** %4, align 8
  %152 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %151, i32 0, i32 1
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @memset_io(i32 %150, i32 0, i32 %153)
  store i32 0, i32* %2, align 4
  br label %155

155:                                              ; preds = %98, %64, %33, %15
  %156 = load i32, i32* %2, align 4
  ret i32 %156
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @ivtv_init_on_first_open(%struct.ivtv*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @IVTVFB_ERR(i8*, ...) #1

declare dso_local i64 @ivtvfb_get_framebuffer(%struct.ivtv*, i32*, i32*) #1

declare dso_local i32 @IVTVFB_INFO(i8*, i32, i32, i32) #1

declare dso_local i32 @arch_phys_wc_add(i32, i32) #1

declare dso_local i32 @memset_io(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
