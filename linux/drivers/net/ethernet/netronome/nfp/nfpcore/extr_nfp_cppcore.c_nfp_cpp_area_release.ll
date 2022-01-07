; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_area = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.nfp_cpp_area*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nfp_cpp_area_release(%struct.nfp_cpp_area* %0) #0 {
  %2 = alloca %struct.nfp_cpp_area*, align 8
  store %struct.nfp_cpp_area* %0, %struct.nfp_cpp_area** %2, align 8
  %3 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %4 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %3, i32 0, i32 0
  %5 = call i32 @mutex_lock(i32* %4)
  %6 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %7 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %6, i32 0, i32 2
  %8 = call i64 @atomic_dec_and_test(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %35

10:                                               ; preds = %1
  %11 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %12 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32 (%struct.nfp_cpp_area*)*, i32 (%struct.nfp_cpp_area*)** %16, align 8
  %18 = icmp ne i32 (%struct.nfp_cpp_area*)* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %10
  %20 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %21 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32 (%struct.nfp_cpp_area*)*, i32 (%struct.nfp_cpp_area*)** %25, align 8
  %27 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %28 = call i32 %26(%struct.nfp_cpp_area* %27)
  %29 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %30 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = call i32 @wake_up_interruptible_all(i32* %32)
  br label %34

34:                                               ; preds = %19, %10
  br label %35

35:                                               ; preds = %34, %1
  %36 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %37 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %36, i32 0, i32 0
  %38 = call i32 @mutex_unlock(i32* %37)
  %39 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %2, align 8
  %40 = call i32 @nfp_cpp_area_put(%struct.nfp_cpp_area* %39)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @wake_up_interruptible_all(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfp_cpp_area_put(%struct.nfp_cpp_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
