; ModuleID = '/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.c_fill_profile_level.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/media/platform/qcom/venus/extr_hfi_parser.c_fill_profile_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.venus_caps = type { i64, i32* }
%struct.hfi_profile_level = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.venus_caps*, i8*, i32)* @fill_profile_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fill_profile_level(%struct.venus_caps* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.venus_caps*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.hfi_profile_level*, align 8
  store %struct.venus_caps* %0, %struct.venus_caps** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.hfi_profile_level*
  store %struct.hfi_profile_level* %9, %struct.hfi_profile_level** %7, align 8
  %10 = load %struct.venus_caps*, %struct.venus_caps** %4, align 8
  %11 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.venus_caps*, %struct.venus_caps** %4, align 8
  %14 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  %17 = load %struct.hfi_profile_level*, %struct.hfi_profile_level** %7, align 8
  %18 = load i32, i32* %6, align 4
  %19 = zext i32 %18 to i64
  %20 = mul i64 %19, 4
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memcpy(i32* %16, %struct.hfi_profile_level* %17, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = load %struct.venus_caps*, %struct.venus_caps** %4, align 8
  %26 = getelementptr inbounds %struct.venus_caps, %struct.venus_caps* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, %24
  store i64 %28, i64* %26, align 8
  ret void
}

declare dso_local i32 @memcpy(i32*, %struct.hfi_profile_level*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
