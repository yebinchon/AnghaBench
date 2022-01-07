; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_kim_st_list_protocols.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/ti-st/extr_st_core.c_kim_st_list_protocols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_data_s = type { i32*, i32 }

@.str = private unnamed_addr constant [25 x i8] c"[%d]\0ABT=%c\0AFM=%c\0AGPS=%c\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @kim_st_list_protocols(%struct.st_data_s* %0, i8* %1) #0 {
  %3 = alloca %struct.st_data_s*, align 8
  %4 = alloca i8*, align 8
  store %struct.st_data_s* %0, %struct.st_data_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load i8*, i8** %4, align 8
  %6 = load %struct.st_data_s*, %struct.st_data_s** %3, align 8
  %7 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.st_data_s*, %struct.st_data_s** %3, align 8
  %10 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 1
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 82, i32 85
  %17 = trunc i32 %16 to i8
  %18 = load %struct.st_data_s*, %struct.st_data_s** %3, align 8
  %19 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 8
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 1
  %24 = zext i1 %23 to i64
  %25 = select i1 %23, i32 82, i32 85
  %26 = trunc i32 %25 to i8
  %27 = load %struct.st_data_s*, %struct.st_data_s** %3, align 8
  %28 = getelementptr inbounds %struct.st_data_s, %struct.st_data_s* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 9
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i32 82, i32 85
  %35 = trunc i32 %34 to i8
  %36 = call i32 @seq_printf(i8* %5, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %8, i8 signext %17, i8 signext %26, i8 signext %35)
  ret void
}

declare dso_local i32 @seq_printf(i8*, i8*, i32, i8 signext, i8 signext, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
