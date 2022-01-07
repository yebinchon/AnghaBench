; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_ir_raw_set_wakeup_filter.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_nuvoton-cir.c_nvt_ir_raw_set_wakeup_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32 }
%struct.rc_scancode_filter = type { i32, i32 }
%struct.ir_raw_event = type { i64, i32 }

@WAKEUP_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@SAMPLE_PERIOD = common dso_local global i32 0, align 4
@BUF_LEN_MASK = common dso_local global i32 0, align 4
@BUF_PULSE_BIT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.rc_scancode_filter*)* @nvt_ir_raw_set_wakeup_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvt_ir_raw_set_wakeup_filter(%struct.rc_dev* %0, %struct.rc_scancode_filter* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.rc_scancode_filter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ir_raw_event*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.rc_dev* %0, %struct.rc_dev** %4, align 8
  store %struct.rc_scancode_filter* %1, %struct.rc_scancode_filter** %5, align 8
  %16 = load i32, i32* @WAKEUP_MAX_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %12, align 8
  %19 = alloca i32, i64 %17, align 16
  store i64 %17, i64* %13, align 8
  %20 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %21 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %147

25:                                               ; preds = %2
  %26 = load i32, i32* @WAKEUP_MAX_SIZE, align 4
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call %struct.ir_raw_event* @kmalloc_array(i32 %26, i32 16, i32 %27)
  store %struct.ir_raw_event* %28, %struct.ir_raw_event** %11, align 8
  %29 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %30 = icmp ne %struct.ir_raw_event* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %147

34:                                               ; preds = %25
  %35 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %36 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.rc_scancode_filter*, %struct.rc_scancode_filter** %5, align 8
  %39 = getelementptr inbounds %struct.rc_scancode_filter, %struct.rc_scancode_filter* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %42 = load i32, i32* @WAKEUP_MAX_SIZE, align 4
  %43 = call i32 @ir_raw_encode_scancode(i32 %37, i32 %40, %struct.ir_raw_event* %41, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* @ENOBUFS, align 4
  %46 = sub nsw i32 0, %45
  %47 = icmp ne i32 %44, %46
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %53, label %51

51:                                               ; preds = %34
  %52 = load i32, i32* @WAKEUP_MAX_SIZE, align 4
  store i32 %52, i32* %8, align 4
  br label %58

53:                                               ; preds = %34
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %53
  br label %143

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57, %51
  store i32 0, i32* %7, align 4
  store i32 0, i32* %9, align 4
  br label %59

59:                                               ; preds = %136, %58
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %8, align 4
  %62 = icmp slt i32 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %59
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @WAKEUP_MAX_SIZE, align 4
  %66 = icmp slt i32 %64, %65
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i1 [ false, %59 ], [ %66, %63 ]
  br i1 %68, label %69, label %139

69:                                               ; preds = %67
  %70 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %71 = load i32, i32* %7, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %70, i64 %72
  %74 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @DIV_ROUND_UP(i32 %75, i64 1000)
  %77 = load i32, i32* @SAMPLE_PERIOD, align 4
  %78 = udiv i32 %76, %77
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %132, %69
  %80 = load i32, i32* %10, align 4
  %81 = icmp ugt i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = load i32, i32* @WAKEUP_MAX_SIZE, align 4
  %85 = icmp slt i32 %83, %84
  br label %86

86:                                               ; preds = %82, %79
  %87 = phi i1 [ false, %79 ], [ %85, %82 ]
  br i1 %87, label %88, label %135

88:                                               ; preds = %86
  %89 = load i32, i32* %14, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* %8, align 4
  %94 = sub nsw i32 %93, 1
  %95 = icmp eq i32 %92, %94
  br i1 %95, label %96, label %101

96:                                               ; preds = %91
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @BUF_LEN_MASK, align 4
  %99 = icmp ult i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96
  br label %135

101:                                              ; preds = %96, %91, %88
  %102 = load i32, i32* %10, align 4
  %103 = load i32, i32* @BUF_LEN_MASK, align 4
  %104 = icmp ugt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* @BUF_LEN_MASK, align 4
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %10, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %6, align 4
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %19, i64 %113
  store i32 %111, i32* %114, align 4
  %115 = load i32, i32* %6, align 4
  %116 = load i32, i32* %10, align 4
  %117 = sub i32 %116, %115
  store i32 %117, i32* %10, align 4
  %118 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %118, i64 %120
  %122 = getelementptr inbounds %struct.ir_raw_event, %struct.ir_raw_event* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %132

125:                                              ; preds = %109
  %126 = load i32, i32* @BUF_PULSE_BIT, align 4
  %127 = load i32, i32* %9, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %19, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = or i32 %130, %126
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %125, %109
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %79

135:                                              ; preds = %100, %86
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %7, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %59

139:                                              ; preds = %67
  %140 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %141 = load i32, i32* %9, align 4
  %142 = call i32 @nvt_write_wakeup_codes(%struct.rc_dev* %140, i32* %19, i32 %141)
  store i32 0, i32* %8, align 4
  br label %143

143:                                              ; preds = %139, %56
  %144 = load %struct.ir_raw_event*, %struct.ir_raw_event** %11, align 8
  %145 = call i32 @kfree(%struct.ir_raw_event* %144)
  %146 = load i32, i32* %8, align 4
  store i32 %146, i32* %3, align 4
  store i32 1, i32* %15, align 4
  br label %147

147:                                              ; preds = %143, %31, %24
  %148 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %148)
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.ir_raw_event* @kmalloc_array(i32, i32, i32) #2

declare dso_local i32 @ir_raw_encode_scancode(i32, i32, %struct.ir_raw_event*, i32) #2

declare dso_local i32 @DIV_ROUND_UP(i32, i64) #2

declare dso_local i32 @nvt_write_wakeup_codes(%struct.rc_dev*, i32*, i32) #2

declare dso_local i32 @kfree(%struct.ir_raw_event*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
