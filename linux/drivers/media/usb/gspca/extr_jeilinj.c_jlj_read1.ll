; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_jlj_read1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/extr_jeilinj.c_jlj_read1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i8*, i32 }

@.str = private unnamed_addr constant [30 x i8] c"read command [%02x] error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i8*)* @jlj_read1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jlj_read1(%struct.gspca_dev* %0, i8* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %42

11:                                               ; preds = %2
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %13 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %16 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @usb_rcvbulkpipe(i32 %17, i32 132)
  %19 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %20 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 @usb_bulk_msg(i32 %14, i32 %18, i8* %21, i32 1, i32* null, i32 500)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %24 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %23, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 0
  %27 = load i8, i8* %26, align 1
  %28 = load i8*, i8** %4, align 8
  store i8 %27, i8* %28, align 1
  %29 = load i32, i32* %5, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %11
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %33 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds i8, i8* %34, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @pr_err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8 zeroext %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  br label %42

42:                                               ; preds = %10, %31, %11
  ret void
}

declare dso_local i32 @usb_bulk_msg(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(i32, i32) #1

declare dso_local i32 @pr_err(i8*, i8 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
