; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c__guest_afu_cr_readXX.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_guest.c__guest_afu_cr_readXX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.cxl_afu*, i32, i8, i8*)* @_guest_afu_cr_readXX to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_guest_afu_cr_readXX(i32 %0, %struct.cxl_afu* %1, i32 %2, i8 signext %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cxl_afu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.cxl_afu* %1, %struct.cxl_afu** %8, align 8
  store i32 %2, i32* %9, align 4
  store i8 %3, i8* %10, align 1
  store i8* %4, i8** %11, align 8
  store i32 0, i32* %14, align 4
  %15 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %16 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %90

23:                                               ; preds = %5
  %24 = load i8, i8* %10, align 1
  %25 = sext i8 %24 to i32
  %26 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %27 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp sge i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load i32, i32* @ERANGE, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %90

36:                                               ; preds = %23
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i64 @get_zeroed_page(i32 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %36
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %90

44:                                               ; preds = %36
  %45 = load %struct.cxl_afu*, %struct.cxl_afu** %8, align 8
  %46 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %45, i32 0, i32 1
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i8, i8* %10, align 1
  %52 = load i64, i64* %12, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = call i32 @virt_to_phys(i8* %53)
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @cxl_h_get_config(i32 %49, i32 %50, i8 signext %51, i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %44
  br label %86

60:                                               ; preds = %44
  %61 = load i32, i32* %7, align 4
  switch i32 %61, label %83 [
    i32 1, label %62
    i32 2, label %68
    i32 4, label %73
    i32 8, label %78
  ]

62:                                               ; preds = %60
  %63 = load i64, i64* %12, align 8
  %64 = inttoptr i64 %63 to i8*
  %65 = load i8, i8* %64, align 1
  store i8 %65, i8* %13, align 1
  %66 = load i8, i8* %13, align 1
  %67 = load i8*, i8** %11, align 8
  store i8 %66, i8* %67, align 1
  br label %85

68:                                               ; preds = %60
  %69 = load i64, i64* %12, align 8
  %70 = inttoptr i64 %69 to i32*
  %71 = call signext i8 @in_le16(i32* %70)
  %72 = load i8*, i8** %11, align 8
  store i8 %71, i8* %72, align 1
  br label %85

73:                                               ; preds = %60
  %74 = load i64, i64* %12, align 8
  %75 = inttoptr i64 %74 to i32*
  %76 = call signext i8 @in_le32(i32* %75)
  %77 = load i8*, i8** %11, align 8
  store i8 %76, i8* %77, align 1
  br label %85

78:                                               ; preds = %60
  %79 = load i64, i64* %12, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = call signext i8 @in_le64(i8* %80)
  %82 = load i8*, i8** %11, align 8
  store i8 %81, i8* %82, align 1
  br label %85

83:                                               ; preds = %60
  %84 = call i32 @WARN_ON(i32 1)
  br label %85

85:                                               ; preds = %83, %78, %73, %68, %62
  br label %86

86:                                               ; preds = %85, %59
  %87 = load i64, i64* %12, align 8
  %88 = call i32 @free_page(i64 %87)
  %89 = load i32, i32* %14, align 4
  store i32 %89, i32* %6, align 4
  br label %90

90:                                               ; preds = %86, %41, %33, %20
  %91 = load i32, i32* %6, align 4
  ret i32 %91
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @cxl_h_get_config(i32, i32, i8 signext, i32, i32) #1

declare dso_local i32 @virt_to_phys(i8*) #1

declare dso_local signext i8 @in_le16(i32*) #1

declare dso_local signext i8 @in_le32(i32*) #1

declare dso_local signext i8 @in_le64(i8*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
