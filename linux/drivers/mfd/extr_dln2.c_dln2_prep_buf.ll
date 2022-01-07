; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_prep_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_dln2.c_dln2_prep_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dln2_header = type { i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, i32, i32, i8*, i32*, i32)* @dln2_prep_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dln2_prep_buf(i32 %0, i32 %1, i32 %2, i8* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca %struct.dln2_header*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %17 = load i32*, i32** %12, align 8
  %18 = load i32, i32* %17, align 4
  %19 = sext i32 %18 to i64
  %20 = add i64 %19, 32
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = load i32, i32* %13, align 4
  %24 = call i8* @kmalloc(i32 %22, i32 %23)
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i8* null, i8** %7, align 8
  br label %56

28:                                               ; preds = %6
  %29 = load i8*, i8** %15, align 8
  %30 = bitcast i8* %29 to %struct.dln2_header*
  store %struct.dln2_header* %30, %struct.dln2_header** %16, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i8* @cpu_to_le16(i32 %31)
  %33 = load %struct.dln2_header*, %struct.dln2_header** %16, align 8
  %34 = getelementptr inbounds %struct.dln2_header, %struct.dln2_header* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %14, align 4
  %36 = call i8* @cpu_to_le16(i32 %35)
  %37 = load %struct.dln2_header*, %struct.dln2_header** %16, align 8
  %38 = getelementptr inbounds %struct.dln2_header, %struct.dln2_header* %37, i32 0, i32 2
  store i8* %36, i8** %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i8* @cpu_to_le16(i32 %39)
  %41 = load %struct.dln2_header*, %struct.dln2_header** %16, align 8
  %42 = getelementptr inbounds %struct.dln2_header, %struct.dln2_header* %41, i32 0, i32 1
  store i8* %40, i8** %42, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call i8* @cpu_to_le16(i32 %43)
  %45 = load %struct.dln2_header*, %struct.dln2_header** %16, align 8
  %46 = getelementptr inbounds %struct.dln2_header, %struct.dln2_header* %45, i32 0, i32 0
  store i8* %44, i8** %46, align 8
  %47 = load i8*, i8** %15, align 8
  %48 = getelementptr i8, i8* %47, i64 32
  %49 = load i8*, i8** %11, align 8
  %50 = load i32*, i32** %12, align 8
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i8* %48, i8* %49, i32 %51)
  %53 = load i32, i32* %14, align 4
  %54 = load i32*, i32** %12, align 8
  store i32 %53, i32* %54, align 4
  %55 = load i8*, i8** %15, align 8
  store i8* %55, i8** %7, align 8
  br label %56

56:                                               ; preds = %28, %27
  %57 = load i8*, i8** %7, align 8
  ret i8* %57
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
