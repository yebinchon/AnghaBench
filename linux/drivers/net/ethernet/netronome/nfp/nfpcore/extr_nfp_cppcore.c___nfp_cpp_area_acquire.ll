; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c___nfp_cpp_area_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c___nfp_cpp_area_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_area = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Warning: area wait failed: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfp_cpp_area*)* @__nfp_cpp_area_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__nfp_cpp_area_acquire(%struct.nfp_cpp_area* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_cpp_area*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.nfp_cpp_area* %0, %struct.nfp_cpp_area** %3, align 8
  %6 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %7 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %6, i32 0, i32 0
  %8 = call i32 @atomic_inc_return(i32* %7)
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %13 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %50

21:                                               ; preds = %11
  %22 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %23 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %22, i32 0, i32 1
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %28 = call i32 @nfp_cpp_area_acquire_try(%struct.nfp_cpp_area* %27, i32* %5)
  %29 = call i32 @wait_event_interruptible(i32 %26, i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %21
  %33 = load i32, i32* %5, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %21
  %35 = load i32, i32* %4, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %47

37:                                               ; preds = %34
  %38 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %39 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %38, i32 0, i32 1
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @nfp_warn(%struct.TYPE_4__* %40, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %41)
  %43 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %44 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %43, i32 0, i32 0
  %45 = call i32 @atomic_dec(i32* %44)
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %50

47:                                               ; preds = %34
  %48 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %49 = call i32 @nfp_cpp_area_get(%struct.nfp_cpp_area* %48)
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %47, %37, %20, %10
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @wait_event_interruptible(i32, i32) #1

declare dso_local i32 @nfp_cpp_area_acquire_try(%struct.nfp_cpp_area*, i32*) #1

declare dso_local i32 @nfp_warn(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @nfp_cpp_area_get(%struct.nfp_cpp_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
