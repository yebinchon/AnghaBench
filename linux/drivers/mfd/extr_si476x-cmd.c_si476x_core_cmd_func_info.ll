; ModuleID = '/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_cmd_func_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/mfd/extr_si476x-cmd.c_si476x_core_cmd_func_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si476x_core = type { i32 }
%struct.si476x_func_info = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }

@CMD_FUNC_INFO_NRESP = common dso_local global i32 0, align 4
@CMD_FUNC_INFO = common dso_local global i32 0, align 4
@SI476X_DEFAULT_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @si476x_core_cmd_func_info(%struct.si476x_core* %0, %struct.si476x_func_info* %1) #0 {
  %3 = alloca %struct.si476x_core*, align 8
  %4 = alloca %struct.si476x_func_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  store %struct.si476x_core* %0, %struct.si476x_core** %3, align 8
  store %struct.si476x_func_info* %1, %struct.si476x_func_info** %4, align 8
  %8 = load i32, i32* @CMD_FUNC_INFO_NRESP, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %6, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %7, align 8
  %12 = load %struct.si476x_core*, %struct.si476x_core** %3, align 8
  %13 = load i32, i32* @CMD_FUNC_INFO, align 4
  %14 = call i32 @ARRAY_SIZE(i32* %11)
  %15 = load i32, i32* @SI476X_DEFAULT_TIMEOUT, align 4
  %16 = call i32 @si476x_core_send_command(%struct.si476x_core* %12, i32 %13, i32* null, i32 0, i32* %11, i32 %14, i32 %15)
  store i32 %16, i32* %5, align 4
  %17 = getelementptr inbounds i32, i32* %11, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.si476x_func_info*, %struct.si476x_func_info** %4, align 8
  %20 = getelementptr inbounds %struct.si476x_func_info, %struct.si476x_func_info* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  store i32 %18, i32* %21, align 8
  %22 = getelementptr inbounds i32, i32* %11, i64 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.si476x_func_info*, %struct.si476x_func_info** %4, align 8
  %25 = getelementptr inbounds %struct.si476x_func_info, %struct.si476x_func_info* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 %23, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %11, i64 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.si476x_func_info*, %struct.si476x_func_info** %4, align 8
  %32 = getelementptr inbounds %struct.si476x_func_info, %struct.si476x_func_info* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  store i32 %30, i32* %35, align 4
  %36 = getelementptr inbounds i32, i32* %11, i64 4
  %37 = load i32, i32* %36, align 16
  %38 = shl i32 %37, 8
  %39 = getelementptr inbounds i32, i32* %11, i64 5
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %38, %40
  %42 = load %struct.si476x_func_info*, %struct.si476x_func_info** %4, align 8
  %43 = getelementptr inbounds %struct.si476x_func_info, %struct.si476x_func_info* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = getelementptr inbounds i32, i32* %11, i64 6
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.si476x_func_info*, %struct.si476x_func_info** %4, align 8
  %47 = getelementptr inbounds %struct.si476x_func_info, %struct.si476x_func_info* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %49)
  ret i32 %48
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @si476x_core_send_command(%struct.si476x_core*, i32, i32*, i32, i32*, i32, i32) #2

declare dso_local i32 @ARRAY_SIZE(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
