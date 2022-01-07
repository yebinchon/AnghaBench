; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rb.c_scif_rb_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/mic/scif/extr_scif_rb.c_scif_rb_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scif_rb = type { i32, i32, i8* }

@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scif_rb_write(%struct.scif_rb* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scif_rb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.scif_rb* %0, %struct.scif_rb** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.scif_rb*, %struct.scif_rb** %5, align 8
  %10 = call i32 @scif_rb_space(%struct.scif_rb* %9)
  %11 = load i32, i32* %7, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %42

16:                                               ; preds = %3
  %17 = load %struct.scif_rb*, %struct.scif_rb** %5, align 8
  %18 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %17, i32 0, i32 2
  %19 = load i8*, i8** %18, align 8
  %20 = load %struct.scif_rb*, %struct.scif_rb** %5, align 8
  %21 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = getelementptr i8, i8* %19, i64 %23
  store i8* %24, i8** %8, align 8
  %25 = load %struct.scif_rb*, %struct.scif_rb** %5, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @memcpy_torb(%struct.scif_rb* %25, i8* %26, i8* %27, i32 %28)
  %30 = load %struct.scif_rb*, %struct.scif_rb** %5, align 8
  %31 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %32, %33
  %35 = load %struct.scif_rb*, %struct.scif_rb** %5, align 8
  %36 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sub nsw i32 %37, 1
  %39 = and i32 %34, %38
  %40 = load %struct.scif_rb*, %struct.scif_rb** %5, align 8
  %41 = getelementptr inbounds %struct.scif_rb, %struct.scif_rb* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %16, %13
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @scif_rb_space(%struct.scif_rb*) #1

declare dso_local i32 @memcpy_torb(%struct.scif_rb*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
