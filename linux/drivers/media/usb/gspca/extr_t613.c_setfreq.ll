; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_setfreq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32 }

@__const.setfreq.freq = private unnamed_addr constant [4 x i32] [i32 102, i32 0, i32 168, i32 232], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setfreq(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [4 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %5, align 8
  %10 = bitcast [4 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([4 x i32]* @__const.setfreq.freq to i8*), i64 16, i1 false)
  %11 = load %struct.sd*, %struct.sd** %5, align 8
  %12 = getelementptr inbounds %struct.sd, %struct.sd* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %21 [
    i32 129, label %14
    i32 128, label %20
  ]

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %14
  %18 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 168, i32* %18, align 4
  br label %19

19:                                               ; preds = %17, %14
  store i32 65, i32* %6, align 4
  br label %22

20:                                               ; preds = %2
  store i32 202, i32* %6, align 4
  br label %22

21:                                               ; preds = %2
  store i32 64, i32* %6, align 4
  br label %22

22:                                               ; preds = %21, %20, %19
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %29 [
    i32 0, label %24
    i32 2, label %26
  ]

24:                                               ; preds = %22
  %25 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 3
  store i32 240, i32* %25, align 4
  br label %29

26:                                               ; preds = %22
  %27 = load i32, i32* %6, align 4
  %28 = and i32 %27, -65
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %22, %26, %24
  %30 = load i32, i32* %6, align 4
  %31 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 1
  store i32 %30, i32* %31, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %34 = call i32 @reg_w_buf(%struct.gspca_dev* %32, i32* %33, i32 16)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @reg_w_buf(%struct.gspca_dev*, i32*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
