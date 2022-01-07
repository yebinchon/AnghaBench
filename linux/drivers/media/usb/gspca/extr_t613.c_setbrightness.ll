; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_t613.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@__const.setbrightness.set6 = private unnamed_addr constant [4 x i32] [i32 143, i32 36, i32 195, i32 0], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca [4 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = bitcast [4 x i32]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %6, i8* align 16 bitcast ([4 x i32]* @__const.setbrightness.set6 to i8*), i64 16, i1 false)
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 7
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  %10 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 1
  store i32 38, i32* %10, align 4
  %11 = load i32, i32* %4, align 4
  %12 = mul nsw i32 %11, 16
  %13 = sub nsw i32 112, %12
  %14 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %13, i32* %14, align 4
  br label %21

15:                                               ; preds = %2
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 %16, 7
  %18 = mul nsw i32 %17, 16
  %19 = add nsw i32 0, %18
  %20 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 3
  store i32 %19, i32* %20, align 4
  br label %21

21:                                               ; preds = %15, %9
  %22 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %5, i64 0, i64 0
  %24 = call i32 @reg_w_buf(%struct.gspca_dev* %22, i32* %23, i32 16)
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
