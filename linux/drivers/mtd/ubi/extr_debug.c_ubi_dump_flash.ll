; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_flash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_debug.c_ubi_dump_flash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }

@EUCLEAN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"err %d while reading %d bytes from PEB %d:%d, read %zd bytes\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"dumping %d bytes of data from PEB %d, offset %d\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ubi_dump_flash(%struct.ubi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ubi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %15 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = mul nsw i32 %13, %16
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %8, align 4
  %21 = call i8* @vmalloc(i32 %20)
  store i8* %21, i8** %11, align 8
  %22 = load i8*, i8** %11, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  br label %62

25:                                               ; preds = %4
  %26 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %27 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %8, align 4
  %31 = load i8*, i8** %11, align 8
  %32 = call i32 @mtd_read(i32 %28, i32 %29, i32 %30, i64* %10, i8* %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %25
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @EUCLEAN, align 4
  %38 = sub nsw i32 0, %37
  %39 = icmp ne i32 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %35
  %41 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i64, i64* %10, align 8
  %47 = call i32 @ubi_err(%struct.ubi_device* %41, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43, i32 %44, i32 %45, i64 %46)
  br label %59

48:                                               ; preds = %35, %25
  %49 = load %struct.ubi_device*, %struct.ubi_device** %5, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @ubi_msg(%struct.ubi_device* %49, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @KERN_DEBUG, align 4
  %55 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %56 = load i8*, i8** %11, align 8
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @print_hex_dump(i32 %54, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0), i32 %55, i32 32, i32 1, i8* %56, i32 %57, i32 1)
  br label %59

59:                                               ; preds = %48, %40
  %60 = load i8*, i8** %11, align 8
  %61 = call i32 @vfree(i8* %60)
  br label %62

62:                                               ; preds = %59, %24
  ret void
}

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @mtd_read(i32, i32, i32, i64*, i8*) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, i32, i32, i32, i32, i64) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32, i32, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
