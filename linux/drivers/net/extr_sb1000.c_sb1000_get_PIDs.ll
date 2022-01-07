; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sb1000.c_sb1000_get_PIDs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sb1000.c_sb1000_get_PIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sb1000_get_PIDs.Command0 = internal constant [6 x i8] c"\80@\00\00\00\00", align 1
@sb1000_get_PIDs.Command1 = internal constant [6 x i8] c"\80A\00\00\00\00", align 1
@sb1000_get_PIDs.Command2 = internal constant [6 x i8] c"\80B\00\00\00\00", align 1
@sb1000_get_PIDs.Command3 = internal constant [6 x i8] c"\80C\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i16*)* @sb1000_get_PIDs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1000_get_PIDs(i32* %0, i8* %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca [7 x i8], align 1
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16* %2, i16** %7, align 8
  %10 = call i32 @udelay(i32 1000)
  %11 = load i32*, i32** %5, align 8
  %12 = load i8*, i8** %6, align 8
  %13 = call i32 @sb1000_start_get_set_command(i32* %11, i8* %12)
  store i32 %13, i32* %9, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %9, align 4
  store i32 %16, i32* %4, align 4
  br label %97

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %21 = call i32 @card_send_command(i32* %18, i8* %19, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_get_PIDs.Command0, i64 0, i64 0), i8* %20)
  store i32 %21, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %97

25:                                               ; preds = %17
  %26 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 1
  %27 = load i8, i8* %26, align 1
  %28 = zext i8 %27 to i32
  %29 = shl i32 %28, 8
  %30 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 2
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %29, %32
  %34 = trunc i32 %33 to i16
  %35 = load i16*, i16** %7, align 8
  %36 = getelementptr inbounds i16, i16* %35, i64 0
  store i16 %34, i16* %36, align 2
  %37 = load i32*, i32** %5, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %40 = call i32 @card_send_command(i32* %37, i8* %38, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_get_PIDs.Command1, i64 0, i64 0), i8* %39)
  store i32 %40, i32* %9, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %25
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* %4, align 4
  br label %97

44:                                               ; preds = %25
  %45 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 1
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = shl i32 %47, 8
  %49 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 2
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %48, %51
  %53 = trunc i32 %52 to i16
  %54 = load i16*, i16** %7, align 8
  %55 = getelementptr inbounds i16, i16* %54, i64 1
  store i16 %53, i16* %55, align 2
  %56 = load i32*, i32** %5, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %59 = call i32 @card_send_command(i32* %56, i8* %57, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_get_PIDs.Command2, i64 0, i64 0), i8* %58)
  store i32 %59, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %44
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %4, align 4
  br label %97

63:                                               ; preds = %44
  %64 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 1
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = shl i32 %66, 8
  %68 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 2
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = or i32 %67, %70
  %72 = trunc i32 %71 to i16
  %73 = load i16*, i16** %7, align 8
  %74 = getelementptr inbounds i16, i16* %73, i64 2
  store i16 %72, i16* %74, align 2
  %75 = load i32*, i32** %5, align 8
  %76 = load i8*, i8** %6, align 8
  %77 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %78 = call i32 @card_send_command(i32* %75, i8* %76, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_get_PIDs.Command3, i64 0, i64 0), i8* %77)
  store i32 %78, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %63
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %97

82:                                               ; preds = %63
  %83 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 1
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = shl i32 %85, 8
  %87 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 2
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %86, %89
  %91 = trunc i32 %90 to i16
  %92 = load i16*, i16** %7, align 8
  %93 = getelementptr inbounds i16, i16* %92, i64 3
  store i16 %91, i16* %93, align 2
  %94 = load i32*, i32** %5, align 8
  %95 = load i8*, i8** %6, align 8
  %96 = call i32 @sb1000_end_get_set_command(i32* %94, i8* %95)
  store i32 %96, i32* %4, align 4
  br label %97

97:                                               ; preds = %82, %80, %61, %42, %23, %15
  %98 = load i32, i32* %4, align 4
  ret i32 %98
}

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @sb1000_start_get_set_command(i32*, i8*) #1

declare dso_local i32 @card_send_command(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @sb1000_end_get_set_command(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
