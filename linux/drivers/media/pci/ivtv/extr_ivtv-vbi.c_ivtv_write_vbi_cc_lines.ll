; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_ivtv_write_vbi_cc_lines.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtv-vbi.c_ivtv_write_vbi_cc_lines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, %struct.vbi_info }
%struct.vbi_info = type { i64, i32* }
%struct.vbi_cc = type { i32 }

@IVTV_F_I_UPDATE_CC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, %struct.vbi_cc*)* @ivtv_write_vbi_cc_lines to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_write_vbi_cc_lines(%struct.ivtv* %0, %struct.vbi_cc* %1) #0 {
  %3 = alloca %struct.ivtv*, align 8
  %4 = alloca %struct.vbi_cc*, align 8
  %5 = alloca %struct.vbi_info*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %3, align 8
  store %struct.vbi_cc* %1, %struct.vbi_cc** %4, align 8
  %6 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %7 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %6, i32 0, i32 1
  store %struct.vbi_info* %7, %struct.vbi_info** %5, align 8
  %8 = load %struct.vbi_info*, %struct.vbi_info** %5, align 8
  %9 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vbi_info*, %struct.vbi_info** %5, align 8
  %12 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @ARRAY_SIZE(i32* %13)
  %15 = icmp ult i64 %10, %14
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.vbi_info*, %struct.vbi_info** %5, align 8
  %18 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.vbi_info*, %struct.vbi_info** %5, align 8
  %21 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = load %struct.vbi_cc*, %struct.vbi_cc** %4, align 8
  %25 = call i32 @memcpy(i32* %23, %struct.vbi_cc* %24, i32 4)
  %26 = load %struct.vbi_info*, %struct.vbi_info** %5, align 8
  %27 = getelementptr inbounds %struct.vbi_info, %struct.vbi_info* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add i64 %28, 1
  store i64 %29, i64* %27, align 8
  %30 = load i32, i32* @IVTV_F_I_UPDATE_CC, align 4
  %31 = load %struct.ivtv*, %struct.ivtv** %3, align 8
  %32 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %31, i32 0, i32 0
  %33 = call i32 @set_bit(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %16, %2
  ret void
}

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.vbi_cc*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
