; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_free_firmware_files.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ath/ath10k/extr_core.c_ath10k_core_free_firmware_files.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ath10k = type { i32*, i32*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32*, i32*, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ath10k*)* @ath10k_core_free_firmware_files to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ath10k_core_free_firmware_files(%struct.ath10k* %0) #0 {
  %2 = alloca %struct.ath10k*, align 8
  store %struct.ath10k* %0, %struct.ath10k** %2, align 8
  %3 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %4 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %3, i32 0, i32 2
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @IS_ERR(i32* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %12 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 2
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @release_firmware(i32* %15)
  br label %17

17:                                               ; preds = %10, %1
  %18 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %19 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i32 @IS_ERR(i32* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %25 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = call i32 @release_firmware(i32* %26)
  br label %28

28:                                               ; preds = %23, %17
  %29 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %30 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = call i32 @IS_ERR(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %28
  %35 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %36 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @release_firmware(i32* %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %41 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %42 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @ath10k_swap_code_seg_release(%struct.ath10k* %40, %struct.TYPE_4__* %43)
  %45 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %46 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 4
  store i32* null, i32** %48, align 8
  %49 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %50 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %54 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  store i32* null, i32** %56, align 8
  %57 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %58 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %62 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %61, i32 0, i32 2
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  store i64 0, i64* %64, align 8
  %65 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %66 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  %67 = load %struct.ath10k*, %struct.ath10k** %2, align 8
  %68 = getelementptr inbounds %struct.ath10k, %struct.ath10k* %67, i32 0, i32 0
  store i32* null, i32** %68, align 8
  ret void
}

declare dso_local i32 @IS_ERR(i32*) #1

declare dso_local i32 @release_firmware(i32*) #1

declare dso_local i32 @ath10k_swap_code_seg_release(%struct.ath10k*, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
