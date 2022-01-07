; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-dec23.c_pwc_dec23_decompress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/usb/pwc/extr_pwc-dec23.c_pwc_dec23_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, i32, i32, %struct.pwc_dec23_private }
%struct.pwc_dec23_private = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwc_dec23_decompress(%struct.pwc_device* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.pwc_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pwc_dec23_private*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.pwc_device* %0, %struct.pwc_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %15 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %14, i32 0, i32 3
  store %struct.pwc_dec23_private* %15, %struct.pwc_dec23_private** %9, align 8
  %16 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %9, align 8
  %17 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %16, i32 0, i32 0
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %20 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sdiv i32 %21, 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %24 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = mul nsw i32 %25, 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %28 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %31 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = mul nsw i32 %29, %32
  store i32 %33, i32* %13, align 4
  %34 = load i8*, i8** %6, align 8
  store i8* %34, i8** %10, align 8
  %35 = load i8*, i8** %6, align 8
  %36 = load i32, i32* %13, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr i8, i8* %35, i64 %37
  store i8* %38, i8** %11, align 8
  %39 = load i8*, i8** %6, align 8
  %40 = load i32, i32* %13, align 4
  %41 = zext i32 %40 to i64
  %42 = getelementptr i8, i8* %39, i64 %41
  %43 = load i32, i32* %13, align 4
  %44 = udiv i32 %43, 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr i8, i8* %42, i64 %45
  store i8* %46, i8** %12, align 8
  br label %47

47:                                               ; preds = %51, %3
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %7, align 4
  %50 = icmp ne i32 %48, 0
  br i1 %50, label %51, label %86

51:                                               ; preds = %47
  %52 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %9, align 8
  %53 = load i8*, i8** %5, align 8
  %54 = load i8*, i8** %10, align 8
  %55 = load i8*, i8** %11, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %58 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %61 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @DecompressBand23(%struct.pwc_dec23_private* %52, i8* %53, i8* %54, i8* %55, i8* %56, i32 %59, i32 %62)
  %64 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %65 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load i8*, i8** %5, align 8
  %68 = sext i32 %66 to i64
  %69 = getelementptr i8, i8* %67, i64 %68
  store i8* %69, i8** %5, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i8*, i8** %10, align 8
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds i8, i8* %71, i64 %72
  store i8* %73, i8** %10, align 8
  %74 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %75 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load i8*, i8** %11, align 8
  %78 = sext i32 %76 to i64
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  store i8* %79, i8** %11, align 8
  %80 = load %struct.pwc_device*, %struct.pwc_device** %4, align 8
  %81 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i8*, i8** %12, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %12, align 8
  br label %47

86:                                               ; preds = %47
  %87 = load %struct.pwc_dec23_private*, %struct.pwc_dec23_private** %9, align 8
  %88 = getelementptr inbounds %struct.pwc_dec23_private, %struct.pwc_dec23_private* %87, i32 0, i32 0
  %89 = call i32 @mutex_unlock(i32* %88)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @DecompressBand23(%struct.pwc_dec23_private*, i8*, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
