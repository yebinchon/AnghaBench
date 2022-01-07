; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.c_hermes_read_pda.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/intersil/orinoco/extr_hermes.c_hermes_read_pda.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hermes = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 (%struct.hermes*, i32, i32, i32*)* }

@HERMES_CMD_READMIF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"AUX enable returned %d\0A\00", align 1
@HERMES_AUXDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"AUX disable returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"Actual PDA length %d, Max allowed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hermes*, i32*, i32, i32)* @hermes_read_pda to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hermes_read_pda(%struct.hermes* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hermes*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.hermes* %0, %struct.hermes** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  store i32 %14, i32* %12, align 4
  %15 = load i32*, i32** %7, align 8
  store i32* %15, i32** %13, align 8
  %16 = load %struct.hermes*, %struct.hermes** %6, align 8
  %17 = getelementptr inbounds %struct.hermes, %struct.hermes* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %4
  %21 = load %struct.hermes*, %struct.hermes** %6, align 8
  %22 = getelementptr inbounds %struct.hermes, %struct.hermes* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32 (%struct.hermes*, i32, i32, i32*)*, i32 (%struct.hermes*, i32, i32, i32*)** %24, align 8
  %26 = load %struct.hermes*, %struct.hermes** %6, align 8
  %27 = load i32, i32* @HERMES_CMD_READMIF, align 4
  %28 = call i32 %25(%struct.hermes* %26, i32 %27, i32 0, i32* null)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %20
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %5, align 4
  br label %84

33:                                               ; preds = %20
  br label %47

34:                                               ; preds = %4
  %35 = load i32, i32* %9, align 4
  %36 = sub nsw i32 %35, 2
  %37 = call i32 @cpu_to_le16(i32 %36)
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  store i32 %37, i32* %39, align 4
  %40 = call i32 @cpu_to_le16(i32 2048)
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 %40, i32* %42, align 4
  %43 = load i32, i32* %9, align 4
  %44 = sub nsw i32 %43, 4
  store i32 %44, i32* %12, align 4
  %45 = load i32*, i32** %7, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 2
  store i32* %46, i32** %13, align 8
  br label %47

47:                                               ; preds = %34, %33
  %48 = load %struct.hermes*, %struct.hermes** %6, align 8
  %49 = call i32 @hermes_aux_control(%struct.hermes* %48, i32 1)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %50)
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %47
  %55 = load i32, i32* %10, align 4
  store i32 %55, i32* %5, align 4
  br label %84

56:                                               ; preds = %47
  %57 = load %struct.hermes*, %struct.hermes** %6, align 8
  %58 = load i32, i32* %8, align 4
  %59 = call i32 @hermes_aux_setaddr(%struct.hermes* %57, i32 %58)
  %60 = load %struct.hermes*, %struct.hermes** %6, align 8
  %61 = load i32, i32* @HERMES_AUXDATA, align 4
  %62 = load i32*, i32** %13, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sdiv i32 %63, 2
  %65 = call i32 @hermes_read_words(%struct.hermes* %60, i32 %61, i32* %62, i32 %64)
  %66 = load %struct.hermes*, %struct.hermes** %6, align 8
  %67 = call i32 @hermes_aux_control(%struct.hermes* %66, i32 0)
  store i32 %67, i32* %10, align 4
  %68 = load i32, i32* %10, align 4
  %69 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %68)
  %70 = load i32*, i32** %7, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @le16_to_cpu(i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 (i8*, i32, ...) @pr_debug(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %74, i32 %75)
  %77 = load i32, i32* %11, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %56
  %81 = load i32, i32* @EINVAL, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %5, align 4
  br label %84

83:                                               ; preds = %56
  store i32 0, i32* %5, align 4
  br label %84

84:                                               ; preds = %83, %80, %54, %31
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @hermes_aux_control(%struct.hermes*, i32) #1

declare dso_local i32 @pr_debug(i8*, i32, ...) #1

declare dso_local i32 @hermes_aux_setaddr(%struct.hermes*, i32) #1

declare dso_local i32 @hermes_read_words(%struct.hermes*, i32, i32*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
