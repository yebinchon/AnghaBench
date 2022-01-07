; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_wakeup_data_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_wakeup_data_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.rc_dev = type { i32 }

@WAKEUP_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@SAMPLE_PERIOD = common dso_local global i32 0, align 4
@BUF_PULSE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @wakeup_data_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @wakeup_data_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rc_dev*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8**, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = call %struct.rc_dev* @to_rc_dev(%struct.device* %19)
  store %struct.rc_dev* %20, %struct.rc_dev** %10, align 8
  %21 = load i32, i32* @WAKEUP_MAX_SIZE, align 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %11, align 8
  %24 = alloca i32, i64 %22, align 16
  store i64 %22, i64* %12, align 8
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = load i8*, i8** %8, align 8
  %27 = call i8** @argv_split(i32 %25, i8* %26, i32* %15)
  store i8** %27, i8*** %13, align 8
  %28 = load i8**, i8*** %13, align 8
  %29 = icmp ne i8** %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %4
  %31 = load i64, i64* @ENOMEM, align 8
  %32 = sub i64 0, %31
  store i64 %32, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %98

33:                                               ; preds = %4
  %34 = load i32, i32* %15, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* @WAKEUP_MAX_SIZE, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36, %33
  %41 = load i64, i64* @EINVAL, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %17, align 8
  br label %94

43:                                               ; preds = %36
  store i32 0, i32* %14, align 4
  br label %44

44:                                               ; preds = %86, %43
  %45 = load i32, i32* %14, align 4
  %46 = load i32, i32* %15, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %89

48:                                               ; preds = %44
  %49 = load i8**, i8*** %13, align 8
  %50 = load i32, i32* %14, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8*, i8** %49, i64 %51
  %53 = load i8*, i8** %52, align 8
  %54 = call i64 @kstrtouint(i8* %53, i32 10, i32* %16)
  store i64 %54, i64* %17, align 8
  %55 = load i64, i64* %17, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %48
  br label %94

58:                                               ; preds = %48
  %59 = load i32, i32* %16, align 4
  %60 = load i32, i32* @SAMPLE_PERIOD, align 4
  %61 = call i32 @DIV_ROUND_CLOSEST(i32 %59, i32 %60)
  store i32 %61, i32* %16, align 4
  %62 = load i32, i32* %16, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %58
  %65 = load i32, i32* %16, align 4
  %66 = icmp ugt i32 %65, 127
  br i1 %66, label %67, label %70

67:                                               ; preds = %64, %58
  %68 = load i64, i64* @EINVAL, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %17, align 8
  br label %94

70:                                               ; preds = %64
  %71 = load i32, i32* %16, align 4
  %72 = load i32, i32* %14, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %24, i64 %73
  store i32 %71, i32* %74, align 4
  %75 = load i32, i32* %14, align 4
  %76 = srem i32 %75, 2
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %70
  %79 = load i32, i32* @BUF_PULSE_BIT, align 4
  %80 = load i32, i32* %14, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32, i32* %24, i64 %81
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %79
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %78, %70
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  br label %44

89:                                               ; preds = %44
  %90 = load %struct.rc_dev*, %struct.rc_dev** %10, align 8
  %91 = load i32, i32* %15, align 4
  %92 = call i32 @nvt_write_wakeup_codes(%struct.rc_dev* %90, i32* %24, i32 %91)
  %93 = load i64, i64* %9, align 8
  store i64 %93, i64* %17, align 8
  br label %94

94:                                               ; preds = %89, %67, %57, %40
  %95 = load i8**, i8*** %13, align 8
  %96 = call i32 @argv_free(i8** %95)
  %97 = load i64, i64* %17, align 8
  store i64 %97, i64* %5, align 8
  store i32 1, i32* %18, align 4
  br label %98

98:                                               ; preds = %94, %30
  %99 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i64, i64* %5, align 8
  ret i64 %100
}

declare dso_local %struct.rc_dev* @to_rc_dev(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i8** @argv_split(i32, i8*, i32*) #1

declare dso_local i64 @kstrtouint(i8*, i32, i32*) #1

declare dso_local i32 @DIV_ROUND_CLOSEST(i32, i32) #1

declare dso_local i32 @nvt_write_wakeup_codes(%struct.rc_dev*, i32*, i32) #1

declare dso_local i32 @argv_free(i8**) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
