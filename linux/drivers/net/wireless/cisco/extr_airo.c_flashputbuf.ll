; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_flashputbuf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/cisco/extr_airo.c_flashputbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { i32*, i64, i32 }

@FLAG_MPI = common dso_local global i32 0, align 4
@FLASHSIZE = common dso_local global i32 0, align 4
@AUXPAGE = common dso_local global i32 0, align 4
@AUXOFF = common dso_local global i32 0, align 4
@AUXDATA = common dso_local global i32 0, align 4
@SWS0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*)* @flashputbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flashputbuf(%struct.airo_info* %0) #0 {
  %2 = alloca %struct.airo_info*, align 8
  %3 = alloca i32, align 4
  store %struct.airo_info* %0, %struct.airo_info** %2, align 8
  %4 = load i32, i32* @FLAG_MPI, align 4
  %5 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %6 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %5, i32 0, i32 2
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %1
  %10 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %11 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = add nsw i64 %12, 32768
  %14 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %15 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i32, i32* @FLASHSIZE, align 4
  %18 = call i32 @memcpy_toio(i64 %13, i32* %16, i32 %17)
  br label %47

19:                                               ; preds = %1
  %20 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %21 = load i32, i32* @AUXPAGE, align 4
  %22 = call i32 @OUT4500(%struct.airo_info* %20, i32 %21, i32 256)
  %23 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %24 = load i32, i32* @AUXOFF, align 4
  %25 = call i32 @OUT4500(%struct.airo_info* %23, i32 %24, i32 0)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %43, %19
  %27 = load i32, i32* %3, align 4
  %28 = load i32, i32* @FLASHSIZE, align 4
  %29 = sdiv i32 %28, 2
  %30 = icmp ne i32 %27, %29
  br i1 %30, label %31, label %46

31:                                               ; preds = %26
  %32 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %33 = load i32, i32* @AUXDATA, align 4
  %34 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %35 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %36, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = and i32 %40, 65535
  %42 = call i32 @OUT4500(%struct.airo_info* %32, i32 %33, i32 %41)
  br label %43

43:                                               ; preds = %31
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %26

46:                                               ; preds = %26
  br label %47

47:                                               ; preds = %46, %9
  %48 = load %struct.airo_info*, %struct.airo_info** %2, align 8
  %49 = load i32, i32* @SWS0, align 4
  %50 = call i32 @OUT4500(%struct.airo_info* %48, i32 %49, i32 32768)
  ret i32 0
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy_toio(i64, i32*, i32) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
