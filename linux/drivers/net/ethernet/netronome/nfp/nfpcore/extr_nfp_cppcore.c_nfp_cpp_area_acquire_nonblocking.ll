; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_acquire_nonblocking.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/netronome/nfp/nfpcore/extr_nfp_cppcore.c_nfp_cpp_area_acquire_nonblocking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfp_cpp_area = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfp_cpp_area_acquire_nonblocking(%struct.nfp_cpp_area* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfp_cpp_area*, align 8
  %4 = alloca i32, align 4
  store %struct.nfp_cpp_area* %0, %struct.nfp_cpp_area** %3, align 8
  %5 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %6 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %9 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %8, i32 0, i32 1
  %10 = call i32 @atomic_inc_return(i32* %9)
  %11 = icmp eq i32 %10, 1
  br i1 %11, label %12, label %45

12:                                               ; preds = %1
  %13 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %14 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %13, i32 0, i32 2
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.nfp_cpp_area*)**
  %20 = load i32 (%struct.nfp_cpp_area*)*, i32 (%struct.nfp_cpp_area*)** %19, align 8
  %21 = icmp ne i32 (%struct.nfp_cpp_area*)* %20, null
  br i1 %21, label %22, label %44

22:                                               ; preds = %12
  %23 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %24 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.nfp_cpp_area*)**
  %30 = load i32 (%struct.nfp_cpp_area*)*, i32 (%struct.nfp_cpp_area*)** %29, align 8
  %31 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %32 = call i32 %30(%struct.nfp_cpp_area* %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %22
  %36 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %37 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %36, i32 0, i32 1
  %38 = call i32 @atomic_dec(i32* %37)
  %39 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %40 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load i32, i32* %4, align 4
  store i32 %42, i32* %2, align 4
  br label %51

43:                                               ; preds = %22
  br label %44

44:                                               ; preds = %43, %12
  br label %45

45:                                               ; preds = %44, %1
  %46 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %47 = getelementptr inbounds %struct.nfp_cpp_area, %struct.nfp_cpp_area* %46, i32 0, i32 0
  %48 = call i32 @mutex_unlock(i32* %47)
  %49 = load %struct.nfp_cpp_area*, %struct.nfp_cpp_area** %3, align 8
  %50 = call i32 @nfp_cpp_area_get(%struct.nfp_cpp_area* %49)
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %45, %35
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_dec(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfp_cpp_area_get(%struct.nfp_cpp_area*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
