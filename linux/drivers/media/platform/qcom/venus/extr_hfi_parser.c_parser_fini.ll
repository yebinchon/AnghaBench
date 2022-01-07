; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.c_parser_fini.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.c_parser_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_inst = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.venus_caps* }
%struct.venus_caps = type { i64, i64, i32 }

@MAX_CODEC_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_inst*, i64, i64)* @parser_fini to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parser_fini(%struct.venus_inst* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.venus_inst*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.venus_caps*, align 8
  %8 = alloca %struct.venus_caps*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.venus_inst* %0, %struct.venus_inst** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %12 = icmp ne %struct.venus_inst* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %15 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @IS_V1(%struct.TYPE_2__* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13, %3
  br label %57

20:                                               ; preds = %13
  %21 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %22 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.venus_caps*, %struct.venus_caps** %24, align 8
  store %struct.venus_caps* %25, %struct.venus_caps** %7, align 8
  %26 = load %struct.venus_inst*, %struct.venus_inst** %4, align 8
  %27 = getelementptr inbounds %struct.venus_inst, %struct.venus_inst* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %10, align 8
  store i32 0, i32* %9, align 4
  br label %29

29:                                               ; preds = %54, %20
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @MAX_CODEC_NUM, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %29
  %34 = load %struct.venus_caps*, %struct.venus_caps** %7, align 8
  %35 = load i32, i32* %9, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %34, i64 %36
  store %struct.venus_caps* %37, %struct.venus_caps** %8, align 8
  %38 = load %struct.venus_caps*, %struct.venus_caps** %8, align 8
  %39 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = and i64 %40, %41
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %53

44:                                               ; preds = %33
  %45 = load %struct.venus_caps*, %struct.venus_caps** %8, align 8
  %46 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %44
  %51 = load %struct.venus_caps*, %struct.venus_caps** %8, align 8
  %52 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %51, i32 0, i32 2
  store i32 1, i32* %52, align 8
  br label %53

53:                                               ; preds = %50, %44, %33
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %9, align 4
  %56 = add i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %29

57:                                               ; preds = %19, %29
  ret void
}

declare dso_local i32 @IS_V1(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
