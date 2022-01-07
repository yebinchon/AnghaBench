; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_do_command_extended.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_cpia1.c_do_command_extended.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*)* @do_command_extended to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_command_extended(%struct.gspca_dev* %0, i32 %1, i8* %2, i8* %3, i8* %4, i8* %5, i8* %6, i8* %7, i8* %8, i8* %9, i8* %10, i8* %11, i8* %12, i8* %13) #0 {
  %15 = alloca %struct.gspca_dev*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  %23 = alloca i8*, align 8
  %24 = alloca i8*, align 8
  %25 = alloca i8*, align 8
  %26 = alloca i8*, align 8
  %27 = alloca i8*, align 8
  %28 = alloca i8*, align 8
  %29 = alloca [8 x i8*], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %15, align 8
  store i32 %1, i32* %16, align 4
  store i8* %2, i8** %17, align 8
  store i8* %3, i8** %18, align 8
  store i8* %4, i8** %19, align 8
  store i8* %5, i8** %20, align 8
  store i8* %6, i8** %21, align 8
  store i8* %7, i8** %22, align 8
  store i8* %8, i8** %23, align 8
  store i8* %9, i8** %24, align 8
  store i8* %10, i8** %25, align 8
  store i8* %11, i8** %26, align 8
  store i8* %12, i8** %27, align 8
  store i8* %13, i8** %28, align 8
  %30 = load i32, i32* %16, align 4
  %31 = ashr i32 %30, 8
  %32 = sext i32 %31 to i64
  %33 = inttoptr i64 %32 to i8*
  %34 = getelementptr inbounds [8 x i8*], [8 x i8*]* %29, i64 0, i64 0
  store i8* %33, i8** %34, align 16
  %35 = load i32, i32* %16, align 4
  %36 = and i32 %35, 255
  %37 = sext i32 %36 to i64
  %38 = inttoptr i64 %37 to i8*
  %39 = getelementptr inbounds [8 x i8*], [8 x i8*]* %29, i64 0, i64 1
  store i8* %38, i8** %39, align 8
  %40 = load i8*, i8** %17, align 8
  %41 = getelementptr inbounds [8 x i8*], [8 x i8*]* %29, i64 0, i64 2
  store i8* %40, i8** %41, align 16
  %42 = load i8*, i8** %18, align 8
  %43 = getelementptr inbounds [8 x i8*], [8 x i8*]* %29, i64 0, i64 3
  store i8* %42, i8** %43, align 8
  %44 = load i8*, i8** %19, align 8
  %45 = getelementptr inbounds [8 x i8*], [8 x i8*]* %29, i64 0, i64 4
  store i8* %44, i8** %45, align 16
  %46 = load i8*, i8** %20, align 8
  %47 = getelementptr inbounds [8 x i8*], [8 x i8*]* %29, i64 0, i64 5
  store i8* %46, i8** %47, align 8
  %48 = getelementptr inbounds [8 x i8*], [8 x i8*]* %29, i64 0, i64 6
  store i8* inttoptr (i64 8 to i8*), i8** %48, align 16
  %49 = getelementptr inbounds [8 x i8*], [8 x i8*]* %29, i64 0, i64 7
  store i8* null, i8** %49, align 8
  %50 = load i8*, i8** %21, align 8
  %51 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  %52 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %51, i32 0, i32 0
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 0
  store i8* %50, i8** %54, align 8
  %55 = load i8*, i8** %22, align 8
  %56 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  %57 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %56, i32 0, i32 0
  %58 = load i8**, i8*** %57, align 8
  %59 = getelementptr inbounds i8*, i8** %58, i64 1
  store i8* %55, i8** %59, align 8
  %60 = load i8*, i8** %23, align 8
  %61 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  %62 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %61, i32 0, i32 0
  %63 = load i8**, i8*** %62, align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 2
  store i8* %60, i8** %64, align 8
  %65 = load i8*, i8** %24, align 8
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  %67 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %66, i32 0, i32 0
  %68 = load i8**, i8*** %67, align 8
  %69 = getelementptr inbounds i8*, i8** %68, i64 3
  store i8* %65, i8** %69, align 8
  %70 = load i8*, i8** %25, align 8
  %71 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  %72 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %71, i32 0, i32 0
  %73 = load i8**, i8*** %72, align 8
  %74 = getelementptr inbounds i8*, i8** %73, i64 4
  store i8* %70, i8** %74, align 8
  %75 = load i8*, i8** %26, align 8
  %76 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  %77 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %76, i32 0, i32 0
  %78 = load i8**, i8*** %77, align 8
  %79 = getelementptr inbounds i8*, i8** %78, i64 5
  store i8* %75, i8** %79, align 8
  %80 = load i8*, i8** %27, align 8
  %81 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  %82 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %81, i32 0, i32 0
  %83 = load i8**, i8*** %82, align 8
  %84 = getelementptr inbounds i8*, i8** %83, i64 6
  store i8* %80, i8** %84, align 8
  %85 = load i8*, i8** %28, align 8
  %86 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  %87 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %86, i32 0, i32 0
  %88 = load i8**, i8*** %87, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 7
  store i8* %85, i8** %89, align 8
  %90 = load %struct.gspca_dev*, %struct.gspca_dev** %15, align 8
  %91 = getelementptr inbounds [8 x i8*], [8 x i8*]* %29, i64 0, i64 0
  %92 = call i32 @cpia_usb_transferCmd(%struct.gspca_dev* %90, i8** %91)
  ret i32 %92
}

declare dso_local i32 @cpia_usb_transferCmd(%struct.gspca_dev*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
