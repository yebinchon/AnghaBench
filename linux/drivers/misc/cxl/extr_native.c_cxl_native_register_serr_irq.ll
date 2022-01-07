; ModuleID = '/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_register_serr_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/misc/cxl/extr_native.c_cxl_native_register_serr_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxl_afu = type { i32, i32*, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"cxl-%s-err\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@native_slice_irq_err = common dso_local global i32 0, align 4
@CXL_PSL_SERR_An = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cxl_native_register_serr_irq(%struct.cxl_afu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cxl_afu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cxl_afu* %0, %struct.cxl_afu** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %8 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %7, i32 0, i32 4
  %9 = call i32 @dev_name(i32* %8)
  %10 = call i32* @kasprintf(i32 %6, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %12 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %14 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %1
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %2, align 4
  br label %79

20:                                               ; preds = %1
  %21 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %22 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @native_slice_irq_err, align 4
  %25 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %26 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %27 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %26, i32 0, i32 0
  %28 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %29 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %28, i32 0, i32 2
  %30 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %31 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @cxl_register_one_irq(i32 %23, i32 %24, %struct.cxl_afu* %25, i32* %27, i32* %29, i32* %32)
  store i32 %33, i32* %5, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %20
  %36 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %37 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @kfree(i32* %38)
  %40 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %41 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %40, i32 0, i32 1
  store i32* null, i32** %41, align 8
  %42 = load i32, i32* %5, align 4
  store i32 %42, i32* %2, align 4
  br label %79

43:                                               ; preds = %20
  %44 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %45 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %46 = call i32 @cxl_p1n_read(%struct.cxl_afu* %44, i32 %45)
  store i32 %46, i32* %4, align 4
  %47 = call i64 (...) @cxl_is_power8()
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %43
  %50 = load i32, i32* %4, align 4
  %51 = sext i32 %50 to i64
  %52 = and i64 %51, 72057594037862400
  %53 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %54 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = and i32 %55, 65535
  %57 = sext i32 %56 to i64
  %58 = or i64 %52, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %49, %43
  %61 = call i64 (...) @cxl_is_power9()
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = and i64 %65, 72057591890444288
  %67 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %68 = getelementptr inbounds %struct.cxl_afu, %struct.cxl_afu* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, 65535
  %71 = sext i32 %70 to i64
  %72 = or i64 %66, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %63, %60
  %75 = load %struct.cxl_afu*, %struct.cxl_afu** %3, align 8
  %76 = load i32, i32* @CXL_PSL_SERR_An, align 4
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @cxl_p1n_write(%struct.cxl_afu* %75, i32 %76, i32 %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %74, %35, %17
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @cxl_register_one_irq(i32, i32, %struct.cxl_afu*, i32*, i32*, i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @cxl_p1n_read(%struct.cxl_afu*, i32) #1

declare dso_local i64 @cxl_is_power8(...) #1

declare dso_local i64 @cxl_is_power9(...) #1

declare dso_local i32 @cxl_p1n_write(%struct.cxl_afu*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
