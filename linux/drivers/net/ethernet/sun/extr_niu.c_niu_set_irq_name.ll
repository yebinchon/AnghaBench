; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_set_irq_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/sun/extr_niu.c_niu_set_irq_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32, i32, i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i8* }

@.str = private unnamed_addr constant [7 x i8] c"%s:MAC\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"%s:MIF\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"%s:SYSERR\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"%s-rx-%d\00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"%s-tx-%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*)* @niu_set_irq_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_set_irq_name(%struct.niu* %0) #0 {
  %2 = alloca %struct.niu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %2, align 8
  %6 = load %struct.niu*, %struct.niu** %2, align 8
  %7 = getelementptr inbounds %struct.niu, %struct.niu* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %3, align 4
  store i32 1, i32* %5, align 4
  %9 = load %struct.niu*, %struct.niu** %2, align 8
  %10 = getelementptr inbounds %struct.niu, %struct.niu* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.niu*, %struct.niu** %2, align 8
  %15 = getelementptr inbounds %struct.niu, %struct.niu* %14, i32 0, i32 4
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %3, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %45

22:                                               ; preds = %1
  %23 = load %struct.niu*, %struct.niu** %2, align 8
  %24 = getelementptr inbounds %struct.niu, %struct.niu* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.niu*, %struct.niu** %2, align 8
  %29 = getelementptr inbounds %struct.niu, %struct.niu* %28, i32 0, i32 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %27, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* %32)
  %34 = load %struct.niu*, %struct.niu** %2, align 8
  %35 = getelementptr inbounds %struct.niu, %struct.niu* %34, i32 0, i32 5
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.niu*, %struct.niu** %2, align 8
  %40 = getelementptr inbounds %struct.niu, %struct.niu* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %38, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i8* %43)
  store i32 3, i32* %5, align 4
  br label %45

45:                                               ; preds = %22, %1
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %110, %45
  %47 = load i32, i32* %4, align 4
  %48 = load %struct.niu*, %struct.niu** %2, align 8
  %49 = getelementptr inbounds %struct.niu, %struct.niu* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %5, align 4
  %52 = sub nsw i32 %50, %51
  %53 = icmp slt i32 %47, %52
  br i1 %53, label %54, label %113

54:                                               ; preds = %46
  %55 = load i32, i32* %4, align 4
  %56 = load %struct.niu*, %struct.niu** %2, align 8
  %57 = getelementptr inbounds %struct.niu, %struct.niu* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = icmp slt i32 %55, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %54
  %61 = load %struct.niu*, %struct.niu** %2, align 8
  %62 = getelementptr inbounds %struct.niu, %struct.niu* %61, i32 0, i32 5
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load i32, i32* %5, align 4
  %66 = add nsw i32 %64, %65
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %63, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.niu*, %struct.niu** %2, align 8
  %71 = getelementptr inbounds %struct.niu, %struct.niu* %70, i32 0, i32 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %4, align 4
  %76 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %69, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i8* %74, i32 %75)
  br label %109

77:                                               ; preds = %54
  %78 = load i32, i32* %4, align 4
  %79 = load %struct.niu*, %struct.niu** %2, align 8
  %80 = getelementptr inbounds %struct.niu, %struct.niu* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.niu*, %struct.niu** %2, align 8
  %83 = getelementptr inbounds %struct.niu, %struct.niu* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = add nsw i32 %81, %84
  %86 = icmp slt i32 %78, %85
  br i1 %86, label %87, label %108

87:                                               ; preds = %77
  %88 = load %struct.niu*, %struct.niu** %2, align 8
  %89 = getelementptr inbounds %struct.niu, %struct.niu* %88, i32 0, i32 5
  %90 = load i32*, i32** %89, align 8
  %91 = load i32, i32* %4, align 4
  %92 = load i32, i32* %5, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.niu*, %struct.niu** %2, align 8
  %98 = getelementptr inbounds %struct.niu, %struct.niu* %97, i32 0, i32 4
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  %101 = load i8*, i8** %100, align 8
  %102 = load i32, i32* %4, align 4
  %103 = load %struct.niu*, %struct.niu** %2, align 8
  %104 = getelementptr inbounds %struct.niu, %struct.niu* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = sub nsw i32 %102, %105
  %107 = call i32 (i32, i8*, i8*, ...) @sprintf(i32 %96, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0), i8* %101, i32 %106)
  br label %108

108:                                              ; preds = %87, %77
  br label %109

109:                                              ; preds = %108, %60
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %4, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %4, align 4
  br label %46

113:                                              ; preds = %46
  ret void
}

declare dso_local i32 @sprintf(i32, i8*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
