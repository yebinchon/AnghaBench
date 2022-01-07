; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_slram.c_parse_cmdline.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/devices/extr_slram.c_parse_cmdline.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"slram: devname=%s, devstart=0x%lx, devlength=0x%lx\0A\00", align 1
@SLRAM_BLK_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"slram: Illegal length parameter.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*, i8*)* @parse_cmdline to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_cmdline(i8* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load i8*, i8** %6, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %13
  %17 = load i8*, i8** %7, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %16, %13, %3
  %20 = call i32 (...) @unregister_devices()
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %79

23:                                               ; preds = %16
  %24 = load i8*, i8** %6, align 8
  %25 = call i64 @simple_strtoul(i8* %24, i8** %8, i32 0)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i8*, i8** %8, align 8
  %28 = call i64 @handle_unit(i64 %26, i8* %27)
  store i64 %28, i64* %9, align 8
  %29 = load i8*, i8** %7, align 8
  %30 = load i8, i8* %29, align 1
  %31 = sext i8 %30 to i32
  %32 = icmp ne i32 %31, 43
  br i1 %32, label %33, label %47

33:                                               ; preds = %23
  %34 = load i8*, i8** %7, align 8
  %35 = call i64 @simple_strtoul(i8* %34, i8** %8, i32 0)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = call i64 @handle_unit(i64 %36, i8* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %9, align 8
  %41 = icmp ult i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %75

43:                                               ; preds = %33
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* %10, align 8
  %46 = sub i64 %45, %44
  store i64 %46, i64* %10, align 8
  br label %54

47:                                               ; preds = %23
  %48 = load i8*, i8** %7, align 8
  %49 = getelementptr inbounds i8, i8* %48, i64 1
  %50 = call i64 @simple_strtoul(i8* %49, i8** %8, i32 0)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i8*, i8** %8, align 8
  %53 = call i64 @handle_unit(i64 %51, i8* %52)
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %47, %43
  %55 = load i8*, i8** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @T(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i8* %55, i64 %56, i64 %57)
  %59 = load i64, i64* %10, align 8
  %60 = load i64, i64* @SLRAM_BLK_SZ, align 8
  %61 = urem i64 %59, %60
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %54
  br label %75

64:                                               ; preds = %54
  %65 = load i8*, i8** %5, align 8
  %66 = load i64, i64* %9, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call i64 @register_device(i8* %65, i64 %66, i64 %67)
  store i64 %68, i64* %9, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %64
  %71 = call i32 (...) @unregister_devices()
  %72 = load i64, i64* %9, align 8
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %79

74:                                               ; preds = %64
  store i32 0, i32* %4, align 4
  br label %79

75:                                               ; preds = %63, %42
  %76 = call i32 @E(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %75, %74, %70, %19
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local i32 @unregister_devices(...) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @handle_unit(i64, i8*) #1

declare dso_local i32 @T(i8*, i8*, i64, i64) #1

declare dso_local i64 @register_device(i8*, i64, i64) #1

declare dso_local i32 @E(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
