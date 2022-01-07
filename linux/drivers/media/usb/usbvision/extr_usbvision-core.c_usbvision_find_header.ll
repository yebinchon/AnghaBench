; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_find_header.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_find_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i32, i32, i64, %struct.usbvision_frame* }
%struct.usbvision_frame = type { i32, i32, i32, i64, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }

@USBVISION_HEADER_LENGTH = common dso_local global i64 0, align 8
@DBG_HEADER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"found header: 0x%02x%02x %d %d %d %d %#x 0x%02x %u %u\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"skipping scratch data, no header\00", align 1
@parse_state_end_parse = common dso_local global i32 0, align 4
@ISOC_MODE_COMPRESS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"Lost frame before %d on USB\00", align 1
@parse_state_next_frame = common dso_local global i32 0, align 4
@scan_state_lines = common dso_local global i32 0, align 4
@parse_state_continue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*)* @usbvision_find_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_find_header(%struct.usb_usbvision* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_usbvision*, align 8
  %4 = alloca %struct.usbvision_frame*, align 8
  %5 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %7 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %6, i32 0, i32 5
  %8 = load %struct.usbvision_frame*, %struct.usbvision_frame** %7, align 8
  store %struct.usbvision_frame* %8, %struct.usbvision_frame** %4, align 8
  br label %9

9:                                                ; preds = %77, %1
  %10 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %11 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %12 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %11, i32 0, i32 5
  %13 = call i64 @scratch_get_header(%struct.usb_usbvision* %10, %struct.TYPE_4__* %12)
  %14 = load i64, i64* @USBVISION_HEADER_LENGTH, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %78

16:                                               ; preds = %9
  %17 = load i32, i32* @DBG_HEADER, align 4
  %18 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %19 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 9
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %23 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %22, i32 0, i32 5
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 8
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %27 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 7
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %31 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %30, i32 0, i32 5
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %35 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %34, i32 0, i32 5
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %39 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %38, i32 0, i32 5
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %43 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %47 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %51 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %50, i32 0, i32 5
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %55 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 4
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i8*, ...) @PDEBUG(i32 %17, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29, i32 %33, i32 %37, i32 %41, i64 %45, i32 %49, i32 %53, i32 %57)
  %59 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %60 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %59, i32 0, i32 4
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %76

63:                                               ; preds = %16
  %64 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %65 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %64, i32 0, i32 5
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = and i32 %67, 128
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %63
  store i32 1, i32* %5, align 4
  %71 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %72 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %71, i32 0, i32 0
  store i32 -1, i32* %72, align 8
  %73 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %74 = call i32 @usbvision_unrequest_intra(%struct.usb_usbvision* %73)
  br label %78

75:                                               ; preds = %63
  br label %77

76:                                               ; preds = %16
  store i32 1, i32* %5, align 4
  br label %78

77:                                               ; preds = %75
  br label %9

78:                                               ; preds = %76, %70, %9
  %79 = load i32, i32* %5, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %113

81:                                               ; preds = %78
  %82 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %83 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %82, i32 0, i32 5
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %87 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %91 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %90, i32 0, i32 0
  store i32 %89, i32* %91, align 8
  %92 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %93 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %92, i32 0, i32 5
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %97 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = mul nsw i32 %95, %98
  %100 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %101 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %100, i32 0, i32 1
  store i32 %99, i32* %101, align 4
  %102 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %103 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %106 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %105, i32 0, i32 6
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = mul nsw i32 %104, %108
  %110 = ashr i32 %109, 3
  %111 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %112 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  br label %119

113:                                              ; preds = %78
  %114 = load i32, i32* @DBG_HEADER, align 4
  %115 = call i32 (i32, i8*, ...) @PDEBUG(i32 %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %116 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %117 = call i32 @scratch_reset(%struct.usb_usbvision* %116)
  %118 = load i32, i32* @parse_state_end_parse, align 4
  store i32 %118, i32* %2, align 4
  br label %171

119:                                              ; preds = %81
  %120 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %121 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %120, i32 0, i32 5
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load i64, i64* @ISOC_MODE_COMPRESS, align 8
  %125 = icmp eq i64 %123, %124
  br i1 %125, label %126, label %160

126:                                              ; preds = %119
  %127 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %128 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp sge i32 %129, 0
  br i1 %130, label %131, label %153

131:                                              ; preds = %126
  %132 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %133 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 8
  %135 = add nsw i32 %134, 1
  %136 = srem i32 %135, 32
  %137 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %138 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %137, i32 0, i32 5
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp ne i32 %136, %140
  br i1 %141, label %142, label %152

142:                                              ; preds = %131
  %143 = load i32, i32* @DBG_HEADER, align 4
  %144 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %145 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %144, i32 0, i32 5
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = call i32 (i32, i8*, ...) @PDEBUG(i32 %143, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %147)
  %149 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %150 = call i32 @usbvision_request_intra(%struct.usb_usbvision* %149)
  %151 = load i32, i32* @parse_state_next_frame, align 4
  store i32 %151, i32* %2, align 4
  br label %171

152:                                              ; preds = %131
  br label %153

153:                                              ; preds = %152, %126
  %154 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %155 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %154, i32 0, i32 5
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %159 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %158, i32 0, i32 0
  store i32 %157, i32* %159, align 8
  br label %160

160:                                              ; preds = %153, %119
  %161 = load %struct.usb_usbvision*, %struct.usb_usbvision** %3, align 8
  %162 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %161, i32 0, i32 3
  %163 = load i32, i32* %162, align 4
  %164 = add nsw i32 %163, 1
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* @scan_state_lines, align 4
  %166 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %167 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %166, i32 0, i32 4
  store i32 %165, i32* %167, align 8
  %168 = load %struct.usbvision_frame*, %struct.usbvision_frame** %4, align 8
  %169 = getelementptr inbounds %struct.usbvision_frame, %struct.usbvision_frame* %168, i32 0, i32 3
  store i64 0, i64* %169, align 8
  %170 = load i32, i32* @parse_state_continue, align 4
  store i32 %170, i32* %2, align 4
  br label %171

171:                                              ; preds = %160, %142, %113
  %172 = load i32, i32* %2, align 4
  ret i32 %172
}

declare dso_local i64 @scratch_get_header(%struct.usb_usbvision*, %struct.TYPE_4__*) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @usbvision_unrequest_intra(%struct.usb_usbvision*) #1

declare dso_local i32 @scratch_reset(%struct.usb_usbvision*) #1

declare dso_local i32 @usbvision_request_intra(%struct.usb_usbvision*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
