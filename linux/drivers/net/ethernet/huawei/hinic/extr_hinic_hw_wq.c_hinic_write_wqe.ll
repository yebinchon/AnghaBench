; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_write_wqe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/huawei/hinic/extr_hinic_hw_wq.c_hinic_write_wqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hinic_wq = type { i32, i32, i32*, i32* }
%struct.hinic_hw_wqe = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hinic_write_wqe(%struct.hinic_wq* %0, %struct.hinic_hw_wqe* %1, i32 %2) #0 {
  %4 = alloca %struct.hinic_wq*, align 8
  %5 = alloca %struct.hinic_hw_wqe*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.hinic_wq* %0, %struct.hinic_wq** %4, align 8
  store %struct.hinic_hw_wqe* %1, %struct.hinic_hw_wqe** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %12 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %5, align 8
  %13 = call i64 @wqe_shadow(%struct.hinic_wq* %11, %struct.hinic_hw_wqe* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %51

15:                                               ; preds = %3
  %16 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %17 = load %struct.hinic_hw_wqe*, %struct.hinic_hw_wqe** %5, align 8
  %18 = call i32 @WQE_SHADOW_PAGE(%struct.hinic_wq* %16, %struct.hinic_hw_wqe* %17)
  store i32 %18, i32* %7, align 4
  %19 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %20 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i32, i32* %21, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %28 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @ALIGN(i32 %26, i32 %29)
  %31 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %32 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sdiv i32 %30, %33
  store i32 %34, i32* %8, align 4
  %35 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %36 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %40 = getelementptr inbounds %struct.hinic_wq, %struct.hinic_wq* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = mul nsw i32 %38, %41
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = bitcast i32* %44 to i8*
  store i8* %45, i8** %9, align 8
  %46 = load %struct.hinic_wq*, %struct.hinic_wq** %4, align 8
  %47 = load i8*, i8** %9, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @copy_wqe_from_shadow(%struct.hinic_wq* %46, i8* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %15, %3
  ret void
}

declare dso_local i64 @wqe_shadow(%struct.hinic_wq*, %struct.hinic_hw_wqe*) #1

declare dso_local i32 @WQE_SHADOW_PAGE(%struct.hinic_wq*, %struct.hinic_hw_wqe*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @copy_wqe_from_shadow(%struct.hinic_wq*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
