; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_i2c_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/phy/extr_sfp.c_sfp_i2c_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sfp = type { i32 }
%struct.i2c_msg = type { i32, i8**, i64, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sfp*, i32, i8*, i8*, i64)* @sfp_i2c_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sfp_i2c_write(%struct.sfp* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sfp*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca [1 x %struct.i2c_msg], align 16
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.sfp* %0, %struct.sfp** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i32 81, i32 80
  %19 = sext i32 %18 to i64
  %20 = inttoptr i64 %19 to i8*
  store i8* %20, i8** %13, align 8
  %21 = load i8*, i8** %13, align 8
  %22 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %23 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %22, i32 0, i32 3
  store i8* %21, i8** %23, align 8
  %24 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %25 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 2
  store i64 0, i64* %25, align 16
  %26 = load i64, i64* %11, align 8
  %27 = add i64 1, %26
  %28 = trunc i64 %27 to i32
  %29 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %30 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 16
  %31 = load i64, i64* %11, align 8
  %32 = add i64 1, %31
  %33 = trunc i64 %32 to i32
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8** @kmalloc(i32 %33, i32 %34)
  %36 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %36, i32 0, i32 1
  store i8** %35, i8*** %37, align 8
  %38 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %39 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %38, i32 0, i32 1
  %40 = load i8**, i8*** %39, align 8
  %41 = icmp ne i8** %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %5
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %6, align 4
  br label %84

45:                                               ; preds = %5
  %46 = load i8*, i8** %9, align 8
  %47 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %47, i32 0, i32 1
  %49 = load i8**, i8*** %48, align 8
  %50 = getelementptr inbounds i8*, i8** %49, i64 0
  store i8* %46, i8** %50, align 8
  %51 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %52 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %51, i32 0, i32 1
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = call i32 @memcpy(i8** %54, i8* %55, i64 %56)
  %58 = load %struct.sfp*, %struct.sfp** %7, align 8
  %59 = getelementptr inbounds %struct.sfp, %struct.sfp* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %62 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %63 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %62)
  %64 = call i32 @i2c_transfer(i32 %60, %struct.i2c_msg* %61, i32 %63)
  store i32 %64, i32* %14, align 4
  %65 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %66 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %65, i32 0, i32 1
  %67 = load i8**, i8*** %66, align 8
  %68 = call i32 @kfree(i8** %67)
  %69 = load i32, i32* %14, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %45
  %72 = load i32, i32* %14, align 4
  store i32 %72, i32* %6, align 4
  br label %84

73:                                               ; preds = %45
  %74 = load i32, i32* %14, align 4
  %75 = getelementptr inbounds [1 x %struct.i2c_msg], [1 x %struct.i2c_msg]* %12, i64 0, i64 0
  %76 = call i32 @ARRAY_SIZE(%struct.i2c_msg* %75)
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i64, i64* %11, align 8
  br label %81

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80, %78
  %82 = phi i64 [ %79, %78 ], [ 0, %80 ]
  %83 = trunc i64 %82 to i32
  store i32 %83, i32* %6, align 4
  br label %84

84:                                               ; preds = %81, %71, %42
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i8** @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i8**, i8*, i64) #1

declare dso_local i32 @i2c_transfer(i32, %struct.i2c_msg*, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.i2c_msg*) #1

declare dso_local i32 @kfree(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
