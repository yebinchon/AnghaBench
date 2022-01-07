; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_memory_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/b2c2/extr_flexcop-usb.c_flexcop_usb_memory_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_usb = type { i32 }

@USB_MEM_READ_MAX = common dso_local global i64 0, align 8
@USB_MEM_WRITE_MAX = common dso_local global i64 0, align 8
@USB_FLASH_MAX = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%x\0A\00", align 1
@V8_MEMORY_PAGE_MASK = common dso_local global i32 0, align 4
@V8_MEMORY_EXTENDED = common dso_local global i32 0, align 4
@V8_MEMORY_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_usb*, i32, i64, i32, i32, i32*, i32)* @flexcop_usb_memory_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_memory_req(%struct.flexcop_usb* %0, i32 %1, i64 %2, i32 %3, i32 %4, i32* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.flexcop_usb*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  store %struct.flexcop_usb* %0, %struct.flexcop_usb** %9, align 8
  store i32 %1, i32* %10, align 4
  store i64 %2, i64* %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32* %5, i32** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %20 = load i32, i32* %10, align 4
  switch i32 %20, label %27 [
    i32 129, label %21
    i32 128, label %23
    i32 130, label %25
  ]

21:                                               ; preds = %7
  %22 = load i64, i64* @USB_MEM_READ_MAX, align 8
  store i64 %22, i64* %18, align 8
  br label %30

23:                                               ; preds = %7
  %24 = load i64, i64* @USB_MEM_WRITE_MAX, align 8
  store i64 %24, i64* %18, align 8
  br label %30

25:                                               ; preds = %7
  %26 = load i64, i64* @USB_FLASH_MAX, align 8
  store i64 %26, i64* %18, align 8
  br label %30

27:                                               ; preds = %7
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %91

30:                                               ; preds = %25, %23, %21
  store i32 0, i32* %16, align 4
  br label %31

31:                                               ; preds = %83, %30
  %32 = load i32, i32* %16, align 4
  %33 = load i32, i32* %15, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %90

35:                                               ; preds = %31
  %36 = load i64, i64* %18, align 8
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i64 @bytes_left_to_read_on_page(i32 %37, i32 %38)
  %40 = icmp slt i64 %36, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load i64, i64* %18, align 8
  br label %47

43:                                               ; preds = %35
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* %15, align 4
  %46 = call i64 @bytes_left_to_read_on_page(i32 %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %41
  %48 = phi i64 [ %42, %41 ], [ %46, %43 ]
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @V8_MEMORY_PAGE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @V8_MEMORY_EXTENDED, align 4
  %54 = load i32, i32* %13, align 4
  %55 = mul nsw i32 %53, %54
  %56 = or i32 %52, %55
  %57 = call i32 @deb_info(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load %struct.flexcop_usb*, %struct.flexcop_usb** %9, align 8
  %59 = load i32, i32* %10, align 4
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @V8_MEMORY_PAGE_SIZE, align 4
  %63 = sdiv i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = add nsw i64 %60, %64
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* @V8_MEMORY_PAGE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @V8_MEMORY_EXTENDED, align 4
  %70 = load i32, i32* %13, align 4
  %71 = mul nsw i32 %69, %70
  %72 = or i32 %68, %71
  %73 = load i32*, i32** %14, align 8
  %74 = load i32, i32* %16, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  %77 = load i32, i32* %19, align 4
  %78 = call i32 @flexcop_usb_v8_memory_req(%struct.flexcop_usb* %58, i32 %59, i64 %65, i32 %72, i32* %76, i32 %77)
  store i32 %78, i32* %17, align 4
  %79 = load i32, i32* %17, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %47
  %82 = load i32, i32* %17, align 4
  store i32 %82, i32* %8, align 4
  br label %91

83:                                               ; preds = %47
  %84 = load i32, i32* %19, align 4
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %15, align 4
  %89 = sub nsw i32 %88, %87
  store i32 %89, i32* %15, align 4
  br label %31

90:                                               ; preds = %31
  store i32 0, i32* %8, align 4
  br label %91

91:                                               ; preds = %90, %81, %27
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i64 @bytes_left_to_read_on_page(i32, i32) #1

declare dso_local i32 @deb_info(i8*, i32) #1

declare dso_local i32 @flexcop_usb_v8_memory_req(%struct.flexcop_usb*, i32, i64, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
