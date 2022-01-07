; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_free_vectors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/ethernet/aquantia/atlantic/extr_aq_nic.c_aq_nic_free_vectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aq_nic_s = type { i32** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @aq_nic_free_vectors(%struct.aq_nic_s* %0) #0 {
  %2 = alloca %struct.aq_nic_s*, align 8
  %3 = alloca i32, align 4
  store %struct.aq_nic_s* %0, %struct.aq_nic_s** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %5 = icmp ne %struct.aq_nic_s* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %42

7:                                                ; preds = %1
  %8 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %9 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %8, i32 0, i32 0
  %10 = load i32**, i32*** %9, align 8
  %11 = call i32 @ARRAY_SIZE(i32** %10)
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %40, %7
  %13 = load i32, i32* %3, align 4
  %14 = add i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %12
  %17 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %18 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %17, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32*, i32** %19, i64 %21
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %40

25:                                               ; preds = %16
  %26 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %27 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %26, i32 0, i32 0
  %28 = load i32**, i32*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds i32*, i32** %28, i64 %30
  %32 = load i32*, i32** %31, align 8
  %33 = call i32 @aq_vec_free(i32* %32)
  %34 = load %struct.aq_nic_s*, %struct.aq_nic_s** %2, align 8
  %35 = getelementptr inbounds %struct.aq_nic_s, %struct.aq_nic_s* %34, i32 0, i32 0
  %36 = load i32**, i32*** %35, align 8
  %37 = load i32, i32* %3, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  store i32* null, i32** %39, align 8
  br label %40

40:                                               ; preds = %25, %16
  br label %12

41:                                               ; preds = %12
  br label %42

42:                                               ; preds = %41, %6
  ret void
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

declare dso_local i32 @aq_vec_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
