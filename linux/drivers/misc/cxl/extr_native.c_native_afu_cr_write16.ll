; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_cr_write16.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_native_afu_cr_write16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cxl_afu*, i32, i32, i32)* @native_afu_cr_write16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @native_afu_cr_write16(%struct.cxl_afu* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxl_afu*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %8, align 4
  %16 = sext i32 %15 to i64
  %17 = and i64 %16, -4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %10, align 4
  %19 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %10, align 4
  %22 = call i32 @native_afu_cr_read32(%struct.cxl_afu* %19, i32 %20, i32 %21, i32* %11)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %14, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %4
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %5, align 4
  br label %51

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = and i32 %28, 3
  %30 = mul nsw i32 %29, 8
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp eq i32 %31, 24
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN_ON(i32 %33)
  %35 = load i32, i32* %13, align 4
  %36 = shl i32 65535, %35
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = xor i32 %38, -1
  %40 = and i32 %37, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %13, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %40, %43
  store i32 %44, i32* %11, align 4
  %45 = load %struct.cxl_afu*, %struct.cxl_afu** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = call i32 @native_afu_cr_write32(%struct.cxl_afu* %45, i32 %46, i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %14, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %27, %25
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @native_afu_cr_read32(%struct.cxl_afu*, i32, i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @native_afu_cr_write32(%struct.cxl_afu*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
