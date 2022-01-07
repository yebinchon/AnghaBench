; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_create_table.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/rc/extr_rc-main.c_ir_create_table.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32 }
%struct.rc_map = type { i32, i32, i32*, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Allocated space for %u keycode entries (%u bytes)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rc_dev*, %struct.rc_map*, i8*, i32, i64)* @ir_create_table to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_create_table(%struct.rc_dev* %0, %struct.rc_map* %1, i8* %2, i32 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rc_dev*, align 8
  %8 = alloca %struct.rc_map*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %7, align 8
  store %struct.rc_map* %1, %struct.rc_map** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i64 %4, i64* %11, align 8
  %12 = load i8*, i8** %9, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kstrdup(i8* %12, i32 %13)
  %15 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %16 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %15, i32 0, i32 2
  store i32* %14, i32** %16, align 8
  %17 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %18 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %6, align 4
  br label %71

24:                                               ; preds = %5
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %27 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %26, i32 0, i32 4
  store i32 %25, i32* %27, align 4
  %28 = load i64, i64* %11, align 8
  %29 = mul i64 %28, 4
  %30 = call i32 @roundup_pow_of_two(i64 %29)
  %31 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %32 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %34 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = udiv i64 %36, 4
  %38 = trunc i64 %37 to i32
  %39 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %40 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %42 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call i32 @kmalloc(i32 %43, i32 %44)
  %46 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %47 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 8
  %48 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %49 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %61, label %52

52:                                               ; preds = %24
  %53 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %54 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @kfree(i32* %55)
  %57 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %58 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %57, i32 0, i32 2
  store i32* null, i32** %58, align 8
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %6, align 4
  br label %71

61:                                               ; preds = %24
  %62 = load %struct.rc_dev*, %struct.rc_dev** %7, align 8
  %63 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %62, i32 0, i32 0
  %64 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %65 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.rc_map*, %struct.rc_map** %8, align 8
  %68 = getelementptr inbounds %struct.rc_map, %struct.rc_map* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @dev_dbg(i32* %63, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69)
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %61, %52, %21
  %72 = load i32, i32* %6, align 4
  ret i32 %72
}

declare dso_local i32* @kstrdup(i8*, i32) #1

declare dso_local i32 @roundup_pow_of_two(i64) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
