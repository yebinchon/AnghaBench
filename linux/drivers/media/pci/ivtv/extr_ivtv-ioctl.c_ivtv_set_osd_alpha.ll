; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_set_osd_alpha.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-ioctl.c_ivtv_set_osd_alpha.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, i32, i32, i32, i32 }

@CX2341X_OSD_SET_GLOBAL_ALPHA = common dso_local global i32 0, align 4
@CX2341X_OSD_SET_CHROMA_KEY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_set_osd_alpha(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %3 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %4 = load i32, i32* @CX2341X_OSD_SET_GLOBAL_ALPHA, align 4
  %5 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %6 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %5, i32 0, i32 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %9 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %8, i32 0, i32 3
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %12 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %3, i32 %4, i32 3, i32 %7, i32 %10, i32 %16)
  %18 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %19 = load i32, i32* @CX2341X_OSD_SET_CHROMA_KEY, align 4
  %20 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %21 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %24 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 (%struct.ivtv*, i32, i32, i32, i32, ...) @ivtv_vapi(%struct.ivtv* %18, i32 %19, i32 2, i32 %22, i32 %25)
  ret void
}

declare dso_local i32 @ivtv_vapi(%struct.ivtv*, i32, i32, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
