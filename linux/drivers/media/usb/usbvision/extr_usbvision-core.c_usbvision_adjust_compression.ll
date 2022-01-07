; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_adjust_compression.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/usbvision/extr_usbvision-core.c_usbvision_adjust_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_usbvision = type { i32, i32, i32, i64 }

@DBG_IRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@adjust_compression = common dso_local global i64 0, align 8
@BRIDGE_NT1004 = common dso_local global i64 0, align 8
@BRIDGE_NT1005 = common dso_local global i64 0, align 8
@USBVISION_PCM_THR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [53 x i8] c"new compr params %#02x %#02x %#02x %#02x %#02x %#02x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_usbvision*)* @usbvision_adjust_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usbvision_adjust_compression(%struct.usb_usbvision* %0) #0 {
  %2 = alloca %struct.usb_usbvision*, align 8
  %3 = alloca i32, align 4
  %4 = alloca [6 x i8], align 1
  %5 = alloca i32, align 4
  store %struct.usb_usbvision* %0, %struct.usb_usbvision** %2, align 8
  store i32 0, i32* %3, align 4
  %6 = load i32, i32* @DBG_IRQ, align 4
  %7 = call i32 (i32, i8*, ...) @PDEBUG(i32 %6, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %8 = load i64, i64* @adjust_compression, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %167

10:                                               ; preds = %1
  %11 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %12 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %167

15:                                               ; preds = %10
  %16 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %17 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %18, 90
  %20 = sdiv i32 %19, 2
  %21 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %22 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %26 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @RESTRICT_TO_RANGE(i32 %27, i32 0, i32 100)
  %29 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %30 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %33 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %31, %34
  br i1 %35, label %36, label %166

36:                                               ; preds = %15
  %37 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %38 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @BRIDGE_NT1004, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %36
  %43 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %44 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @BRIDGE_NT1005, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %93

48:                                               ; preds = %42, %36
  %49 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %50 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 16, %51
  %53 = sdiv i32 %52, 100
  %54 = add nsw i32 4, %53
  %55 = trunc i32 %54 to i8
  %56 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %55, i8* %56, align 1
  %57 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %58 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = mul nsw i32 8, %59
  %61 = sdiv i32 %60, 100
  %62 = add nsw i32 4, %61
  %63 = trunc i32 %62 to i8
  %64 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %63, i8* %64, align 1
  %65 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %66 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = mul nsw i32 248, %67
  %69 = sdiv i32 %68, 100
  %70 = add nsw i32 7, %69
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, 255
  %73 = trunc i32 %72 to i8
  %74 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %73, i8* %74, align 1
  %75 = load i32, i32* %5, align 4
  %76 = and i32 %75, 255
  %77 = trunc i32 %76 to i8
  %78 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  store i8 %77, i8* %78, align 1
  %79 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %80 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 42, %81
  %83 = sdiv i32 %82, 100
  %84 = add nsw i32 1, %83
  store i32 %84, i32* %5, align 4
  %85 = load i32, i32* %5, align 4
  %86 = and i32 %85, 255
  %87 = trunc i32 %86 to i8
  %88 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  store i8 %87, i8* %88, align 1
  %89 = load i32, i32* %5, align 4
  %90 = and i32 %89, 255
  %91 = trunc i32 %90 to i8
  %92 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  store i8 %91, i8* %92, align 1
  br label %132

93:                                               ; preds = %42
  %94 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %95 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = mul nsw i32 16, %96
  %98 = sdiv i32 %97, 100
  %99 = add nsw i32 4, %98
  %100 = trunc i32 %99 to i8
  %101 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  store i8 %100, i8* %101, align 1
  %102 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %103 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = mul nsw i32 8, %104
  %106 = sdiv i32 %105, 100
  %107 = add nsw i32 4, %106
  %108 = trunc i32 %107 to i8
  %109 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  store i8 %108, i8* %109, align 1
  %110 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %111 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = mul nsw i32 253, %112
  %114 = sdiv i32 %113, 100
  %115 = add nsw i32 2, %114
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, 255
  %118 = trunc i32 %117 to i8
  %119 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  store i8 %118, i8* %119, align 1
  %120 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  store i8 0, i8* %120, align 1
  %121 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %122 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = mul nsw i32 43, %123
  %125 = sdiv i32 %124, 100
  %126 = add nsw i32 0, %125
  store i32 %126, i32* %5, align 4
  %127 = load i32, i32* %5, align 4
  %128 = and i32 %127, 255
  %129 = trunc i32 %128 to i8
  %130 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  store i8 %129, i8* %130, align 1
  %131 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  store i8 0, i8* %131, align 1
  br label %132

132:                                              ; preds = %93, %48
  %133 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %134 = load i32, i32* @USBVISION_PCM_THR1, align 4
  %135 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %136 = call i32 @usbvision_write_reg_irq(%struct.usb_usbvision* %133, i32 %134, i8* %135, i32 6)
  store i32 %136, i32* %3, align 4
  %137 = load i32, i32* %3, align 4
  %138 = icmp eq i32 %137, 0
  br i1 %138, label %139, label %165

139:                                              ; preds = %132
  %140 = load i32, i32* @DBG_IRQ, align 4
  %141 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 0
  %142 = load i8, i8* %141, align 1
  %143 = zext i8 %142 to i32
  %144 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 1
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 2
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 3
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 4
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = getelementptr inbounds [6 x i8], [6 x i8]* %4, i64 0, i64 5
  %157 = load i8, i8* %156, align 1
  %158 = zext i8 %157 to i32
  %159 = call i32 (i32, i8*, ...) @PDEBUG(i32 %140, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.1, i64 0, i64 0), i32 %143, i32 %146, i32 %149, i32 %152, i32 %155, i32 %158)
  %160 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %161 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load %struct.usb_usbvision*, %struct.usb_usbvision** %2, align 8
  %164 = getelementptr inbounds %struct.usb_usbvision, %struct.usb_usbvision* %163, i32 0, i32 2
  store i32 %162, i32* %164, align 8
  br label %165

165:                                              ; preds = %139, %132
  br label %166

166:                                              ; preds = %165, %15
  br label %167

167:                                              ; preds = %166, %10, %1
  %168 = load i32, i32* %3, align 4
  ret i32 %168
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @RESTRICT_TO_RANGE(i32, i32, i32) #1

declare dso_local i32 @usbvision_write_reg_irq(%struct.usb_usbvision*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
