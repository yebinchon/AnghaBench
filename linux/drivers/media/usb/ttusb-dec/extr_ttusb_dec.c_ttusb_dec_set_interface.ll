; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_set_interface.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/ttusb-dec/extr_ttusb_dec.c_ttusb_dec_set_interface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttusb_dec = type { i32, i32 }

@__const.ttusb_dec_set_interface.b = private unnamed_addr constant [1 x i32] [i32 5], align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ttusb_dec*, i32)* @ttusb_dec_set_interface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb_dec_set_interface(%struct.ttusb_dec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttusb_dec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [1 x i32], align 4
  store %struct.ttusb_dec* %0, %struct.ttusb_dec** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %8 = bitcast [1 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast ([1 x i32]* @__const.ttusb_dec_set_interface.b to i8*), i64 4, i1 false)
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.ttusb_dec*, %struct.ttusb_dec** %4, align 8
  %11 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %9, %12
  br i1 %13, label %14, label %48

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  switch i32 %15, label %39 [
    i32 129, label %16
    i32 130, label %21
    i32 128, label %34
  ]

16:                                               ; preds = %14
  %17 = load %struct.ttusb_dec*, %struct.ttusb_dec** %4, align 8
  %18 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @usb_set_interface(i32 %19, i32 0, i32 0)
  store i32 %20, i32* %6, align 4
  br label %39

21:                                               ; preds = %14
  %22 = load %struct.ttusb_dec*, %struct.ttusb_dec** %4, align 8
  %23 = getelementptr inbounds [1 x i32], [1 x i32]* %7, i64 0, i64 0
  %24 = call i32 @ttusb_dec_send_command(%struct.ttusb_dec* %22, i32 128, i32 4, i32* %23, i32* null, i32* null)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %3, align 4
  br label %49

29:                                               ; preds = %21
  %30 = load %struct.ttusb_dec*, %struct.ttusb_dec** %4, align 8
  %31 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @usb_set_interface(i32 %32, i32 0, i32 8)
  store i32 %33, i32* %6, align 4
  br label %39

34:                                               ; preds = %14
  %35 = load %struct.ttusb_dec*, %struct.ttusb_dec** %4, align 8
  %36 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @usb_set_interface(i32 %37, i32 0, i32 1)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %14, %34, %29, %16
  %40 = load i32, i32* %6, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i32, i32* %6, align 4
  store i32 %43, i32* %3, align 4
  br label %49

44:                                               ; preds = %39
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.ttusb_dec*, %struct.ttusb_dec** %4, align 8
  %47 = getelementptr inbounds %struct.ttusb_dec, %struct.ttusb_dec* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %2
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %48, %42, %27
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @usb_set_interface(i32, i32, i32) #2

declare dso_local i32 @ttusb_dec_send_command(%struct.ttusb_dec*, i32, i32, i32*, i32*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
