; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_allocate_dummy_read_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_cxllib.c_allocate_dummy_read_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CXL_DUMMY_READ_SIZE = common dso_local global i64 0, align 8
@CXL_DUMMY_READ_ALIGN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Dummy read buffer alignment issue\00", align 1
@dummy_read_addr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @allocate_dummy_read_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allocate_dummy_read_buf() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i64, i64* @CXL_DUMMY_READ_SIZE, align 8
  %6 = load i64, i64* @CXL_DUMMY_READ_ALIGN, align 8
  %7 = shl i64 1, %6
  %8 = add i64 %5, %7
  store i64 %8, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call i64 @kzalloc(i64 %9, i32 %10)
  store i64 %11, i64* %2, align 8
  %12 = load i64, i64* %2, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %0
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %38

17:                                               ; preds = %0
  %18 = load i64, i64* %2, align 8
  %19 = load i64, i64* @CXL_DUMMY_READ_ALIGN, align 8
  %20 = shl i64 1, %19
  %21 = add i64 %18, %20
  %22 = sub i64 %21, 1
  %23 = load i64, i64* @CXL_DUMMY_READ_ALIGN, align 8
  %24 = shl i64 -1, %23
  %25 = and i64 %22, %24
  store i64 %25, i64* %3, align 8
  %26 = load i64, i64* %3, align 8
  %27 = load i64, i64* @CXL_DUMMY_READ_SIZE, align 8
  %28 = add i64 %26, %27
  %29 = load i64, i64* %2, align 8
  %30 = load i64, i64* %4, align 8
  %31 = add i64 %29, %30
  %32 = icmp ugt i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i32 @WARN(i32 %33, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %35 = load i64, i64* %3, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @virt_to_phys(i8* %36)
  store i32 %37, i32* @dummy_read_addr, align 4
  store i32 0, i32* %1, align 4
  br label %38

38:                                               ; preds = %17, %14
  %39 = load i32, i32* %1, align 4
  ret i32 %39
}

declare dso_local i64 @kzalloc(i64, i32) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @virt_to_phys(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
