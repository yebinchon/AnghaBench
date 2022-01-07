; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/extr_sb1000.c_sb1000_set_PIDs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/extr_sb1000.c_sb1000_set_PIDs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@sb1000_set_PIDs.Command4 = internal constant [6 x i8] c"\80.\00\00\00\00", align 1
@__const.sb1000_set_PIDs.Command0 = private unnamed_addr constant [6 x i8] c"\801\00\00\00\00", align 1
@__const.sb1000_set_PIDs.Command1 = private unnamed_addr constant [6 x i8] c"\802\00\00\00\00", align 1
@__const.sb1000_set_PIDs.Command2 = private unnamed_addr constant [6 x i8] c"\803\00\00\00\00", align 1
@__const.sb1000_set_PIDs.Command3 = private unnamed_addr constant [6 x i8] c"\804\00\00\00\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i8*, i16*)* @sb1000_set_PIDs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sb1000_set_PIDs(i32* %0, i8* %1, i16* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca [7 x i8], align 1
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca [6 x i8], align 1
  %12 = alloca [6 x i8], align 1
  %13 = alloca [6 x i8], align 1
  %14 = alloca [6 x i8], align 1
  store i32* %0, i32** %5, align 8
  store i8* %1, i8** %6, align 8
  store i16* %2, i16** %7, align 8
  %15 = bitcast [6 x i8]* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %15, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.sb1000_set_PIDs.Command0, i32 0, i32 0), i64 6, i1 false)
  %16 = bitcast [6 x i8]* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %16, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.sb1000_set_PIDs.Command1, i32 0, i32 0), i64 6, i1 false)
  %17 = bitcast [6 x i8]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %17, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.sb1000_set_PIDs.Command2, i32 0, i32 0), i64 6, i1 false)
  %18 = bitcast [6 x i8]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %18, i8* align 1 getelementptr inbounds ([6 x i8], [6 x i8]* @__const.sb1000_set_PIDs.Command3, i32 0, i32 0), i64 6, i1 false)
  %19 = call i32 @udelay(i32 1000)
  %20 = load i32*, i32** %5, align 8
  %21 = load i8*, i8** %6, align 8
  %22 = call i32 @sb1000_start_get_set_command(i32* %20, i8* %21)
  store i32 %22, i32* %10, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %3
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %4, align 4
  br label %142

26:                                               ; preds = %3
  %27 = load i16*, i16** %7, align 8
  %28 = getelementptr inbounds i16, i16* %27, i64 0
  %29 = load i16, i16* %28, align 2
  store i16 %29, i16* %9, align 2
  %30 = load i16, i16* %9, align 2
  %31 = sext i16 %30 to i32
  %32 = and i32 %31, 255
  %33 = trunc i32 %32 to i8
  %34 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 3
  store i8 %33, i8* %34, align 1
  %35 = load i16, i16* %9, align 2
  %36 = sext i16 %35 to i32
  %37 = ashr i32 %36, 8
  %38 = trunc i32 %37 to i16
  store i16 %38, i16* %9, align 2
  %39 = load i16, i16* %9, align 2
  %40 = sext i16 %39 to i32
  %41 = and i32 %40, 255
  %42 = trunc i32 %41 to i8
  %43 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 2
  store i8 %42, i8* %43, align 1
  %44 = load i32*, i32** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = getelementptr inbounds [6 x i8], [6 x i8]* %11, i64 0, i64 0
  %47 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %48 = call i32 @card_send_command(i32* %44, i8* %45, i8* %46, i8* %47)
  store i32 %48, i32* %10, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %26
  %51 = load i32, i32* %10, align 4
  store i32 %51, i32* %4, align 4
  br label %142

52:                                               ; preds = %26
  %53 = load i16*, i16** %7, align 8
  %54 = getelementptr inbounds i16, i16* %53, i64 1
  %55 = load i16, i16* %54, align 2
  store i16 %55, i16* %9, align 2
  %56 = load i16, i16* %9, align 2
  %57 = sext i16 %56 to i32
  %58 = and i32 %57, 255
  %59 = trunc i32 %58 to i8
  %60 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 3
  store i8 %59, i8* %60, align 1
  %61 = load i16, i16* %9, align 2
  %62 = sext i16 %61 to i32
  %63 = ashr i32 %62, 8
  %64 = trunc i32 %63 to i16
  store i16 %64, i16* %9, align 2
  %65 = load i16, i16* %9, align 2
  %66 = sext i16 %65 to i32
  %67 = and i32 %66, 255
  %68 = trunc i32 %67 to i8
  %69 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 2
  store i8 %68, i8* %69, align 1
  %70 = load i32*, i32** %5, align 8
  %71 = load i8*, i8** %6, align 8
  %72 = getelementptr inbounds [6 x i8], [6 x i8]* %12, i64 0, i64 0
  %73 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %74 = call i32 @card_send_command(i32* %70, i8* %71, i8* %72, i8* %73)
  store i32 %74, i32* %10, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %52
  %77 = load i32, i32* %10, align 4
  store i32 %77, i32* %4, align 4
  br label %142

