; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_dtcs033.c_reg_reqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_dtcs033.c_reg_reqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i64, i32 }
%struct.dtcs033_usb_requests = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"usb error request no: %d / %d\0A\00", align 1
@USB_DIR_IN = common dso_local global i32 0, align 4
@D_STREAM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"USB IN (%d) returned[%d] %3ph %s\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"...\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, %struct.dtcs033_usb_requests*, i32)* @reg_reqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_reqs(%struct.gspca_dev* %0, %struct.dtcs033_usb_requests* %1, i32 %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca %struct.dtcs033_usb_requests*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dtcs033_usb_requests*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store %struct.dtcs033_usb_requests* %1, %struct.dtcs033_usb_requests** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %9

9:                                                ; preds = %76, %3
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %16, 0
  br label %18

18:                                               ; preds = %13, %9
  %19 = phi i1 [ false, %9 ], [ %17, %13 ]
  br i1 %19, label %20, label %79

20:                                               ; preds = %18
  %21 = load %struct.dtcs033_usb_requests*, %struct.dtcs033_usb_requests** %5, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.dtcs033_usb_requests, %struct.dtcs033_usb_requests* %21, i64 %23
  store %struct.dtcs033_usb_requests* %24, %struct.dtcs033_usb_requests** %8, align 8
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %26 = load %struct.dtcs033_usb_requests*, %struct.dtcs033_usb_requests** %8, align 8
  %27 = getelementptr inbounds %struct.dtcs033_usb_requests, %struct.dtcs033_usb_requests* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.dtcs033_usb_requests*, %struct.dtcs033_usb_requests** %8, align 8
  %30 = getelementptr inbounds %struct.dtcs033_usb_requests, %struct.dtcs033_usb_requests* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.dtcs033_usb_requests*, %struct.dtcs033_usb_requests** %8, align 8
  %33 = getelementptr inbounds %struct.dtcs033_usb_requests, %struct.dtcs033_usb_requests* %32, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.dtcs033_usb_requests*, %struct.dtcs033_usb_requests** %8, align 8
  %36 = getelementptr inbounds %struct.dtcs033_usb_requests, %struct.dtcs033_usb_requests* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.dtcs033_usb_requests*, %struct.dtcs033_usb_requests** %8, align 8
  %39 = getelementptr inbounds %struct.dtcs033_usb_requests, %struct.dtcs033_usb_requests* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @reg_rw(%struct.gspca_dev* %25, i32 %28, i32 %31, i32 %34, i32 %37, i32 %40)
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %43 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = icmp slt i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %20
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @gspca_err(%struct.gspca_dev* %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %48, i32 %49)
  br label %76

51:                                               ; preds = %20
  %52 = load %struct.dtcs033_usb_requests*, %struct.dtcs033_usb_requests** %8, align 8
  %53 = getelementptr inbounds %struct.dtcs033_usb_requests, %struct.dtcs033_usb_requests* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @USB_DIR_IN, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %75

58:                                               ; preds = %51
  %59 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %60 = load i32, i32* @D_STREAM, align 4
  %61 = load i32, i32* %7, align 4
  %62 = load %struct.dtcs033_usb_requests*, %struct.dtcs033_usb_requests** %8, align 8
  %63 = getelementptr inbounds %struct.dtcs033_usb_requests, %struct.dtcs033_usb_requests* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %66 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.dtcs033_usb_requests*, %struct.dtcs033_usb_requests** %8, align 8
  %69 = getelementptr inbounds %struct.dtcs033_usb_requests, %struct.dtcs033_usb_requests* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp sgt i32 %70, 3
  %72 = zext i1 %71 to i64
  %73 = select i1 %71, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0)
  %74 = call i32 @gspca_dbg(%struct.gspca_dev* %59, i32 %60, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %61, i32 %64, i32 %67, i8* %73)
  br label %75

75:                                               ; preds = %58, %51
  br label %76

76:                                               ; preds = %75, %46
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %9

79:                                               ; preds = %18
  %80 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %81 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = trunc i64 %82 to i32
  ret i32 %83
}

declare dso_local i32 @reg_rw(%struct.gspca_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @gspca_err(%struct.gspca_dev*, i8*, i32, i32) #1

declare dso_local i32 @gspca_dbg(%struct.gspca_dev*, i32, i8*, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
