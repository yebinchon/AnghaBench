; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@init_s5k83a = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Invalid stream command, exiting init\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dump_sensor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5k83a_init(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %95, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32**, i32*** @init_s5k83a, align 8
  %10 = call i32 @ARRAY_SIZE(i32** %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %16

12:                                               ; preds = %7
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  br label %16

16:                                               ; preds = %12, %7
  %17 = phi i1 [ false, %7 ], [ %15, %12 ]
  br i1 %17, label %18, label %98

18:                                               ; preds = %16
  %19 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = load i32**, i32*** @init_s5k83a, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %90 [
    i32 130, label %27
    i32 129, label %44
    i32 128, label %63
  ]

27:                                               ; preds = %18
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = load i32**, i32*** @init_s5k83a, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32**, i32*** @init_s5k83a, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @m5602_write_bridge(%struct.sd* %28, i32 %35, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %94

44:                                               ; preds = %18
  %45 = load i32**, i32*** @init_s5k83a, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = load i32**, i32*** @init_s5k83a, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %62 = call i32 @m5602_write_sensor(%struct.sd* %53, i32 %60, i32* %61, i32 1)
  store i32 %62, i32* %5, align 4
  br label %94

63:                                               ; preds = %18
  %64 = load i32**, i32*** @init_s5k83a, align 8
  %65 = load i32, i32* %4, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i32*, i32** %64, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %70, i32* %71, align 4
  %72 = load i32**, i32*** @init_s5k83a, align 8
  %73 = load i32, i32* %4, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32*, i32** %72, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 3
  %78 = load i32, i32* %77, align 4
  %79 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  %80 = load %struct.sd*, %struct.sd** %3, align 8
  %81 = load i32**, i32*** @init_s5k83a, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32*, i32** %81, i64 %83
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %89 = call i32 @m5602_write_sensor(%struct.sd* %80, i32 %87, i32* %88, i32 2)
  store i32 %89, i32* %5, align 4
  br label %94

90:                                               ; preds = %18
  %91 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %92 = load i32, i32* @EINVAL, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %106

94:                                               ; preds = %63, %44, %27
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %7

98:                                               ; preds = %16
  %99 = load i64, i64* @dump_sensor, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.sd*, %struct.sd** %3, align 8
  %103 = call i32 @s5k83a_dump_registers(%struct.sd* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %106

106:                                              ; preds = %104, %90
  %107 = load i32, i32* %2, align 4
  ret i32 %107
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @s5k83a_dump_registers(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
