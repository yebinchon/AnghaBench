; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_po1030.c_po1030_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/gspca/m5602/extr_m5602_po1030.c_po1030_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32 }

@init_po1030 = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [38 x i8] c"Invalid stream command, exiting init\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dump_sensor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @po1030_init(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [2 x i32], align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %68, %1
  %8 = load i32, i32* %4, align 4
  %9 = load i32**, i32*** @init_po1030, align 8
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
  br i1 %17, label %18, label %71

18:                                               ; preds = %16
  %19 = bitcast [2 x i32]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %19, i8 0, i64 8, i1 false)
  %20 = load i32**, i32*** @init_po1030, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32*, i32** %20, i64 %22
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %63 [
    i32 129, label %27
    i32 128, label %44
  ]

27:                                               ; preds = %18
  %28 = load %struct.sd*, %struct.sd** %3, align 8
  %29 = load i32**, i32*** @init_po1030, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32*, i32** %29, i64 %31
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32**, i32*** @init_po1030, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @m5602_write_bridge(%struct.sd* %28, i32 %35, i32 %42)
  store i32 %43, i32* %5, align 4
  br label %67

44:                                               ; preds = %18
  %45 = load i32**, i32*** @init_po1030, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32*, i32** %45, i64 %47
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  store i32 %51, i32* %52, align 4
  %53 = load %struct.sd*, %struct.sd** %3, align 8
  %54 = load i32**, i32*** @init_po1030, align 8
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32*, i32** %54, i64 %56
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [2 x i32], [2 x i32]* %6, i64 0, i64 0
  %62 = call i32 @m5602_write_sensor(%struct.sd* %53, i32 %60, i32* %61, i32 1)
  store i32 %62, i32* %5, align 4
  br label %67

63:                                               ; preds = %18
  %64 = call i32 @pr_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %2, align 4
  br label %83

67:                                               ; preds = %44, %27
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %4, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %4, align 4
  br label %7

71:                                               ; preds = %16
  %72 = load i32, i32* %5, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %71
  %75 = load i32, i32* %5, align 4
  store i32 %75, i32* %2, align 4
  br label %83

76:                                               ; preds = %71
  %77 = load i64, i64* @dump_sensor, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load %struct.sd*, %struct.sd** %3, align 8
  %81 = call i32 @po1030_dump_registers(%struct.sd* %80)
  br label %82

82:                                               ; preds = %79, %76
  store i32 0, i32* %2, align 4
  br label %83

83:                                               ; preds = %82, %74, %63
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @pr_info(i8*) #1

declare dso_local i32 @po1030_dump_registers(%struct.sd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
