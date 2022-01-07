; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i32, i32, i64 }
%struct.ivtv = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ivtvfb_set_par\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"ivtvfb_set_par\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*)* @ivtvfb_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtvfb_set_par(%struct.fb_info* %0) #0 {
  %2 = alloca %struct.fb_info*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv*, align 8
  store %struct.fb_info* %0, %struct.fb_info** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %6 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %5, i32 0, i32 2
  %7 = load i64, i64* %6, align 8
  %8 = inttoptr i64 %7 to %struct.ivtv*
  store %struct.ivtv* %8, %struct.ivtv** %4, align 8
  %9 = call i32 @IVTVFB_DEBUG_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 1
  %13 = call i32 @ivtvfb_set_var(%struct.ivtv* %10, i32* %12)
  store i32 %13, i32* %3, align 4
  %14 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %17 = call i32 @ivtvfb_pan_display(i32* %15, %struct.fb_info* %16)
  %18 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %19 = load %struct.fb_info*, %struct.fb_info** %2, align 8
  %20 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %19, i32 0, i32 0
  %21 = call i32 @ivtvfb_get_fix(%struct.ivtv* %18, i32* %20)
  %22 = load %struct.ivtv*, %struct.ivtv** %4, align 8
  %23 = call i32 @ivtv_firmware_check(%struct.ivtv* %22, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %24 = load i32, i32* %3, align 4
  ret i32 %24
}

declare dso_local i32 @IVTVFB_DEBUG_INFO(i8*) #1

declare dso_local i32 @ivtvfb_set_var(%struct.ivtv*, i32*) #1

declare dso_local i32 @ivtvfb_pan_display(i32*, %struct.fb_info*) #1

declare dso_local i32 @ivtvfb_get_fix(%struct.ivtv*, i32*) #1

declare dso_local i32 @ivtv_firmware_check(%struct.ivtv*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
