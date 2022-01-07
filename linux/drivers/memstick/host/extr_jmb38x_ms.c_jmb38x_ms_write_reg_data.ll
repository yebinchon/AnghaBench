; ModuleID = '/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_write_reg_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_write_reg_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmb38x_ms_host = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jmb38x_ms_host*, i8*, i32)* @jmb38x_ms_write_reg_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_write_reg_data(%struct.jmb38x_ms_host* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jmb38x_ms_host*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.jmb38x_ms_host* %0, %struct.jmb38x_ms_host** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %19, %3
  %10 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %11 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 4
  br i1 %13, label %14, label %17

14:                                               ; preds = %9
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br label %17

17:                                               ; preds = %14, %9
  %18 = phi i1 [ false, %9 ], [ %16, %14 ]
  br i1 %18, label %19, label %56

19:                                               ; preds = %17
  %20 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %21 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 8
  %24 = shl i32 255, %23
  %25 = xor i32 %24, -1
  %26 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %27 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = and i32 %30, %25
  store i32 %31, i32* %29, align 4
  %32 = load i8*, i8** %6, align 8
  %33 = load i32, i32* %8, align 4
  %34 = add i32 %33, 1
  store i32 %34, i32* %8, align 4
  %35 = zext i32 %33 to i64
  %36 = getelementptr inbounds i8, i8* %32, i64 %35
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %40 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = mul nsw i32 %41, 8
  %43 = shl i32 %38, %42
  %44 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %45 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = or i32 %48, %43
  store i32 %49, i32* %47, align 4
  %50 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %51 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 8
  %54 = load i32, i32* %7, align 4
  %55 = add i32 %54, -1
  store i32 %55, i32* %7, align 4
  br label %9

56:                                               ; preds = %17
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %111

61:                                               ; preds = %56
  br label %62

62:                                               ; preds = %72, %61
  %63 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %64 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp slt i32 %65, 8
  br i1 %66, label %67, label %70

67:                                               ; preds = %62
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br label %70

70:                                               ; preds = %67, %62
  %71 = phi i1 [ false, %62 ], [ %69, %67 ]
  br i1 %71, label %72, label %109

72:                                               ; preds = %70
  %73 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %74 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = mul nsw i32 %75, 8
  %77 = shl i32 255, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %80 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, %78
  store i32 %84, i32* %82, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = load i32, i32* %8, align 4
  %87 = add i32 %86, 1
  store i32 %87, i32* %8, align 4
  %88 = zext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %85, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %93 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = mul nsw i32 %94, 8
  %96 = shl i32 %91, %95
  %97 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %98 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  %101 = load i32, i32* %100, align 4
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 4
  %103 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %5, align 8
  %104 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %7, align 4
  %108 = add i32 %107, -1
  store i32 %108, i32* %7, align 4
  br label %62

109:                                              ; preds = %70
  %110 = load i32, i32* %8, align 4
  store i32 %110, i32* %4, align 4
  br label %111

111:                                              ; preds = %109, %59
  %112 = load i32, i32* %4, align 4
  ret i32 %112
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