78:                                               ; preds = %52
  %79 = load i16*, i16** %7, align 8
  %80 = getelementptr inbounds i16, i16* %79, i64 2
  %81 = load i16, i16* %80, align 2
  store i16 %81, i16* %9, align 2
  %82 = load i16, i16* %9, align 2
  %83 = sext i16 %82 to i32
  %84 = and i32 %83, 255
  %85 = trunc i32 %84 to i8
  %86 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 3
  store i8 %85, i8* %86, align 1
  %87 = load i16, i16* %9, align 2
  %88 = sext i16 %87 to i32
  %89 = ashr i32 %88, 8
  %90 = trunc i32 %89 to i16
  store i16 %90, i16* %9, align 2
  %91 = load i16, i16* %9, align 2
  %92 = sext i16 %91 to i32
  %93 = and i32 %92, 255
  %94 = trunc i32 %93 to i8
  %95 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 2
  store i8 %94, i8* %95, align 1
  %96 = load i32*, i32** %5, align 8
  %97 = load i8*, i8** %6, align 8
  %98 = getelementptr inbounds [6 x i8], [6 x i8]* %13, i64 0, i64 0
  %99 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %100 = call i32 @card_send_command(i32* %96, i8* %97, i8* %98, i8* %99)
  store i32 %100, i32* %10, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %78
  %103 = load i32, i32* %10, align 4
  store i32 %103, i32* %4, align 4
  br label %142

104:                                              ; preds = %78
  %105 = load i16*, i16** %7, align 8
  %106 = getelementptr inbounds i16, i16* %105, i64 3
  %107 = load i16, i16* %106, align 2
  store i16 %107, i16* %9, align 2
  %108 = load i16, i16* %9, align 2
  %109 = sext i16 %108 to i32
  %110 = and i32 %109, 255
  %111 = trunc i32 %110 to i8
  %112 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 3
  store i8 %111, i8* %112, align 1
  %113 = load i16, i16* %9, align 2
  %114 = sext i16 %113 to i32
  %115 = ashr i32 %114, 8
  %116 = trunc i32 %115 to i16
  store i16 %116, i16* %9, align 2
  %117 = load i16, i16* %9, align 2
  %118 = sext i16 %117 to i32
  %119 = and i32 %118, 255
  %120 = trunc i32 %119 to i8
  %121 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 2
  store i8 %120, i8* %121, align 1
  %122 = load i32*, i32** %5, align 8
  %123 = load i8*, i8** %6, align 8
  %124 = getelementptr inbounds [6 x i8], [6 x i8]* %14, i64 0, i64 0
  %125 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %126 = call i32 @card_send_command(i32* %122, i8* %123, i8* %124, i8* %125)
  store i32 %126, i32* %10, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %104
  %129 = load i32, i32* %10, align 4
  store i32 %129, i32* %4, align 4
  br label %142

130:                                              ; preds = %104
  %131 = load i32*, i32** %5, align 8
  %132 = load i8*, i8** %6, align 8
  %133 = getelementptr inbounds [7 x i8], [7 x i8]* %8, i64 0, i64 0
  %134 = call i32 @card_send_command(i32* %131, i8* %132, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @sb1000_set_PIDs.Command4, i64 0, i64 0), i8* %133)
  store i32 %134, i32* %10, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %130
  %137 = load i32, i32* %10, align 4
  store i32 %137, i32* %4, align 4
  br label %142

138:                                              ; preds = %130
  %139 = load i32*, i32** %5, align 8
  %140 = load i8*, i8** %6, align 8
  %141 = call i32 @sb1000_end_get_set_command(i32* %139, i8* %140)
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %138, %136, %128, %102, %76, %50, %24
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @udelay(i32) #2

declare dso_local i32 @sb1000_start_get_set_command(i32*, i8*) #2

declare dso_local i32 @card_send_command(i32*, i8*, i8*, i8*) #2

declare dso_local i32 @sb1000_end_get_set_command(i32*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
