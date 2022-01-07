; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_intbufs_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_helpers.c_venus_helper_intbufs_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i32 }

@intbuf_types_4xx = common dso_local global i32* null, align 8
@intbuf_types_1xx = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @venus_helper_intbufs_alloc(%struct.venus_inst* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.venus_inst*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.venus_inst* %0, %struct.venus_inst** %3, align 8
  %8 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %9 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call i64 @IS_V4(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %1
  %14 = load i32*, i32** @intbuf_types_4xx, align 8
  %15 = call i64 @ARRAY_SIZE(i32* %14)
  store i64 %15, i64* %5, align 8
  %16 = load i32*, i32** @intbuf_types_4xx, align 8
  store i32* %16, i32** %4, align 8
  br label %21

17:                                               ; preds = %1
  %18 = load i32*, i32** @intbuf_types_1xx, align 8
  %19 = call i64 @ARRAY_SIZE(i32* %18)
  store i64 %19, i64* %5, align 8
  %20 = load i32*, i32** @intbuf_types_1xx, align 8
  store i32* %20, i32** %4, align 8
  br label %21

21:                                               ; preds = %17, %13
  store i64 0, i64* %6, align 8
  br label %22

22:                                               ; preds = %37, %21
  %23 = load i64, i64* %6, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ult i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = load i64, i64* %6, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @intbufs_set_buffer(%struct.venus_inst* %27, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %41

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %6, align 8
  br label %22

40:                                               ; preds = %22
  store i32 0, i32* %2, align 4
  br label %45

41:                                               ; preds = %35
  %42 = load %struct.venus_inst*, %struct.venus_inst** %3, align 8
  %43 = call i32 @intbufs_unset_buffers(%struct.venus_inst* %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %45

45:                                               ; preds = %41, %40
  %46 = load i32, i32* %2, align 4
  ret i32 %46
}

declare dso_local i64 @IS_V4(i32) #1

declare dso_local i64 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @intbufs_set_buffer(%struct.venus_inst*, i32) #1

declare dso_local i32 @intbufs_unset_buffers(%struct.venus_inst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
