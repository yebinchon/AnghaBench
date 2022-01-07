; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_restore.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/ivtv/extr_ivtvfb.c_ivtvfb_restore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { %struct.osd_info* }
%struct.osd_info = type { i32*, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*)* @ivtvfb_restore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtvfb_restore(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  %3 = alloca %struct.osd_info*, align 8
  %4 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %5 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %6 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %5, i32 0, i32 0
  %7 = load %struct.osd_info*, %struct.osd_info** %6, align 8
  store %struct.osd_info* %7, %struct.osd_info** %3, align 8
  %8 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %9 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %10 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %9, i32 0, i32 4
  %11 = call i32 @ivtvfb_set_var(%struct.ivtv* %8, i32* %10)
  %12 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %13 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %16 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %15, i32 0, i32 2
  %17 = call i32 @ivtvfb_blank(i32 %14, i32* %16)
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %32, %1
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 256
  br i1 %20, label %21, label %35

21:                                               ; preds = %18
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @write_reg(i32 %22, i32 10800)
  %24 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %25 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @write_reg(i32 %30, i32 10804)
  br label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %18

35:                                               ; preds = %18
  %36 = load %struct.osd_info*, %struct.osd_info** %3, align 8
  %37 = getelementptr inbounds %struct.osd_info, %struct.osd_info* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @write_reg(i32 %38, i32 10764)
  ret void
}

declare dso_local i32 @ivtvfb_set_var(%struct.ivtv*, i32*) #1

declare dso_local i32 @ivtvfb_blank(i32, i32*) #1

declare dso_local i32 @write_reg(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
