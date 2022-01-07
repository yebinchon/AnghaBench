; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_dump_regs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/pci/tw68/extr_tw68-video.c_tw68_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tw68_dev = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Full dump of TW68 registers:\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%03x  \00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%08x \00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"%03x \00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"%02x \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tw68_dev*)* @tw68_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tw68_dump_regs(%struct.tw68_dev* %0) #0 {
  %2 = alloca %struct.tw68_dev*, align 8
  %3 = alloca [80 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store %struct.tw68_dev* %0, %struct.tw68_dev** %2, align 8
  %8 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %62, %1
  %10 = load i32, i32* %4, align 4
  %11 = icmp slt i32 %10, 256
  br i1 %11, label %12, label %65

12:                                               ; preds = %9
  %13 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  store i8* %13, i8** %7, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @sprintf(i8* %14, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %15)
  %17 = load i8*, i8** %7, align 8
  %18 = sext i32 %16 to i64
  %19 = getelementptr inbounds i8, i8* %17, i64 %18
  store i8* %19, i8** %7, align 8
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %5, align 4
  br label %21

21:                                               ; preds = %34, %12
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, 16
  %25 = icmp slt i32 %22, %24
  br i1 %25, label %26, label %37

26:                                               ; preds = %21
  %27 = load i8*, i8** %7, align 8
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @tw_readl(i32 %28)
  %30 = call i32 @sprintf(i8* %27, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = load i8*, i8** %7, align 8
  %32 = sext i32 %30 to i64
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8* %33, i8** %7, align 8
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %5, align 4
  br label %21

37:                                               ; preds = %21
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i32 1
  store i8* %39, i8** %7, align 8
  store i8 32, i8* %38, align 1
  br label %40

40:                                               ; preds = %53, %37
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %4, align 4
  %43 = add nsw i32 %42, 32
  %44 = icmp slt i32 %41, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load i8*, i8** %7, align 8
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @tw_readl(i32 %47)
  %49 = call i32 @sprintf(i8* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i32 %48)
  %50 = load i8*, i8** %7, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %50, i64 %51
  store i8* %52, i8** %7, align 8
  br label %53

53:                                               ; preds = %45
  %54 = load i32, i32* %5, align 4
  %55 = add nsw i32 %54, 4
  store i32 %55, i32* %5, align 4
  br label %40

56:                                               ; preds = %40
  %57 = load i8*, i8** %7, align 8
  %58 = getelementptr inbounds i8, i8* %57, i32 1
  store i8* %58, i8** %7, align 8
  store i8 10, i8* %57, align 1
  %59 = load i8*, i8** %7, align 8
  store i8 0, i8* %59, align 1
  %60 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %61 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %56
  %63 = load i32, i32* %4, align 4
  %64 = add nsw i32 %63, 32
  store i32 %64, i32* %4, align 4
  br label %9

65:                                               ; preds = %9
  br label %66

66:                                               ; preds = %103, %65
  %67 = load i32, i32* %4, align 4
  %68 = icmp slt i32 %67, 1024
  br i1 %68, label %69, label %109

69:                                               ; preds = %66
  %70 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  store i8* %70, i8** %7, align 8
  %71 = load i8*, i8** %7, align 8
  %72 = load i32, i32* %4, align 4
  %73 = call i32 @sprintf(i8* %71, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i32 %72)
  %74 = load i8*, i8** %7, align 8
  %75 = sext i32 %73 to i64
  %76 = getelementptr inbounds i8, i8* %74, i64 %75
  store i8* %76, i8** %7, align 8
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %100, %69
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 4
  br i1 %79, label %80, label %103

80:                                               ; preds = %77
  store i32 0, i32* %6, align 4
  br label %81

81:                                               ; preds = %94, %80
  %82 = load i32, i32* %6, align 4
  %83 = icmp slt i32 %82, 4
  br i1 %83, label %84, label %97

84:                                               ; preds = %81
  %85 = load i8*, i8** %7, align 8
  %86 = load i32, i32* %4, align 4
  %87 = call i32 @tw_readb(i32 %86)
  %88 = call i32 @sprintf(i8* %85, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %87)
  %89 = load i8*, i8** %7, align 8
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i8, i8* %89, i64 %90
  store i8* %91, i8** %7, align 8
  %92 = load i32, i32* %4, align 4
  %93 = add nsw i32 %92, 4
  store i32 %93, i32* %4, align 4
  br label %94

94:                                               ; preds = %84
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %81

97:                                               ; preds = %81
  %98 = load i8*, i8** %7, align 8
  %99 = getelementptr inbounds i8, i8* %98, i32 1
  store i8* %99, i8** %7, align 8
  store i8 32, i8* %98, align 1
  br label %100

100:                                              ; preds = %97
  %101 = load i32, i32* %5, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %5, align 4
  br label %77

103:                                              ; preds = %77
  %104 = load i8*, i8** %7, align 8
  %105 = getelementptr inbounds i8, i8* %104, i32 1
  store i8* %105, i8** %7, align 8
  store i8 10, i8* %104, align 1
  %106 = load i8*, i8** %7, align 8
  store i8 0, i8* %106, align 1
  %107 = getelementptr inbounds [80 x i8], [80 x i8]* %3, i64 0, i64 0
  %108 = call i32 (i8*, ...) @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %107)
  br label %66

109:                                              ; preds = %66
  ret void
}

declare dso_local i32 @pr_info(i8*, ...) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @tw_readl(i32) #1

declare dso_local i32 @tw_readb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
