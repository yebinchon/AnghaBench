; ModuleID = '/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_self_check_all_ff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mtd/ubi/extr_io.c_ubi_self_check_all_ff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubi_device = type { i32, i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"cannot allocate memory to check for 0xFFs\00", align 1
@.str.1 = private unnamed_addr constant [61 x i8] c"err %d while reading %d bytes from PEB %d:%d, read %zd bytes\00", align 1
@.str.2 = private unnamed_addr constant [69 x i8] c"flash region at PEB %d:%d, length %d does not contain all 0xFF bytes\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"self-check failed for PEB %d\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"hex dump of the %d-%d region\00", align 1
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ubi_self_check_all_ff(%struct.ubi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ubi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.ubi_device* %0, %struct.ubi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %16 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = mul nsw i32 %14, %17
  %19 = load i32, i32* %8, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %22 = call i32 @ubi_dbg_chk_io(%struct.ubi_device* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %94

25:                                               ; preds = %4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @GFP_NOFS, align 4
  %28 = load i32, i32* @PAGE_KERNEL, align 4
  %29 = call i8* @__vmalloc(i32 %26, i32 %27, i32 %28)
  store i8* %29, i8** %12, align 8
  %30 = load i8*, i8** %12, align 8
  %31 = icmp ne i8* %30, null
  br i1 %31, label %35, label %32

32:                                               ; preds = %25
  %33 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %34 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %33, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %94

35:                                               ; preds = %25
  %36 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %37 = getelementptr inbounds %struct.ubi_device, %struct.ubi_device* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %12, align 8
  %42 = call i32 @mtd_read(i32 %38, i32 %39, i32 %40, i64* %10, i8* %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %35
  %46 = load i32, i32* %11, align 4
  %47 = call i32 @mtd_is_bitflip(i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %45
  %50 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %8, align 4
  %55 = load i64, i64* %10, align 8
  %56 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %50, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %51, i32 %52, i32 %53, i32 %54, i64 %55)
  br label %89

57:                                               ; preds = %45, %35
  %58 = load i8*, i8** %12, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call i32 @ubi_check_pattern(i8* %58, i32 255, i32 %59)
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %57
  %64 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %64, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0), i32 %65, i32 %66, i32 %67)
  br label %72

69:                                               ; preds = %57
  %70 = load i8*, i8** %12, align 8
  %71 = call i32 @vfree(i8* %70)
  store i32 0, i32* %5, align 4
  br label %94

72:                                               ; preds = %63
  %73 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 (%struct.ubi_device*, i8*, ...) @ubi_err(%struct.ubi_device* %73, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %74)
  %76 = load %struct.ubi_device*, %struct.ubi_device** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = load i32, i32* %9, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @ubi_msg(%struct.ubi_device* %76, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %77, i32 %80)
  %82 = load i32, i32* @KERN_DEBUG, align 4
  %83 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %84 = load i8*, i8** %12, align 8
  %85 = load i32, i32* %9, align 4
  %86 = call i32 @print_hex_dump(i32 %82, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.5, i64 0, i64 0), i32 %83, i32 32, i32 1, i8* %84, i32 %85, i32 1)
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %72, %49
  %90 = call i32 (...) @dump_stack()
  %91 = load i8*, i8** %12, align 8
  %92 = call i32 @vfree(i8* %91)
  %93 = load i32, i32* %11, align 4
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %89, %69, %32, %24
  %95 = load i32, i32* %5, align 4
  ret i32 %95
}

declare dso_local i32 @ubi_dbg_chk_io(%struct.ubi_device*) #1

declare dso_local i8* @__vmalloc(i32, i32, i32) #1

declare dso_local i32 @ubi_err(%struct.ubi_device*, i8*, ...) #1

declare dso_local i32 @mtd_read(i32, i32, i32, i64*, i8*) #1

declare dso_local i32 @mtd_is_bitflip(i32) #1

declare dso_local i32 @ubi_check_pattern(i8*, i32, i32) #1

declare dso_local i32 @vfree(i8*) #1

declare dso_local i32 @ubi_msg(%struct.ubi_device*, i8*, i32, i32) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @dump_stack(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
